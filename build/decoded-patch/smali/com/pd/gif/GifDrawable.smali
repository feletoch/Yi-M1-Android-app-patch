.class public Lcom/pd/gif/GifDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GifDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final UI_HANDLER:Landroid/os/Handler;


# instance fields
.field private mApplyTransformation:Z

.field private mColors:[I

.field private final mDstRect:Landroid/graphics/Rect;

.field private volatile mGifInfoPtr:I

.field private final mInputSourceLength:J

.field private final mInvalidateTask:Ljava/lang/Runnable;

.field private volatile mIsRunning:Z

.field private final mMetaData:[I

.field protected final mPaint:Landroid/graphics/Paint;

.field private final mResetTask:Ljava/lang/Runnable;

.field private final mSaveRemainderTask:Ljava/lang/Runnable;

.field private final mStartTask:Ljava/lang/Runnable;

.field private mSx:F

.field private mSy:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_ldr
    const-string v0, "gif"

    .line 37
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_ldr
    .catch Ljava/lang/Throwable; {:try_start_ldr .. :try_end_ldr} :catch_ldr

    goto :ldr_done

    :catch_ldr
    move-exception v0

    :ldr_done
    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/pd/gif/GifDrawable;->UI_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 5

    .line 229
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/pd/gif/GifDrawable;->mIsRunning:Z

    const/4 v1, 0x5

    .line 81
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 84
    iput v1, p0, Lcom/pd/gif/GifDrawable;->mSx:F

    .line 85
    iput v1, p0, Lcom/pd/gif/GifDrawable;->mSy:F

    .line 87
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 92
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    .line 99
    new-instance v1, Lcom/pd/gif/GifDrawable$1;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$1;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mResetTask:Ljava/lang/Runnable;

    .line 108
    new-instance v1, Lcom/pd/gif/GifDrawable$2;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$2;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mStartTask:Ljava/lang/Runnable;

    .line 118
    new-instance v1, Lcom/pd/gif/GifDrawable$3;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$3;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mSaveRemainderTask:Ljava/lang/Runnable;

    .line 127
    new-instance v1, Lcom/pd/gif/GifDrawable$4;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$4;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mInvalidateTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-static {v2, v1, v3, v4}, Lcom/pd/gif/GifDrawable;->openFd([ILjava/io/FileDescriptor;J)I

    move-result v1

    iput v1, p0, Lcom/pd/gif/GifDrawable;->mGifInfoPtr:I

    .line 234
    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    aget v0, v2, v0

    mul-int v1, v1, v0

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/pd/gif/GifDrawable;->mColors:[I

    .line 235
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pd/gif/GifDrawable;->mInputSourceLength:J

    return-void

    .line 231
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Source is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0

    .line 166
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pd/gif/GifDrawable;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    .line 154
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pd/gif/GifDrawable;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .line 194
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/pd/gif/GifDrawable;->mIsRunning:Z

    const/4 v1, 0x5

    .line 81
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 84
    iput v1, p0, Lcom/pd/gif/GifDrawable;->mSx:F

    .line 85
    iput v1, p0, Lcom/pd/gif/GifDrawable;->mSy:F

    .line 87
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 92
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    .line 99
    new-instance v1, Lcom/pd/gif/GifDrawable$1;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$1;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mResetTask:Ljava/lang/Runnable;

    .line 108
    new-instance v1, Lcom/pd/gif/GifDrawable$2;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$2;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mStartTask:Ljava/lang/Runnable;

    .line 118
    new-instance v1, Lcom/pd/gif/GifDrawable$3;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$3;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mSaveRemainderTask:Ljava/lang/Runnable;

    .line 127
    new-instance v1, Lcom/pd/gif/GifDrawable$4;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$4;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mInvalidateTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pd/gif/GifDrawable;->mInputSourceLength:J

    .line 198
    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/pd/gif/GifDrawable;->openFile([ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/pd/gif/GifDrawable;->mGifInfoPtr:I

    .line 199
    iget-object p1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v1, 0x0

    aget p1, p1, v1

    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    aget v0, v1, v0

    mul-int p1, p1, v0

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/pd/gif/GifDrawable;->mColors:[I

    return-void

    .line 196
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Source is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 4

    .line 245
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/pd/gif/GifDrawable;->mIsRunning:Z

    const/4 v1, 0x5

    .line 81
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 84
    iput v1, p0, Lcom/pd/gif/GifDrawable;->mSx:F

    .line 85
    iput v1, p0, Lcom/pd/gif/GifDrawable;->mSy:F

    .line 87
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 92
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    .line 99
    new-instance v1, Lcom/pd/gif/GifDrawable$1;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$1;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mResetTask:Ljava/lang/Runnable;

    .line 108
    new-instance v1, Lcom/pd/gif/GifDrawable$2;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$2;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mStartTask:Ljava/lang/Runnable;

    .line 118
    new-instance v1, Lcom/pd/gif/GifDrawable$3;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$3;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mSaveRemainderTask:Ljava/lang/Runnable;

    .line 127
    new-instance v1, Lcom/pd/gif/GifDrawable$4;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$4;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mInvalidateTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const-wide/16 v2, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/pd/gif/GifDrawable;->openFd([ILjava/io/FileDescriptor;J)I

    move-result p1

    iput p1, p0, Lcom/pd/gif/GifDrawable;->mGifInfoPtr:I

    .line 249
    iget-object p1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v1, 0x0

    aget p1, p1, v1

    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    aget v0, v1, v0

    mul-int p1, p1, v0

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/pd/gif/GifDrawable;->mColors:[I

    const-wide/16 v0, -0x1

    .line 250
    iput-wide v0, p0, Lcom/pd/gif/GifDrawable;->mInputSourceLength:J

    return-void

    .line 247
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Source is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .line 211
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/pd/gif/GifDrawable;->mIsRunning:Z

    const/4 v1, 0x5

    .line 81
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 84
    iput v1, p0, Lcom/pd/gif/GifDrawable;->mSx:F

    .line 85
    iput v1, p0, Lcom/pd/gif/GifDrawable;->mSy:F

    .line 87
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 92
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    .line 99
    new-instance v1, Lcom/pd/gif/GifDrawable$1;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$1;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mResetTask:Ljava/lang/Runnable;

    .line 108
    new-instance v1, Lcom/pd/gif/GifDrawable$2;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$2;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mStartTask:Ljava/lang/Runnable;

    .line 118
    new-instance v1, Lcom/pd/gif/GifDrawable$3;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$3;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mSaveRemainderTask:Ljava/lang/Runnable;

    .line 127
    new-instance v1, Lcom/pd/gif/GifDrawable$4;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$4;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mInvalidateTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 214
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    invoke-static {v1, p1}, Lcom/pd/gif/GifDrawable;->openStream([ILjava/io/InputStream;)I

    move-result p1

    iput p1, p0, Lcom/pd/gif/GifDrawable;->mGifInfoPtr:I

    .line 217
    iget-object p1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v1, 0x0

    aget p1, p1, v1

    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    aget v0, v1, v0

    mul-int p1, p1, v0

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/pd/gif/GifDrawable;->mColors:[I

    const-wide/16 v0, -0x1

    .line 218
    iput-wide v0, p0, Lcom/pd/gif/GifDrawable;->mInputSourceLength:J

    return-void

    .line 215
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "InputStream does not support marking"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 213
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Source is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 179
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/pd/gif/GifDrawable;->mIsRunning:Z

    const/4 v1, 0x5

    .line 81
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 84
    iput v1, p0, Lcom/pd/gif/GifDrawable;->mSx:F

    .line 85
    iput v1, p0, Lcom/pd/gif/GifDrawable;->mSy:F

    .line 87
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 92
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    .line 99
    new-instance v1, Lcom/pd/gif/GifDrawable$1;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$1;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mResetTask:Ljava/lang/Runnable;

    .line 108
    new-instance v1, Lcom/pd/gif/GifDrawable$2;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$2;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mStartTask:Ljava/lang/Runnable;

    .line 118
    new-instance v1, Lcom/pd/gif/GifDrawable$3;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$3;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mSaveRemainderTask:Ljava/lang/Runnable;

    .line 127
    new-instance v1, Lcom/pd/gif/GifDrawable$4;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$4;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mInvalidateTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 182
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pd/gif/GifDrawable;->mInputSourceLength:J

    .line 183
    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    invoke-static {v1, p1}, Lcom/pd/gif/GifDrawable;->openFile([ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/pd/gif/GifDrawable;->mGifInfoPtr:I

    .line 184
    iget-object p1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v1, 0x0

    aget p1, p1, v1

    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    aget v0, v1, v0

    mul-int p1, p1, v0

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/pd/gif/GifDrawable;->mColors:[I

    return-void

    .line 181
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Source is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 278
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/pd/gif/GifDrawable;->mIsRunning:Z

    const/4 v1, 0x5

    .line 81
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 84
    iput v1, p0, Lcom/pd/gif/GifDrawable;->mSx:F

    .line 85
    iput v1, p0, Lcom/pd/gif/GifDrawable;->mSy:F

    .line 87
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 92
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    .line 99
    new-instance v1, Lcom/pd/gif/GifDrawable$1;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$1;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mResetTask:Ljava/lang/Runnable;

    .line 108
    new-instance v1, Lcom/pd/gif/GifDrawable$2;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$2;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mStartTask:Ljava/lang/Runnable;

    .line 118
    new-instance v1, Lcom/pd/gif/GifDrawable$3;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$3;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mSaveRemainderTask:Ljava/lang/Runnable;

    .line 127
    new-instance v1, Lcom/pd/gif/GifDrawable$4;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$4;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mInvalidateTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 281
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    invoke-static {v1, p1}, Lcom/pd/gif/GifDrawable;->openDirectByteBuffer([ILjava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/pd/gif/GifDrawable;->mGifInfoPtr:I

    .line 284
    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    aget v0, v2, v0

    mul-int v1, v1, v0

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/pd/gif/GifDrawable;->mColors:[I

    .line 285
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/pd/gif/GifDrawable;->mInputSourceLength:J

    return-void

    .line 282
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ByteBuffer is not direct"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 280
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Source is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 261
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/pd/gif/GifDrawable;->mIsRunning:Z

    const/4 v1, 0x5

    .line 81
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 84
    iput v1, p0, Lcom/pd/gif/GifDrawable;->mSx:F

    .line 85
    iput v1, p0, Lcom/pd/gif/GifDrawable;->mSy:F

    .line 87
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 92
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    .line 99
    new-instance v1, Lcom/pd/gif/GifDrawable$1;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$1;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mResetTask:Ljava/lang/Runnable;

    .line 108
    new-instance v1, Lcom/pd/gif/GifDrawable$2;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$2;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mStartTask:Ljava/lang/Runnable;

    .line 118
    new-instance v1, Lcom/pd/gif/GifDrawable$3;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$3;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mSaveRemainderTask:Ljava/lang/Runnable;

    .line 127
    new-instance v1, Lcom/pd/gif/GifDrawable$4;

    invoke-direct {v1, p0}, Lcom/pd/gif/GifDrawable$4;-><init>(Lcom/pd/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/pd/gif/GifDrawable;->mInvalidateTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    invoke-static {v1, p1}, Lcom/pd/gif/GifDrawable;->openByteArray([I[B)I

    move-result v1

    iput v1, p0, Lcom/pd/gif/GifDrawable;->mGifInfoPtr:I

    .line 265
    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    aget v0, v2, v0

    mul-int v1, v1, v0

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/pd/gif/GifDrawable;->mColors:[I

    .line 266
    array-length p1, p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/pd/gif/GifDrawable;->mInputSourceLength:J

    return-void

    .line 263
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Source is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/pd/gif/GifDrawable;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/pd/gif/GifDrawable;->mGifInfoPtr:I

    return p0
.end method

.method static synthetic access$100(I)Z
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/pd/gif/GifDrawable;->reset(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(I)I
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/pd/gif/GifDrawable;->restoreRemainder(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(I)I
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/pd/gif/GifDrawable;->saveRemainder(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/pd/gif/GifDrawable;)[I
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/pd/gif/GifDrawable;->mColors:[I

    return-object p0
.end method

.method static synthetic access$500(II[I)I
    .locals 0

    .line 33
    invoke-static {p0, p1, p2}, Lcom/pd/gif/GifDrawable;->seekToTime(II[I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(II[I)I
    .locals 0

    .line 33
    invoke-static {p0, p1, p2}, Lcom/pd/gif/GifDrawable;->seekToFrame(II[I)I

    move-result p0

    return p0
.end method

.method public static createFromResource(Landroid/content/res/Resources;I)Lcom/pd/gif/GifDrawable;
    .locals 1

    .line 447
    :try_start_0
    new-instance v0, Lcom/pd/gif/GifDrawable;

    invoke-direct {v0, p0, p1}, Lcom/pd/gif/GifDrawable;-><init>(Landroid/content/res/Resources;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static native free(I)V
.end method

.method private static native getAllocationByteCount(I)J
.end method

.method private static native getComment(I)Ljava/lang/String;
.end method

.method private static native getCurrentPosition(I)I
.end method

.method private static native getDuration(I)I
.end method

.method private static native getLoopCount(I)I
.end method

.method private static native openByteArray([I[B)I
.end method

.method private static native openDirectByteBuffer([ILjava/nio/ByteBuffer;)I
.end method

.method private static native openFd([ILjava/io/FileDescriptor;J)I
.end method

.method private static native openFile([ILjava/lang/String;)I
.end method

.method private static native openStream([ILjava/io/InputStream;)I
.end method

.method private static native renderFrame([II[I)V
.end method

.method private static native reset(I)Z
.end method

.method private static native restoreRemainder(I)I
.end method

.method private static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 138
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lcom/pd/gif/GifDrawable;->UI_HANDLER:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 139
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 141
    :cond_0
    sget-object v0, Lcom/pd/gif/GifDrawable;->UI_HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private static native saveRemainder(I)I
.end method

.method private static native seekToFrame(II[I)I
.end method

.method private static native seekToTime(II[I)I
.end method

.method private static native setSpeedFactor(IF)V
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canSeekForward()Z
    .locals 2

    .line 600
    invoke-virtual {p0}, Lcom/pd/gif/GifDrawable;->getNumberOfFrames()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 705
    iget-boolean v1, p0, Lcom/pd/gif/GifDrawable;->mApplyTransformation:Z

    const/4 v10, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 707
    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/pd/gif/GifDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 708
    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    aget v3, v3, v2

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/pd/gif/GifDrawable;->mSx:F

    .line 709
    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    aget v3, v3, v10

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/pd/gif/GifDrawable;->mSy:F

    .line 710
    iput-boolean v2, p0, Lcom/pd/gif/GifDrawable;->mApplyTransformation:Z

    .line 712
    :cond_0
    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    if-nez v1, :cond_3

    .line 714
    iget-boolean v1, p0, Lcom/pd/gif/GifDrawable;->mIsRunning:Z

    const/4 v11, 0x4

    if-eqz v1, :cond_1

    .line 715
    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mColors:[I

    iget v3, p0, Lcom/pd/gif/GifDrawable;->mGifInfoPtr:I

    iget-object v4, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    invoke-static {v1, v3, v4}, Lcom/pd/gif/GifDrawable;->renderFrame([II[I)V

    goto :goto_0

    .line 717
    :cond_1
    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v3, -0x1

    aput v3, v1, v11

    .line 719
    :goto_0
    iget v1, p0, Lcom/pd/gif/GifDrawable;->mSx:F

    iget v3, p0, Lcom/pd/gif/GifDrawable;->mSy:F

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 720
    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mColors:[I

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    .line 722
    iget-object v4, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    aget v4, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    aget v7, v7, v2

    iget-object v2, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    aget v8, v2, v10

    const/4 v9, 0x1

    iget-object v12, p0, Lcom/pd/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v12

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 724
    :cond_2
    iget-object v0, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    aget v0, v0, v11

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    if-le v0, v10, :cond_4

    .line 725
    sget-object v0, Lcom/pd/gif/GifDrawable;->UI_HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mInvalidateTask:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    aget v2, v2, v11

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 728
    :cond_3
    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/pd/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 309
    :try_start_0
    invoke-virtual {p0}, Lcom/pd/gif/GifDrawable;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAllocationByteCount()J
    .locals 6

    .line 631
    iget v0, p0, Lcom/pd/gif/GifDrawable;->mGifInfoPtr:I

    invoke-static {v0}, Lcom/pd/gif/GifDrawable;->getAllocationByteCount(I)J

    move-result-wide v0

    .line 632
    iget-object v2, p0, Lcom/pd/gif/GifDrawable;->mColors:[I

    if-nez v2, :cond_0

    return-wide v0

    .line 635
    :cond_0
    array-length v2, v2

    int-to-long v2, v2

    const-wide/16 v4, 0x4

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getAlpha()I
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/pd/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 396
    iget v0, p0, Lcom/pd/gif/GifDrawable;->mGifInfoPtr:I

    invoke-static {v0}, Lcom/pd/gif/GifDrawable;->getComment(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 500
    iget v0, p0, Lcom/pd/gif/GifDrawable;->mGifInfoPtr:I

    invoke-static {v0}, Lcom/pd/gif/GifDrawable;->getCurrentPosition(I)I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 489
    iget v0, p0, Lcom/pd/gif/GifDrawable;->mGifInfoPtr:I

    invoke-static {v0}, Lcom/pd/gif/GifDrawable;->getDuration(I)I

    move-result v0

    return v0
.end method

.method public getError()Lcom/pd/gif/GifError;
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-static {v0}, Lcom/pd/gif/GifError;->fromCode(I)Lcom/pd/gif/GifError;

    move-result-object v0

    return-object v0
.end method

.method public getFrameByteCount()I
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getInputSourceByteCount()J
    .locals 2

    .line 647
    iget-wide v0, p0, Lcom/pd/gif/GifDrawable;->mInputSourceLength:J

    return-wide v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .line 406
    iget v0, p0, Lcom/pd/gif/GifDrawable;->mGifInfoPtr:I

    invoke-static {v0}, Lcom/pd/gif/GifDrawable;->getLoopCount(I)I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getMinimumWidth()I
    .locals 2

    .line 768
    iget-object v0, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getNumberOfFrames()I
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/pd/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPixel(II)I
    .locals 3

    if-ltz p1, :cond_4

    if-ltz p2, :cond_3

    .line 682
    iget-object v0, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ge p1, v0, :cond_2

    .line 684
    iget-object v0, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ge p2, v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/pd/gif/GifDrawable;->mColors:[I

    if-eqz v0, :cond_0

    .line 689
    iget-object v2, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    aget v1, v2, v1

    mul-int v1, v1, p2

    add-int/2addr v1, p1

    aget p1, v0, v1

    return p1

    .line 688
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "GifDrawable is recycled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 685
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "y must be < GIF height"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 683
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x must be < GIF width"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 681
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "y must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 679
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPixels([I)V
    .locals 3

    .line 658
    iget-object v0, p0, Lcom/pd/gif/GifDrawable;->mColors:[I

    if-nez v0, :cond_0

    return-void

    .line 661
    :cond_0
    array-length v1, p1

    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 663
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 662
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pixels array is too small. Required length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isPlaying()Z
    .locals 1

    .line 558
    iget-boolean v0, p0, Lcom/pd/gif/GifDrawable;->mIsRunning:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 387
    iget-boolean v0, p0, Lcom/pd/gif/GifDrawable;->mIsRunning:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 695
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 696
    iput-boolean p1, p0, Lcom/pd/gif/GifDrawable;->mApplyTransformation:Z

    return-void
.end method

.method public pause()V
    .locals 0

    .line 476
    invoke-virtual {p0}, Lcom/pd/gif/GifDrawable;->stop()V

    return-void
.end method

.method public recycle()V
    .locals 2

    const/4 v0, 0x0

    .line 297
    iput-boolean v0, p0, Lcom/pd/gif/GifDrawable;->mIsRunning:Z

    .line 298
    iget v1, p0, Lcom/pd/gif/GifDrawable;->mGifInfoPtr:I

    .line 299
    iput v0, p0, Lcom/pd/gif/GifDrawable;->mGifInfoPtr:I

    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lcom/pd/gif/GifDrawable;->mColors:[I

    .line 301
    invoke-static {v1}, Lcom/pd/gif/GifDrawable;->free(I)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/pd/gif/GifDrawable;->mResetTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/pd/gif/GifDrawable;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 520
    new-instance v0, Lcom/pd/gif/GifDrawable$5;

    invoke-direct {v0, p0, p1}, Lcom/pd/gif/GifDrawable$5;-><init>(Lcom/pd/gif/GifDrawable;I)V

    invoke-static {v0}, Lcom/pd/gif/GifDrawable;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 519
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Position is not positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public seekToFrame(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 540
    new-instance v0, Lcom/pd/gif/GifDrawable$6;

    invoke-direct {v0, p0, p1}, Lcom/pd/gif/GifDrawable$6;-><init>(Lcom/pd/gif/GifDrawable;I)V

    invoke-static {v0}, Lcom/pd/gif/GifDrawable;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 539
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "frameIndex is not positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/pd/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/pd/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setDither(Z)V
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/pd/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 756
    invoke-virtual {p0}, Lcom/pd/gif/GifDrawable;->invalidateSelf()V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/pd/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 749
    invoke-virtual {p0}, Lcom/pd/gif/GifDrawable;->invalidateSelf()V

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 467
    iget v0, p0, Lcom/pd/gif/GifDrawable;->mGifInfoPtr:I

    invoke-static {v0, p1}, Lcom/pd/gif/GifDrawable;->setSpeedFactor(IF)V

    return-void

    .line 466
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Speed factor is not positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 358
    iput-boolean v0, p0, Lcom/pd/gif/GifDrawable;->mIsRunning:Z

    .line 359
    iget-object v0, p0, Lcom/pd/gif/GifDrawable;->mStartTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/pd/gif/GifDrawable;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Lcom/pd/gif/GifDrawable;->mIsRunning:Z

    .line 381
    iget-object v0, p0, Lcom/pd/gif/GifDrawable;->mSaveRemainderTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/pd/gif/GifDrawable;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 415
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Size: %dx%d, %d frames, error: %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/pd/gif/GifDrawable;->mMetaData:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
