.class public Lcom/xiaoyi/mirrorlesscamera/view/LiveView;
.super Landroid/view/SurfaceView;
.source "LiveView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaoyi/mirrorlesscamera/view/LiveView$a;
    }
.end annotation


# static fields
.field private static final FrameBufferSize:I = 0x19000

.field private static final TAG:Ljava/lang/String; = "LiveView"


# instance fields
.field private isUDPSmallPacket:Z

.field volatile mArrayLength:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field volatile mCanCopy:Z

.field mCopyArray:[B

.field private mDirectBuffer:Ljava/nio/ByteBuffer;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mRenderThread:Lcom/xiaoyi/mirrorlesscamera/view/LiveView$a;

.field private mUdpReceiver:Lcom/xiaoyi/mirrorlesscamera/view/UdpJpegReceiver;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->isUDPSmallPacket:Z

    .line 52
    iput-boolean p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mCanCopy:Z

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mArrayLength:I

    .line 61
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->isUDPSmallPacket:Z

    .line 52
    iput-boolean p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mCanCopy:Z

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mArrayLength:I

    .line 67
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->isUDPSmallPacket:Z

    .line 52
    iput-boolean p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mCanCopy:Z

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mArrayLength:I

    .line 72
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaoyi/mirrorlesscamera/view/LiveView;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->isUDPSmallPacket:Z

    return p0
.end method

.method static synthetic access$100(Lcom/xiaoyi/mirrorlesscamera/view/LiveView;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaoyi/mirrorlesscamera/view/LiveView;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mDirectBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaoyi/mirrorlesscamera/view/LiveView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xiaoyi/mirrorlesscamera/view/LiveView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaoyi/mirrorlesscamera/view/LiveView;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mWidth:I

    return p0
.end method

.method static synthetic access$500(Lcom/xiaoyi/mirrorlesscamera/view/LiveView;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mHeight:I

    return p0
.end method

.method static synthetic access$600(Lcom/xiaoyi/mirrorlesscamera/view/LiveView;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 77
    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/b/e;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->isUDPSmallPacket:Z

    .line 78
    iget-boolean v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->isUDPSmallPacket:Z

    if-eqz v0, :cond_0

    const v0, 0x19004

    .line 79
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mDirectBuffer:Ljava/nio/ByteBuffer;

    const v0, 0x19000

    .line 80
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mCopyArray:[B

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mHolder:Landroid/view/SurfaceHolder;

    .line 83
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private reset()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mRenderThread:Lcom/xiaoyi/mirrorlesscamera/view/LiveView$a;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mRenderThread:Lcom/xiaoyi/mirrorlesscamera/view/LiveView$a;

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/view/LiveView$a;->a()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mRenderThread:Lcom/xiaoyi/mirrorlesscamera/view/LiveView$a;

    .line 119
    :cond_0
    new-instance v0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView$a;

    invoke-direct {v0, p0}, Lcom/xiaoyi/mirrorlesscamera/view/LiveView$a;-><init>(Lcom/xiaoyi/mirrorlesscamera/view/LiveView;)V

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mRenderThread:Lcom/xiaoyi/mirrorlesscamera/view/LiveView$a;

    .line 120
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mRenderThread:Lcom/xiaoyi/mirrorlesscamera/view/LiveView$a;

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/view/LiveView$a;->start()V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method onReceive(II)V
    .locals 3

    .line 365
    iget-boolean p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mCanCopy:Z

    if-eqz p1, :cond_0

    .line 367
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mDirectBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 368
    iput p2, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mArrayLength:I

    const/4 v0, 0x4

    .line 369
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mCopyArray:[B

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    iput-boolean v2, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mCanCopy:Z

    :cond_0
    return-void
.end method

.method public startRecvLib(ILjava/lang/Object;I)V
    .locals 1

    new-instance v0, Lcom/xiaoyi/mirrorlesscamera/view/UdpJpegReceiver;

    invoke-direct {v0, p0}, Lcom/xiaoyi/mirrorlesscamera/view/UdpJpegReceiver;-><init>(Lcom/xiaoyi/mirrorlesscamera/view/LiveView;)V

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mUdpReceiver:Lcom/xiaoyi/mirrorlesscamera/view/UdpJpegReceiver;

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/view/UdpJpegReceiver;->start()V

    return-void
.end method

.method public stopRecvLib()V
    .locals 1

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mUdpReceiver:Lcom/xiaoyi/mirrorlesscamera/view/UdpJpegReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/view/UdpJpegReceiver;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mUdpReceiver:Lcom/xiaoyi/mirrorlesscamera/view/UdpJpegReceiver;

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p1, "LiveView"

    const-string p2, "surfaceChanged"

    .line 99
    invoke-static {p1, p2}, Lcom/xiaoyi/util/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput p3, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mWidth:I

    .line 101
    iput p4, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mHeight:I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "LiveView"

    const-string v0, "surfaceCreated"

    .line 89
    invoke-static {p1, v0}, Lcom/xiaoyi/util/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mRenderThread:Lcom/xiaoyi/mirrorlesscamera/view/LiveView$a;

    if-nez p1, :cond_0

    .line 91
    new-instance p1, Lcom/xiaoyi/mirrorlesscamera/view/LiveView$a;

    invoke-direct {p1, p0}, Lcom/xiaoyi/mirrorlesscamera/view/LiveView$a;-><init>(Lcom/xiaoyi/mirrorlesscamera/view/LiveView;)V

    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mRenderThread:Lcom/xiaoyi/mirrorlesscamera/view/LiveView$a;

    .line 92
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mRenderThread:Lcom/xiaoyi/mirrorlesscamera/view/LiveView$a;

    invoke-virtual {p1}, Lcom/xiaoyi/mirrorlesscamera/view/LiveView$a;->start()V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "LiveView"

    const-string v0, "surfaceDestroyed"

    .line 106
    invoke-static {p1, v0}, Lcom/xiaoyi/util/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mRenderThread:Lcom/xiaoyi/mirrorlesscamera/view/LiveView$a;

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mRenderThread:Lcom/xiaoyi/mirrorlesscamera/view/LiveView$a;

    invoke-virtual {p1}, Lcom/xiaoyi/mirrorlesscamera/view/LiveView$a;->a()V

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/LiveView;->mRenderThread:Lcom/xiaoyi/mirrorlesscamera/view/LiveView$a;

    :cond_0
    return-void
.end method
