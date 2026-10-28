package com.facebook.imagepipeline.memory;

import java.io.Closeable;

/**
 * Java-heap replacement for Fresco's native-memory chunk.
 *
 * The original class keeps a malloc'ed pointer and calls into libimagepipeline.so.
 * That library only exists as 32-bit ARM, so on arm64-only devices every image
 * decode crashed with UnsatisfiedLinkError. This version keeps the exact same
 * (obfuscated) public surface but backs it with a byte[] on the Java heap.
 *
 * Method mapping (verified against the original smali):
 *   a(I[BII)I  write  - nativeCopyFromByteArray: byte[]  -> chunk
 *   b(I[BII)I  read   - nativeCopyToByteArray:   chunk   -> byte[]
 *   a(I)B      read one byte
 *   a(ILNativeMemoryChunk;II)V  copy this -> other
 *   a()Z isClosed, b()I getSize, close()
 */
public class NativeMemoryChunk implements Closeable {

    private byte[] buffer;
    private final int size;
    private boolean closed;

    public NativeMemoryChunk() {
        this.buffer = null;
        this.size = 0;
        this.closed = true;
    }

    public NativeMemoryChunk(int size) {
        if (size <= 0) {
            throw new IllegalArgumentException("size must be > 0");
        }
        this.size = size;
        this.buffer = new byte[size];
        this.closed = false;
    }

    public synchronized byte a(int offset) {
        if (this.closed) {
            throw new IllegalStateException("cannot read from a closed chunk");
        }
        if (offset < 0 || offset >= this.size) {
            throw new IndexOutOfBoundsException("offset out of range");
        }
        return this.buffer[offset];
    }

    /** write: copies {@code count} bytes from {@code src} into this chunk. */
    public synchronized int a(int offset, byte[] src, int srcOffset, int count) {
        if (this.closed) {
            throw new IllegalStateException("cannot write to a closed chunk");
        }
        if (src == null) {
            throw new IllegalArgumentException("buffer must not be null");
        }
        int n = a(offset, count);
        if (n > 0) {
            System.arraycopy(src, srcOffset, this.buffer, offset, n);
        }
        return n;
    }

    /** read: copies {@code count} bytes from this chunk into {@code dst}. */
    public synchronized int b(int offset, byte[] dst, int dstOffset, int count) {
        if (this.closed) {
            throw new IllegalStateException("cannot read from a closed chunk");
        }
        if (dst == null) {
            throw new IllegalArgumentException("buffer must not be null");
        }
        int n = a(offset, count);
        if (n > 0) {
            System.arraycopy(this.buffer, offset, dst, dstOffset, n);
        }
        return n;
    }

    /** Copies {@code count} bytes of this chunk (from {@code offset}) into {@code other}. */
    public void a(int offset, NativeMemoryChunk other, int otherOffset, int count) {
        if (other == null) {
            throw new IllegalArgumentException("other must not be null");
        }
        if (this.closed || other.closed) {
            throw new IllegalStateException("cannot copy from/to a closed chunk");
        }
        if (this == other) {
            throw new IllegalArgumentException("copying a chunk to itself is not supported");
        }
        int n = a(offset, count);
        if (n > 0) {
            System.arraycopy(this.buffer, offset, other.buffer, otherOffset, n);
        }
    }

    public synchronized boolean a() {
        return this.closed;
    }

    public int b() {
        return this.size;
    }

    @Override
    public synchronized void close() {
        if (!this.closed) {
            this.closed = true;
            this.buffer = null;
        }
    }

    @Override
    protected void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    /** Returns how many bytes can be transferred at {@code offset}, clamped to the chunk size. */
    private int a(int offset, int count) {
        int available = Math.max(0, this.size - offset);
        return Math.min(available, count);
    }
}
