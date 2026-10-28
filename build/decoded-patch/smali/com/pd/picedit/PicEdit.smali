.class public Lcom/pd/picedit/PicEdit;
.super Ljava/lang/Object;
.source "PicEdit.java"


# static fields
.field private static instance:Lcom/pd/picedit/PicEdit;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "imgenhance"

    .line 18
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "hdr"

    .line 19
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "wb"

    .line 20
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "load"

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/pd/picedit/PicEdit;->instance:Lcom/pd/picedit/PicEdit;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private MAKE_RGBA(BBBB)I
    .locals 0

    .line 163
    invoke-direct {p0, p4}, Lcom/pd/picedit/PicEdit;->bytetoint(B)I

    move-result p4

    invoke-direct {p0, p1}, Lcom/pd/picedit/PicEdit;->bytetoint(B)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/pd/picedit/PicEdit;->bytetoint(B)I

    move-result p2

    invoke-direct {p0, p3}, Lcom/pd/picedit/PicEdit;->bytetoint(B)I

    move-result p3

    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private RGBA_A(I)B
    .locals 1

    const/high16 v0, -0x1000000

    and-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    return p1
.end method

.method private RGBA_B(I)B
    .locals 0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    return p1
.end method

.method private RGBA_G(I)B
    .locals 1

    const v0, 0xff00

    and-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    return p1
.end method

.method private RGBA_R(I)B
    .locals 1

    const/high16 v0, 0xff0000

    and-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    return p1
.end method

.method private bytetoint(B)I
    .locals 0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public static getInstance()Lcom/pd/picedit/PicEdit;
    .locals 2

    .line 33
    sget-object v0, Lcom/pd/picedit/PicEdit;->instance:Lcom/pd/picedit/PicEdit;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/pd/picedit/PicEdit;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/pd/picedit/PicEdit;->instance:Lcom/pd/picedit/PicEdit;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/pd/picedit/PicEdit;

    invoke-direct {v1}, Lcom/pd/picedit/PicEdit;-><init>()V

    sput-object v1, Lcom/pd/picedit/PicEdit;->instance:Lcom/pd/picedit/PicEdit;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/pd/picedit/PicEdit;->instance:Lcom/pd/picedit/PicEdit;

    return-object v0
.end method

.method private scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .line 140
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 141
    invoke-virtual {v5, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public native Iwb(Ljava/lang/Object;FF)I
.end method

.method public declared-synchronized actionShot([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 106
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 108
    :try_start_0
    aget-object v2, p1, v1

    .line 109
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 110
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 111
    array-length v4, p1

    invoke-virtual {p0, p1, v4}, Lcom/pd/picedit/PicEdit;->burstMerge([Ljava/lang/Object;I)[B

    move-result-object p1

    if-eqz p1, :cond_3

    .line 112
    array-length v4, p1

    mul-int v5, v3, v2

    mul-int/lit8 v6, v5, 0x3

    if-eq v4, v6, :cond_1

    goto :goto_1

    .line 116
    :cond_1
    new-array v0, v5, [I

    .line 117
    :goto_0
    array-length v4, p1

    div-int/lit8 v4, v4, 0x3

    if-ge v1, v4, :cond_2

    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v5, v4, 0x2

    .line 118
    aget-byte v5, p1, v5

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p1, v6

    aget-byte v4, p1, v4

    const/4 v7, -0x1

    invoke-direct {p0, v5, v6, v4, v7}, Lcom/pd/picedit/PicEdit;->MAKE_RGBA(BBBB)I

    move-result v4

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_2
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v2, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-object p1

    .line 113
    :cond_3
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 104
    monitor-exit p0

    throw p1
.end method

.method public native beautify([BIII)[B
.end method

.method public native beautifyBitmap(Ljava/lang/Object;)I
.end method

.method public native burstMerge([Ljava/lang/Object;I)[B
.end method

.method public native hdr(Ljava/lang/Object;I)I
.end method

.method public declared-synchronized hdrBitmap(Landroid/graphics/Bitmap;F)Z
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 133
    monitor-exit p0

    return p1

    :cond_0
    float-to-int p2, p2

    .line 135
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/pd/picedit/PicEdit;->hdr(Ljava/lang/Object;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 136
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 131
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized oneClickBeautify(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 51
    monitor-exit p0

    return-object v0

    :cond_0
    const/high16 v1, 0x3e800000    # 0.25f

    .line 53
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/pd/picedit/PicEdit;->scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v2, v1, v10

    .line 57
    new-array v11, v2, [I

    .line 58
    array-length v2, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v2, :cond_1

    .line 59
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, v11

    move v5, v1

    move v8, v1

    move v9, v10

    .line 61
    :try_start_1
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 62
    array-length v0, v11

    const/4 v2, 0x3

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 63
    :goto_0
    array-length v5, v11

    if-ge v4, v5, :cond_2

    mul-int/lit8 v5, v4, 0x3

    add-int/lit8 v6, v5, 0x0

    .line 65
    aget v7, v11, v4

    invoke-direct {p0, v7}, Lcom/pd/picedit/PicEdit;->RGBA_R(I)B

    move-result v7

    aput-byte v7, v0, v6

    add-int/lit8 v6, v5, 0x1

    .line 66
    aget v7, v11, v4

    invoke-direct {p0, v7}, Lcom/pd/picedit/PicEdit;->RGBA_G(I)B

    move-result v7

    aput-byte v7, v0, v6

    add-int/lit8 v5, v5, 0x2

    .line 67
    aget v6, v11, v4

    invoke-direct {p0, v6}, Lcom/pd/picedit/PicEdit;->RGBA_B(I)B

    move-result v6

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :try_start_2
    invoke-virtual {p0, v0, v1, v10, v2}, Lcom/pd/picedit/PicEdit;->beautify([BIII)[B

    move-result-object v0

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    :goto_1
    array-length v4, v0

    div-int/2addr v4, v2

    if-ge v3, v4, :cond_3

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v5, v4, 0x0

    .line 77
    aget-byte v5, v0, v5

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v0, v6

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, v0, v4

    const/4 v7, -0x1

    invoke-direct {p0, v5, v6, v4, v7}, Lcom/pd/picedit/PicEdit;->MAKE_RGBA(BBBB)I

    move-result v4

    aput v4, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v11, v1, v10, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    monitor-exit p0

    return-object v0

    .line 85
    :catch_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 49
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized oneClickBeautifyBitmap(Landroid/graphics/Bitmap;)Z
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 97
    monitor-exit p0

    return p1

    .line 99
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/pd/picedit/PicEdit;->beautifyBitmap(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 100
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 95
    monitor-exit p0

    throw p1
.end method
