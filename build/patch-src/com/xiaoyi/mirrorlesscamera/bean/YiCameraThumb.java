package com.xiaoyi.mirrorlesscamera.bean;

/**
 * Builds a camera-side thumbnail URL for album items that have none.
 *
 * The YI M1 HTTP API can render a JPEG preview from any file on the SD card:
 *
 *   GET http://192.168.0.10/?data={"command":"GetFile","path":"/DCIM/...","resulotion":"Thumbnail"}
 *   -> image/jpeg, 160x120, ~6.5 kB
 *
 * "MidThumb" returns the full 3200x2400 preview (~530 kB) and "Original" the
 * untouched file (a 32 MB DNG for raw shots, which Fresco cannot decode).
 */
public final class YiCameraThumb {

    private static final String BASE = "http://192.168.0.10/?data=";

    private YiCameraThumb() {
    }

    /**
     * Returns a usable thumbnail URI. If {@code thumb} is already set it is
     * returned untouched; otherwise a "Thumbnail" request URL is derived from
     * the on-camera path.
     */
    public static String fix(String thumb, String path) {
        boolean haveThumb = thumb != null && thumb.length() > 0;
        if (haveThumb) {
            return thumb;
        }
        if (path == null || !path.startsWith("/")) {
            return thumb;
        }
        try {
            String json = "{\"command\":\"GetFile\",\"path\":\"" + path
                    + "\",\"resulotion\":\"Thumbnail\"}";
            return BASE + java.net.URLEncoder.encode(json, "UTF-8");
        } catch (Throwable t) {
            return thumb;
        }
    }
}
