package com.xiaoyi.mirrorlesscamera.bean;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.Deque;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Locates the embedded JPEG preview(s) inside a DNG/TIFF file.
 *
 * The original app assumed the preview always starts at byte 0x34B00 and is 0x138800 bytes long,
 * which only holds for one specific firmware output; every other DNG produced garbage files and the
 * gallery reported "unable to load".
 *
 * This scanner does it properly, in three passes:
 *   1. parse the TIFF IFD tree (IFD0, SubIFDs, next IFD) and use the standard preview pointers
 *      0x0201/0x0202 (JPEGInterchangeFormat/Length) or a JPEG-compressed strip 0x0111/0x0117;
 *   2. fall back to the legacy fixed window (kept so old files keep working);
 *   3. fall back to a linear scan of the whole file for SOI..EOI sequences.
 *
 * Every candidate is trimmed to start at FFD8 and end at FFD9. Nothing here is validated as a real
 * picture: the caller (Android side) checks candidates with BitmapFactory and keeps the first one
 * that decodes. Candidates are returned largest-first.
 *
 * Pure Java on purpose: it can be unit-tested on a desktop JVM without Android.
 */
public final class DngJpegScanner {

    /** No embedded JPEG should ever be larger than this. */
    private static final int MAX_CANDIDATE = 32 * 1024 * 1024;

    /** Upper bound on the candidates handed to the caller (they are validated one by one). */
    private static final int MAX_CANDIDATES = 12;

    /** Legacy layout used by the original app. */
    private static final long LEGACY_OFFSET = 0x34B00L;
    private static final long LEGACY_LENGTH = 0x138800L;

    private static final int TAG_STRIP_OFFSETS = 0x0111;
    private static final int TAG_STRIP_BYTE_COUNTS = 0x0117;
    private static final int TAG_COMPRESSION = 0x0103;
    private static final int TAG_JPEG_OFFSET = 0x0201;
    private static final int TAG_JPEG_LENGTH = 0x0202;
    private static final int TAG_SUB_IFDS = 0x014A;
    private static final int TAG_EXIF_IFD = 0x8769;
    private static final int TAG_GPS_IFD = 0x8825;

    private DngJpegScanner() {
    }

    /** Returns candidate JPEGs, largest first. Never null. */
    public static List<byte[]> findCandidates(File file) {
        List<byte[]> found = new ArrayList<byte[]>();
        if (file == null || !file.isFile()) {
            return found;
        }
        long fileLength = file.length();
        if (fileLength < 1024) {
            return found;
        }
        RandomAccessFile raf = null;
        try {
            raf = new RandomAccessFile(file, "r");
            for (long[] range : tiffJpegRanges(raf)) {
                addCandidate(raf, range[0], range[1], found);
            }
            if (largestLength(found) < 65536) {
                addCandidate(raf, LEGACY_OFFSET, LEGACY_LENGTH, found);
            }
            if (largestLength(found) < 65536) {
                scanSequentially(raf, found);
            }
        } catch (Throwable ignored) {
            // unreadable / truncated file: return whatever we have
        } finally {
            if (raf != null) {
                try {
                    raf.close();
                } catch (Throwable ignored) {
                }
            }
        }
        dedupe(found);
        sortLargestFirst(found);
        while (found.size() > MAX_CANDIDATES) {
            found.remove(found.size() - 1);
        }
        return found;
    }

    /**
     * The three passes usually find the same JPEG; keep one copy of each so a big DNG does not end up
     * holding the preview three times on the Java heap.
     */
    private static void dedupe(List<byte[]> list) {
        Set<String> keys = new HashSet<String>();
        for (int i = list.size() - 1; i >= 0; i--) {
            byte[] b = list.get(i);
            String key = b.length + ":" + fingerprint(b, 0, 64) + ":" + fingerprint(b, b.length - 64, 64);
            if (!keys.add(key)) {
                list.remove(i);
            }
        }
    }

    private static String fingerprint(byte[] b, int from, int length) {
        int start = Math.max(0, from);
        int end = Math.min(b.length, start + length);
        long hash = 1125899906842597L;
        for (int i = start; i < end; i++) {
            hash = 31 * hash + (b[i] & 0xFF);
        }
        return Long.toHexString(hash);
    }

    // ------------------------------------------------------------------ TIFF

