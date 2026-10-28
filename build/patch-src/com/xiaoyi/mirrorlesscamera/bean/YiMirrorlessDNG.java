package com.xiaoyi.mirrorlesscamera.bean;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;

import java.io.File;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;

/**
 * Replacement for the original DNG helper.
 *
 * Same public surface as before - <init>(String), generateThumbnail(String, String),
 * generatePreview(String, String) - so every call site in the download manager keeps working.
 *
 * Differences:
 *   - the embedded JPEG is located by parsing the TIFF IFD tree / scanning the file instead of
 *     assuming a fixed byte window, so any firmware's DNG layout works;
 *   - every candidate is verified with BitmapFactory before it is written, so a broken preview is
 *     reported as a failure instead of producing a "unable to load" file;
 *   - the thumbnail is a real downscaled JPEG instead of a copy of raw sensor bytes.
 */
public class YiMirrorlessDNG {

    private static final String TAG = "YiMirrorlessDNG";

    /** Longest edge of the generated thumbnail. */
    private static final int THUMB_MAX_EDGE = 512;

    private static final int THUMB_QUALITY = 88;

    private final File sourceFile;
    private final boolean isDNGFile;

    public YiMirrorlessDNG(String path) {
        File file = null;
        boolean dng = false;
        try {
            file = new File(path);
            dng = file.isFile() && file.length() > 1024 && isTiff(file);
        } catch (Throwable ignored) {
        }
        this.sourceFile = file;
        this.isDNGFile = dng;
        try {
            Log.i(TAG, "open " + path + " length=" + (file == null ? -1 : file.length()) + " isDNG=" + dng);
        } catch (Throwable ignored) {
        }
    }

    public boolean generatePreview(String directoryPath, String fileName) {
        if (!this.isDNGFile) {
            return false;
        }
        if (isAlreadyUsable(directoryPath, fileName)) {
            return true;
        }
        byte[] jpeg = findUsableJpeg();
        if (jpeg == null) {
            return false;
        }
        return writeBytes(directoryPath, fileName, jpeg);
    }

    public boolean generateThumbnail(String directoryPath, String fileName) {
        if (!this.isDNGFile) {
            return false;
        }
        if (isAlreadyUsable(directoryPath, fileName)) {
            return true;
        }
        byte[] jpeg = findUsableJpeg();
        if (jpeg == null) {
            return false;
        }

        Bitmap thumb = null;
        try {
            BitmapFactory.Options bounds = new BitmapFactory.Options();
            bounds.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(jpeg, 0, jpeg.length, bounds);
            if (bounds.outWidth <= 0 || bounds.outHeight <= 0) {
                return writeBytes(directoryPath, fileName, jpeg);
            }

            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = sampleSizeFor(bounds.outWidth, bounds.outHeight);
            options.inPreferredConfig = Bitmap.Config.RGB_565;
            thumb = BitmapFactory.decodeByteArray(jpeg, 0, jpeg.length, options);
            if (thumb == null) {
                return writeBytes(directoryPath, fileName, jpeg);
            }
            return writeBitmap(directoryPath, fileName, thumb);
        } catch (Throwable ignored) {
            return false;
        } finally {
            if (thumb != null) {
                thumb.recycle();
            }
        }
    }

    // ------------------------------------------------------------------ helpers

    /** First candidate that BitmapFactory can actually parse, largest first. */
    private byte[] findUsableJpeg() {
        try {
            java.util.List<byte[]> candidates = DngJpegScanner.findCandidates(this.sourceFile);
            Log.i(TAG, "candidates=" + candidates.size() + " for " + this.sourceFile.getName());
            for (int i = 0; i < candidates.size(); i++) {
                byte[] candidate = candidates.get(i);
                BitmapFactory.Options bounds = new BitmapFactory.Options();
                bounds.inJustDecodeBounds = true;
                try {
                    BitmapFactory.decodeByteArray(candidate, 0, candidate.length, bounds);
                } catch (Throwable t) {
                    Log.w(TAG, "candidate[" + i + "] len=" + candidate.length + " decode threw " + t);
                    continue;
                }
                Log.i(TAG, "candidate[" + i + "] len=" + candidate.length + " -> " + bounds.outWidth + "x" + bounds.outHeight);
                if (bounds.outWidth > 0 && bounds.outHeight > 0) {
                    return candidate;
                }
            }
        } catch (Throwable t) {
            Log.e(TAG, "scan failed for " + this.sourceFile, t);
        }
        return null;
    }

