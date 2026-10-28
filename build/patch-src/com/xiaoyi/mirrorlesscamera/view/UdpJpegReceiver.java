package com.xiaoyi.mirrorlesscamera.view;

import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetSocketAddress;

/**
 * Pure-Java replacement for the native libframerecv live-view receiver of the YI M1.
 *
 * Wire format on UDP port 54321, one datagram per packet:
 *   [0..4)   frameIndex   big-endian u32
 *   [4..8)   packetCount  big-endian u32 (last valid index == packetCount - 1)
 *   [8..12)  packetIndex  big-endian u32 (1-based)
 *   [12..)   payload
 *
 * A reassembled frame is 2048 bytes of CameraParamBean JSON followed by the JPEG
 * bytes, at most 0x19000 bytes. The result is handed to LiveView exactly like the
 * old native code did: bytes copied into LiveView.mCopyArray, mArrayLength set and
 * mCanCopy cleared. LiveView's render thread then decodes from offset 0x800 and
 * sets mCanCopy back to true.
 */
public final class UdpJpegReceiver {

    private static final int PORT = 54321;        // 0xd431
    private static final int META = 0x800;        // 2048 byte metadata block
    private static final int FRAME_MAX = 0x19000; // 102400 byte frame buffer

    private final LiveView liveView;
    private volatile boolean running;
    private DatagramSocket socket;
    private Thread thread;

    public UdpJpegReceiver(LiveView liveView) {
        this.liveView = liveView;
    }

    public void start() {
        if (running) {
            return;
        }
        running = true;
        thread = new Thread(new Runnable() {
            @Override
            public void run() {
                loop();
            }
        }, "UdpJpegReceiver");
        thread.start();
    }

    public void stop() {
        running = false;
        DatagramSocket s = socket;
        socket = null;
        if (s != null) {
            try {
                s.close();
            } catch (Throwable ignored) {
            }
        }
        Thread t = thread;
        thread = null;
        if (t != null) {
            t.interrupt();
        }
    }

    private void loop() {
        byte[] asm = new byte[FRAME_MAX];
        byte[] pkt = new byte[65536];
        DatagramPacket packet = new DatagramPacket(pkt, pkt.length);

        int asmLen = 0;
        int curFrame = 0;
        int lastIndex = -1;
        boolean valid = false;

        try {
            DatagramSocket s = new DatagramSocket((java.net.SocketAddress) null);
            s.setReuseAddress(true);
            s.setBroadcast(true);
            s.bind(new InetSocketAddress(PORT));
            socket = s;
            if (!running) {
                return;
            }
            while (running) {
                packet.setLength(pkt.length);
                s.receive(packet);
                int len = packet.getLength();
                if (len < 12) {
                    continue;
                }

                int frame = be32(pkt, 0);
                int count = be32(pkt, 4);
                int index = be32(pkt, 8);

                if (frame != curFrame) {
                    curFrame = frame;
                    asmLen = 0;
                    lastIndex = -1;
                    valid = true;
                }
                if (!valid) {
                    continue;
                }
                if (index - 1 != lastIndex) {
                    valid = false;
                    continue;
                }

                int payload = len - 12;
                if (payload <= 0 || asmLen + payload > FRAME_MAX) {
                    valid = false;
                    continue;
                }

                System.arraycopy(pkt, 12, asm, asmLen, payload);
                asmLen += payload;
                lastIndex = index;

                if (lastIndex == count - 1 && asmLen > META) {
                    publish(asm, asmLen);
                }
            }
        } catch (Throwable ignored) {
            // socket closed or interrupted: normal shutdown
        } finally {
            DatagramSocket s = socket;
            socket = null;
            if (s != null) {
                try {
                    s.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    private void publish(byte[] frame, int len) {
        byte[] dst = liveView.mCopyArray;
        if (dst == null || len > dst.length) {
            return;
        }
        if (!liveView.mCanCopy) {
            return; // consumer is still busy with the previous frame
        }
        System.arraycopy(frame, 0, dst, 0, len);
        liveView.mArrayLength = len;
        liveView.mCanCopy = false;
    }

    private static int be32(byte[] b, int off) {
        return ((b[off] & 0xff) << 24)
                | ((b[off + 1] & 0xff) << 16)
                | ((b[off + 2] & 0xff) << 8)
                | (b[off + 3] & 0xff);
    }
}