    private static List<long[]> tiffJpegRanges(RandomAccessFile raf) {
        List<long[]> ranges = new ArrayList<long[]>();
        try {
            if (raf.length() < 16) {
                return ranges;
            }
            byte[] header = new byte[8];
            raf.seek(0);
            raf.readFully(header);
            boolean littleEndian;
            if (header[0] == 'I' && header[1] == 'I') {
                littleEndian = true;
            } else if (header[0] == 'M' && header[1] == 'M') {
                littleEndian = false;
            } else {
                return ranges;
            }
            if (u16(header, 2, littleEndian) != 42) {
                return ranges;
            }

            Deque<Long> pending = new ArrayDeque<Long>();
            pending.add(u32(header, 4, littleEndian));
            Set<Long> visited = new HashSet<Long>();
            int guard = 0;

            while (!pending.isEmpty() && guard++ < 48) {
                long ifdOffset = pending.poll();
                if (ifdOffset <= 0 || ifdOffset >= raf.length() || !visited.add(ifdOffset)) {
                    continue;
                }
                raf.seek(ifdOffset);
                byte[] countBytes = new byte[2];
                raf.readFully(countBytes);
                int entries = u16(countBytes, 0, littleEndian);
                if (entries <= 0 || entries > 512) {
                    continue;
                }
                byte[] table = new byte[entries * 12];
                raf.readFully(table);

                long jpegOffset = -1;
                long jpegLength = -1;
                long stripOffset = -1;
                long stripLength = -1;
                int compression = 1;

                for (int i = 0; i < entries; i++) {
                    int p = i * 12;
                    int tag = u16(table, p, littleEndian);
                    int type = u16(table, p + 2, littleEndian);
                    long count = u32(table, p + 4, littleEndian);
                    long value = u32(table, p + 8, littleEndian);

                    switch (tag) {
                        case TAG_JPEG_OFFSET:
                            jpegOffset = value;
                            break;
                        case TAG_JPEG_LENGTH:
                            jpegLength = value;
                            break;
                        case TAG_COMPRESSION:
                            compression = (int) value;
                            break;
                        case TAG_STRIP_OFFSETS:
                            if (count == 1) {
                                stripOffset = value;
                            } else if (count > 1 && type == 4) {
                                stripOffset = readLongAt(raf, value, littleEndian);
                            }
                            break;
                        case TAG_STRIP_BYTE_COUNTS:
                            if (count == 1) {
                                stripLength = value;
                            } else if (count > 1 && type == 4) {
                                stripLength = readLongAt(raf, value, littleEndian);
                            }
                            break;
                        case TAG_SUB_IFDS:
                            if (count == 1) {
                                pending.add(value);
                            } else if (count > 1 && count <= 8) {
                                for (int k = 0; k < count; k++) {
                                    long sub = readLongAt(raf, value + 4L * k, littleEndian);
                                    if (sub > 0) {
                                        pending.add(sub);
                                    }
                                }
                            }
                            break;
                        case TAG_EXIF_IFD:
                        case TAG_GPS_IFD:
                        default:
                            break;
                    }
                }

                if (jpegOffset > 0 && jpegLength > 0) {
                    ranges.add(new long[]{jpegOffset, jpegLength});
                }
                if (stripOffset > 0 && stripLength > 0 && (compression == 6 || compression == 7)) {
                    ranges.add(new long[]{stripOffset, stripLength});
                }

                raf.seek(ifdOffset + 2 + entries * 12L);
                byte[] nextBytes = new byte[4];
                raf.readFully(nextBytes);
                long next = u32(nextBytes, 0, littleEndian);
                if (next > 0) {
                    pending.add(next);
                }
            }
        } catch (Throwable ignored) {
            // malformed TIFF: let the fallbacks run
        }
        return ranges;
    }

    private static long readLongAt(RandomAccessFile raf, long offset, boolean littleEndian) {
        try {
            if (offset <= 0 || offset + 4 > raf.length()) {
                return -1;
            }
            byte[] b = new byte[4];
            raf.seek(offset);
            raf.readFully(b);
            return u32(b, 0, littleEndian) & 0xFFFFFFFFL;
        } catch (Throwable t) {
            return -1;
        }
    }

    // -------------------------------------------------------------- candidates

    private static void addCandidate(RandomAccessFile raf, long offset, long length, List<byte[]> out) {
        try {
            if (offset <= 0 || length <= 4 || raf.length() < 16) {
                return;
            }
            long available = raf.length() - offset;
            if (available <= 512) {
                return;
            }
            int take = (int) Math.min(Math.min(length, (long) MAX_CANDIDATE), available);
            if (take <= 512) {
                return;
            }
            byte[] buffer = new byte[take];
            raf.seek(offset);
            raf.readFully(buffer);

            int start = indexOfSoi(buffer, 0);
            if (start < 0) {
                return;
            }
            int firstEoi = indexOfEoi(buffer, start + 3);
            if (firstEoi < 0) {
                return;
            }
            if (firstEoi + 2 - start > 512) {
                out.add(Arrays.copyOfRange(buffer, start, firstEoi + 2));
            }
            // If the payload carries a nested EXIF thumbnail, the first EOI belongs to that thumbnail
            // and truncates the real picture; offer the full span as well and let the caller validate.
            int lastEoi = lastIndexOfEoi(buffer);
            if (lastEoi > firstEoi + 1024 && lastEoi + 2 - start > 512) {
                out.add(Arrays.copyOfRange(buffer, start, lastEoi + 2));
            }
        } catch (Throwable ignored) {
        }
    }

