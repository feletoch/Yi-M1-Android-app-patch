.class public Ljp/co/cyberagent/android/gpuimage/GPUImageNativeLibrary;
.super Ljava/lang/Object;
.source "GPUImageNativeLibrary.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_ldr
    const-string v0, "gpuimage-library"

    .line 21
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_ldr
    .catch Ljava/lang/Throwable; {:try_start_ldr .. :try_end_ldr} :catch_ldr

    goto :ldr_done

    :catch_ldr
    move-exception v0

    :ldr_done
    return-void
.end method

.method public static native YUVtoARBG([BII[I)V
.end method

.method public static native YUVtoRBGA([BII[I)V
.end method
