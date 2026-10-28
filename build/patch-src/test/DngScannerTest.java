import com.xiaoyi.mirrorlesscamera.bean.DngJpegScanner;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;
import java.util.List;

/** Desktop sanity checks for DngJpegScanner (no Android required). */
public class DngScannerTest {

    public static void main(String[] args) throws Exception {
        File dir = new File("test-out");
        dir.mkdirs();

        byte[] jpeg = makeJpeg(320, 240);
        System.out.println("sample jpeg = " + jpeg.length + " bytes");

        testIfd(dir, jpeg, true);
        testIfd(dir, jpeg, false);
        testScanFallback(dir, jpeg);
        testSubIfd(dir, jpeg);
        testEmpty(dir);

        System.out.println("ALL TESTS PASSED");
    }

    private static void testIfd(File dir, byte[] jpeg, boolean littleEndian) throws Exception {
        File f = new File(dir, "ifd-" + (littleEndian ? "le" : "be") + ".dng");
        int jpegOffset = 128;
        ByteArrayOutputStream out = new ByteArrayOutputStream();

        // header
        if (littleEndian) {
            out.write('I');
            out.write('I');
        } else {
            out.write('M');
            out.write('M');
        }
        writeShort(out, 42, littleEndian);
        writeInt(out, 8, littleEndian); // IFD0 at 8

        // IFD0 with two entries
        writeShort(out, 2, littleEndian);
        writeEntry(out, 0x0201, 4, 1, jpegOffset, littleEndian);
        writeEntry(out, 0x0202, 4, 1, jpeg.length, littleEndian);
        writeInt(out, 0, littleEndian); // next IFD

        byte[] header = out.toByteArray();
        byte[] file = new byte[jpegOffset + jpeg.length + 64];
        System.arraycopy(header, 0, file, 0, header.length);
        System.arraycopy(jpeg, 0, file, jpegOffset, jpeg.length);
        write(file, f);

        check(f, jpeg, "IFD " + (littleEndian ? "LE" : "BE"));
    }

    private static void testSubIfd(File dir, byte[] jpeg) throws Exception {
        File f = new File(dir, "subifd.dng");
        int jpegOffset = 256;
        int subIfdOffset = 96;
        ByteArrayOutputStream out = new ByteArrayOutputStream();

        out.write('I');
        out.write('I');
        writeShort(out, 42, true);
        writeInt(out, 8, true);

        // IFD0: one entry pointing at the SubIFD
        writeShort(out, 1, true);
        writeEntry(out, 0x014A, 4, 1, subIfdOffset, true);
        writeInt(out, 0, true);

        // pad to subIfdOffset
        byte[] head = out.toByteArray();
        byte[] file = new byte[jpegOffset + jpeg.length + 64];
        System.arraycopy(head, 0, file, 0, head.length);

        // SubIFD at 96: one entry with the JPEG pointer
        int p = subIfdOffset;
        writeShortAt(file, p, 1, true);
        writeEntryAt(file, p + 2, 0x0201, 4, 1, jpegOffset, true);
        writeIntAt(file, p + 14, 0, true);

        System.arraycopy(jpeg, 0, file, jpegOffset, jpeg.length);
        write(file, f);

        check(f, jpeg, "SubIFD");
    }

    private static void testScanFallback(File dir, byte[] jpeg) throws Exception {
        File f = new File(dir, "not-tiff.dng");
        byte[] file = new byte[20000];
        for (int i = 0; i < file.length; i++) {
            file[i] = (byte) (i * 31 + 7);
        }
        // break TIFF magic so the IFD pass is skipped
        file[0] = 'X';
        file[1] = 'X';
        int at = 5000;
        System.arraycopy(jpeg, 0, file, at, jpeg.length);
        write(file, f);

        check(f, jpeg, "scan fallback");
    }