    /**
     * Linear fallback. Keeps collecting through nested EOI markers (an embedded EXIF thumbnail also
     * ends with FFD9, and closing there would truncate the real preview), emitting a growing snapshot
     * each time so the caller can pick the first snapshot that actually decodes.
     */
    private static void scanSequentially(RandomAccessFile raf, List<byte[]> out) {
        try {
            raf.seek(0);
            byte[] chunk = new byte[1 << 16];
            ByteArrayOutputStream current = null;
            int previous = -1;
            int eoiSeen = 0;
            boolean pendingSoi = false;
            int count;
            while ((count = raf.read(chunk)) > 0) {
                for (int i = 0; i < count; i++) {
                    int b = chunk[i] & 0xFF;
                    if (current == null) {
                        // A real SOI is FF D8 FF; FF D8 followed by anything else is raw sensor data
                        // that happens to contain those two bytes.
                        if (previous == 0xFF && b == 0xD8) {
                            pendingSoi = true;
                        } else if (pendingSoi) {
                            pendingSoi = false;
                            if (b == 0xFF) {
                                current = new ByteArrayOutputStream(1 << 16);
                                current.write(0xFF);
                                current.write(0xD8);
                                current.write(0xFF);
                                eoiSeen = 0;
                                previous = b;
                                continue;
                            }
                        }
                    } else {
                        current.write(b);
                        if (previous == 0xFF && b == 0xD9) {
                            eoiSeen++;
                            byte[] snapshot = current.toByteArray();
                            if (snapshot.length > 1024) {
                                out.add(snapshot);
                            }
                            if (eoiSeen >= 3 || current.size() > MAX_CANDIDATE) {
                                current = null;
                                previous = -1;
                                continue;
                            }
                        }
                    }
                    previous = b;
                }
            }
        } catch (Throwable ignored) {
        }
    }

    private static int indexOfSoi(byte[] b, int from) {
        for (int i = Math.max(0, from); i + 2 < b.length; i++) {
            if ((b[i] & 0xFF) == 0xFF && (b[i + 1] & 0xFF) == 0xD8 && (b[i + 2] & 0xFF) == 0xFF) {
                return i;
            }
        }
        return -1;
    }

    private static int indexOfEoi(byte[] b, int from) {
        for (int i = Math.max(0, from); i + 1 < b.length; i++) {
            if ((b[i] & 0xFF) == 0xFF && (b[i + 1] & 0xFF) == 0xD9) {
                return i;
            }
        }
        return -1;
    }

    private static int lastIndexOfEoi(byte[] b) {
        for (int i = b.length - 2; i > 0; i--) {
            if ((b[i] & 0xFF) == 0xFF && (b[i + 1] & 0xFF) == 0xD9) {
                return i;
            }
        }
        return -1;
    }

    private static int largestLength(List<byte[]> list) {
        int max = 0;
        for (int i = 0; i < list.size(); i++) {
            int len = list.get(i).length;
            if (len > max) {
                max = len;
            }
        }
        return max;
    }

    private static void sortLargestFirst(List<byte[]> list) {
        java.util.Collections.sort(list, new Comparator<byte[]>() {
            @Override
            public int compare(byte[] a, byte[] b) {
                return b.length - a.length;
            }
        });
    }

    // ------------------------------------------------------------------ bytes

    private static int u16(byte[] b, int off, boolean littleEndian) {
        if (off + 2 > b.length) {
            return 0;
        }
        int b0 = b[off] & 0xFF;
        int b1 = b[off + 1] & 0xFF;
        return littleEndian ? (b1 << 8 | b0) : (b0 << 8 | b1);
    }

    private static long u32(byte[] b, int off, boolean littleEndian) {
        if (off + 4 > b.length) {
            return 0;
        }
        long b0 = b[off] & 0xFF;
        long b1 = b[off + 1] & 0xFF;
        long b2 = b[off + 2] & 0xFF;
        long b3 = b[off + 3] & 0xFF;
        if (littleEndian) {
            return (b3 << 24) | (b2 << 16) | (b1 << 8) | b0;
        }
        return (b0 << 24) | (b1 << 16) | (b2 << 8) | b3;
    }
}