    private static int sampleSizeFor(int width, int height) {
        int longest = Math.max(width, height);
        int sample = 1;
        while (longest / sample > THUMB_MAX_EDGE + THUMB_MAX_EDGE / 2) {
            sample *= 2;
        }
        return sample;
    }

    /**
     * True when the target already holds a decodable JPEG. The app only asked us because the file was
     * missing, but older builds left truncated/garbage previews behind; those must be replaced.
     */
    private static boolean isAlreadyUsable(String directoryPath, String fileName) {
        try {
            File target = prepareTarget(directoryPath, fileName);
            if (target == null || !target.isFile() || target.length() < 1024) {
                return false;
            }
            BitmapFactory.Options bounds = new BitmapFactory.Options();
            bounds.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(target.getAbsolutePath(), bounds);
            boolean usable = bounds.outWidth > 0 && bounds.outHeight > 0;
            if (!usable) {
                Log.i(TAG, "existing preview is not decodable, regenerating: " + target);
            }
            return usable;
        } catch (Throwable t) {
            return false;
        }
    }

    private static boolean writeBytes(String directoryPath, String fileName, byte[] data) {
        FileOutputStream out = null;
        try {
            File target = prepareTarget(directoryPath, fileName);
            if (target == null) {
                return false;
            }
            out = new FileOutputStream(target);
            out.write(data);
            out.flush();
            return true;
        } catch (Throwable t) {
            return false;
        } finally {
            if (out != null) {
                try {
                    out.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    private static boolean writeBitmap(String directoryPath, String fileName, Bitmap bitmap) {
        FileOutputStream out = null;
        try {
            File target = prepareTarget(directoryPath, fileName);
            if (target == null) {
                return false;
            }
            out = new FileOutputStream(target);
            bitmap.compress(Bitmap.CompressFormat.JPEG, THUMB_QUALITY, out);
            out.flush();
            return true;
        } catch (Throwable t) {
            return false;
        } finally {
            if (out != null) {
                try {
                    out.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    private static File prepareTarget(String directoryPath, String fileName) {
        if (directoryPath == null || fileName == null) {
            return null;
        }
        File directory = new File(directoryPath);
        if (!directory.exists()) {
            directory.mkdirs();
        }
        return new File(directory, fileName);
    }

    /**
     * Diagnostic entry point, used on-device via app_process to verify extraction against a real DNG:
     *   app_process / com.xiaoyi.mirrorlesscamera.bean.YiMirrorlessDNG &lt;input.dng&gt; &lt;output-dir&gt;
     * Never called by the app itself.
     */
    public static void main(String[] args) {
        if (args == null || args.length < 2) {
            System.out.println("usage: YiMirrorlessDNG <input.dng> <output-dir>");
            return;
        }
        YiMirrorlessDNG dng = new YiMirrorlessDNG(args[0]);
        System.out.println("isDNGFile=" + dng.isDNGFile);
        long started = System.currentTimeMillis();
        boolean preview = dng.generatePreview(args[1], "preview.JPG");
        long previewMs = System.currentTimeMillis() - started;
        started = System.currentTimeMillis();
        boolean thumb = dng.generateThumbnail(args[1], "thumb.JPG");
        long thumbMs = System.currentTimeMillis() - started;
        System.out.println("preview=" + preview + " (" + previewMs + " ms)");
        System.out.println("thumb=" + thumb + " (" + thumbMs + " ms)");
    }

    private static boolean isTiff(File file) {
        RandomAccessFile raf = null;
        try {
            raf = new RandomAccessFile(file, "r");
            byte[] magic = new byte[4];
            raf.readFully(magic);
            if (magic[0] == 'I' && magic[1] == 'I') {
                return true;
            }
            return magic[0] == 'M' && magic[1] == 'M';
        } catch (Throwable t) {
            return false;
        } finally {
            if (raf != null) {
                try {
                    raf.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }
}