    private static void testEmpty(File dir) throws Exception {
        File f = new File(dir, "empty.dng");
        byte[] file = new byte[4096];
        file[0] = 'I';
        file[1] = 'I';
        file[2] = 42;
        write(file, f);
        List<byte[]> c = DngJpegScanner.findCandidates(f);
        if (!c.isEmpty()) {
            throw new AssertionError("expected no candidates, got " + c.size());
        }
        System.out.println("empty file  -> 0 candidates (ok)");
    }

    private static void check(File f, byte[] jpeg, String label) {
        List<byte[]> candidates = DngJpegScanner.findCandidates(f);
        if (candidates.isEmpty()) {
            throw new AssertionError(label + ": no candidate found");
        }
        byte[] best = candidates.get(0);
        if (!startsWithJpeg(best) || !endsWithJpeg(best)) {
            throw new AssertionError(label + ": candidate is not a JPEG");
        }
        if (best.length != jpeg.length) {
            throw new AssertionError(label + ": size " + best.length + " != " + jpeg.length);
        }
        for (int i = 0; i < jpeg.length; i++) {
            if (best[i] != jpeg[i]) {
                throw new AssertionError(label + ": byte mismatch at " + i);
            }
        }
        System.out.println(label + "      -> " + candidates.size() + " candidate(s), best " + best.length + " bytes (ok)");
    }

    private static boolean startsWithJpeg(byte[] b) {
        return b.length > 3 && (b[0] & 0xFF) == 0xFF && (b[1] & 0xFF) == 0xD8 && (b[2] & 0xFF) == 0xFF;
    }

    private static boolean endsWithJpeg(byte[] b) {
        return b.length > 3 && (b[b.length - 2] & 0xFF) == 0xFF && (b[b.length - 1] & 0xFF) == 0xD9;
    }

    private static byte[] makeJpeg(int w, int h) throws Exception {
        BufferedImage img = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
        for (int y = 0; y < h; y++) {
            for (int x = 0; x < w; x++) {
                img.setRGB(x, y, ((x * 255 / w) << 16) | ((y * 255 / h) << 8) | 96);
            }
        }
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        ImageIO.write(img, "jpg", out);
        return out.toByteArray();
    }

    // ---------------------------------------------------------------- writers

    private static void writeEntry(ByteArrayOutputStream out, int tag, int type, int count, int value, boolean le) {
        writeShort(out, tag, le);
        writeShort(out, type, le);
        writeInt(out, count, le);
        writeInt(out, value, le);
    }

    private static void writeShort(ByteArrayOutputStream out, int v, boolean le) {
        byte hi = (byte) ((v >> 8) & 0xFF);
        byte lo = (byte) (v & 0xFF);
        out.write(le ? lo : hi);
        out.write(le ? hi : lo);
    }

    private static void writeInt(ByteArrayOutputStream out, int v, boolean le) {
        for (int i = 0; i < 4; i++) {
            int shift = le ? (i * 8) : ((3 - i) * 8);
            out.write((v >> shift) & 0xFF);
        }
    }

    private static void writeEntryAt(byte[] b, int p, int tag, int type, int count, int value, boolean le) {
        writeShortAt(b, p, tag, le);
        writeShortAt(b, p + 2, type, le);
        writeIntAt(b, p + 4, count, le);
        writeIntAt(b, p + 8, value, le);
    }

    private static void writeShortAt(byte[] b, int p, int v, boolean le) {
        byte hi = (byte) ((v >> 8) & 0xFF);
        byte lo = (byte) (v & 0xFF);
        b[p] = le ? lo : hi;
        b[p + 1] = le ? hi : lo;
    }

    private static void writeIntAt(byte[] b, int p, int v, boolean le) {
        for (int i = 0; i < 4; i++) {
            int shift = le ? (i * 8) : ((3 - i) * 8);
            b[p + i] = (byte) ((v >> shift) & 0xFF);
        }
    }

    private static void write(byte[] data, File f) throws Exception {
        FileOutputStream out = new FileOutputStream(f);
        try {
            out.write(data);
        } finally {
            out.close();
        }
    }
}
