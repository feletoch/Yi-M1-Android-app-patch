package com.xiaoyi.mirrorlesscamera.view;

import android.content.Context;
import android.view.SurfaceView;

/**
 * Compile-time stub only. Never packaged: it exists so javac can resolve the
 * package-private fields of the real (smali) LiveView class.
 */
public class LiveView extends SurfaceView {

    byte[] mCopyArray;
    volatile int mArrayLength;
    volatile boolean mCanCopy;

    public LiveView(Context context) {
        super(context);
    }
}
