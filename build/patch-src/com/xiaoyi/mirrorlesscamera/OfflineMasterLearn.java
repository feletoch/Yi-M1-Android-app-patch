package com.xiaoyi.mirrorlesscamera;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

/**
 * Offline Master Guide support.
 *
 * The full YI template catalog (list metadata, preview/shadows and the
 * master-learn JPGs the camera actually uploads) is bundled in
 * assets/offline_ml. On first use the guide JPGs are copied to a real
 * file and the app database is populated so the existing "Upload to
 * Camera" flow works without any network access.
 */
public final class OfflineMasterLearn {

    private static final String TAG = "OfflineML";
    private static final String ASSET_DIR = "offline_ml";
    private static final String PREFS = "offline_ml";
    private static final int VERSION = 1;

    private static List<Map<String, String>> sCatalog;

    private OfflineMasterLearn() {
    }

    /** Seed the database and append the bundled templates to the local list. */
    public static synchronized void load(Context ctx) {
        if (ctx == null) {
            return;
        }
        try {
            List<Map<String, String>> catalog = catalog(ctx);
            if (catalog == null || catalog.isEmpty()) {
                return;
            }
            try {
                seed(ctx, catalog);
            } catch (Throwable t) {
                Log.w(TAG, "seed failed", t);
            }

            List<Map<String, String>> list = com.xiaoyi.mirrorlesscamera.common.l.d;
            if (list == null) {
                list = new ArrayList<Map<String, String>>(catalog);
                com.xiaoyi.mirrorlesscamera.common.l.d = list;
                return;
            }

            HashSet<String> have = new HashSet<String>();
            for (Map<String, String> item : list) {
                String id = item.get("picId");
                if (id != null) {
                    have.add(id);
                }
            }
            for (Map<String, String> item : catalog) {
                String id = item.get("picId");
                if (id != null && !have.contains(id)) {
                    list.add(item);
                    have.add(id);
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "load failed", t);
        }
    }

    private static List<Map<String, String>> catalog(Context ctx) throws Exception {
        if (sCatalog != null) {
            return sCatalog;
        }
        String json = readAsset(ctx.getAssets().open(ASSET_DIR + "/catalog.json"));
        JSONArray arr = new JSONArray(json);
        List<Map<String, String>> out = new ArrayList<Map<String, String>>(arr.length());
        for (int i = 0; i < arr.length(); i++) {
            JSONObject o = arr.getJSONObject(i);
            HashMap<String, String> m = new HashMap<String, String>();
            JSONArray names = o.names();
            if (names == null) {
                continue;
            }
            for (int j = 0; j < names.length(); j++) {
                String key = names.getString(j);
                Object v = o.get(key);
                if (v != null && v != JSONObject.NULL) {
                    m.put(key, String.valueOf(v));
                }
            }
            if (m.get("picId") != null && m.get("downFileName") != null) {
                out.add(m);
            }
        }
        sCatalog = out;
        return out;
    }

    private static void seed(Context ctx, List<Map<String, String>> catalog) {
        SharedPreferences sp = ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        if (sp.getInt("v", 0) == VERSION && filesReady(ctx, catalog) && dbReady(catalog)) {
            return;
        }

        File dir = guideDir(ctx);
        if (dir == null) {
            return;
        }
        if (!dir.exists()) {
            dir.mkdirs();
        }

        for (Map<String, String> item : catalog) {
            String name = item.get("downFileName");
            if (name == null || name.length() == 0
                    || name.indexOf('/') >= 0 || name.indexOf('\\') >= 0) {
                continue;
            }
            File f = new File(dir, name);
            if (!f.exists() || f.length() < 1024L) {
                try {
                    copy(ctx.getAssets().open(ASSET_DIR + "/g/" + name), f);
                } catch (Throwable t) {
                    Log.w(TAG, "copy failed: " + name, t);
                    continue;
                }
            }
            try {
                HashMap<String, String> x = new HashMap<String, String>(item);
                HashMap<String, String> s = new HashMap<String, String>(item);
                com.xiaoyi.mirrorlesscamera.db.a.a(x, s, "file://" + f.getAbsolutePath());
            } catch (Throwable t) {
                Log.w(TAG, "db seed failed: " + name, t);
            }
        }
        sp.edit().putInt("v", VERSION).apply();
    }

    private static boolean filesReady(Context ctx, List<Map<String, String>> catalog) {
        File dir = guideDir(ctx);
        if (dir == null) {
            return false;
        }
        for (Map<String, String> item : catalog) {
            String name = item.get("downFileName");
            if (name == null) {
                continue;
            }
            File f = new File(dir, name);
            if (!f.exists() || f.length() < 1024L) {
                return false;
            }
        }
        return true;
    }

    private static boolean dbReady(List<Map<String, String>> catalog) {
        try {
            Map<String, String> first = catalog.get(0);
            String id = first.get("picId");
            if (id == null) {
                return false;
            }
            Map<String, String> row = com.xiaoyi.mirrorlesscamera.db.a.c(id);
            return row != null && !row.isEmpty();
        } catch (Throwable t) {
            return false;
        }
    }

    private static File guideDir(Context ctx) {
        File dir = ctx.getExternalFilesDir("masterlearn");
        if (dir == null) {
            dir = new File(ctx.getFilesDir(), "masterlearn");
        }
        return dir;
    }

    private static String readAsset(InputStream in) throws Exception {
        try {
            java.io.ByteArrayOutputStream bos = new java.io.ByteArrayOutputStream();
            byte[] buf = new byte[16 * 1024];
            int n;
            while ((n = in.read(buf)) > 0) {
                bos.write(buf, 0, n);
            }
            return new String(bos.toByteArray(), "UTF-8");
        } finally {
            in.close();
        }
    }

    private static void copy(InputStream in, File dest) throws Exception {
        File tmp = new File(dest.getAbsolutePath() + ".tmp");
        FileOutputStream out = new FileOutputStream(tmp);
        try {
            byte[] buf = new byte[32 * 1024];
            int n;
            while ((n = in.read(buf)) > 0) {
                out.write(buf, 0, n);
            }
            out.flush();
        } finally {
            out.close();
            in.close();
        }
        if (dest.exists()) {
            dest.delete();
        }
        if (!tmp.renameTo(dest)) {
            throw new java.io.IOException("rename failed: " + dest);
        }
    }
}
