.class public Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;
.super Landroid/widget/RelativeLayout;
.source "DownloadAlbumItem.java"


# instance fields
.field public a:I

.field private b:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ProgressBar;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/content/Context;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

.field private o:J

.field private p:J

.field private q:Z

.field private r:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->a(Landroid/content/Context;)V

    .line 60
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->a(Landroid/content/Context;)V

    .line 66
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    invoke-direct {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->a(Landroid/content/Context;)V

    .line 72
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    const v0, 0x7f08024b

    .line 85
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f08016f

    .line 86
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->j:Landroid/widget/TextView;

    const v0, 0x7f0801c1

    .line 87
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->c:Landroid/view/View;

    const v0, 0x7f08008c

    .line 88
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->d:Landroid/widget/CheckBox;

    const v0, 0x7f080119

    .line 89
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->e:Landroid/widget/TextView;

    const v0, 0x7f0802ac

    .line 90
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->f:Landroid/widget/ImageView;

    const v0, 0x7f080219

    .line 91
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->g:Landroid/widget/TextView;

    const v0, 0x7f0800de

    .line 92
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->h:Landroid/widget/TextView;

    const v0, 0x7f08021a

    .line 93
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->i:Landroid/widget/ProgressBar;

    const v0, 0x7f0802ad

    .line 94
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->r:Landroid/widget/TextView;

    return-void
.end method

.method private a(II)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->i:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 101
    iget-object p2, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->i:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 76
    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->k:Landroid/content/Context;

    const v0, 0x7f0a0057

    .line 77
    invoke-static {p1, v0, p0}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f070317

    .line 79
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->l:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f070318

    .line 80
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->m:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private a(Landroid/net/Uri;II)V
    .locals 1

    .line 159
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/facebook/imagepipeline/common/d;

    invoke-direct {v0, p2, p3}, Lcom/facebook/imagepipeline/common/d;-><init>(II)V

    .line 160
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Lcom/facebook/imagepipeline/common/d;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    const/4 p2, 0x1

    .line 161
    invoke-virtual {p1, p2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 162
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 163
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/b;->a()Lcom/facebook/drawee/backends/pipeline/d;

    move-result-object p2

    iget-object p3, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 164
    invoke-virtual {p3}, Lcom/facebook/drawee/view/SimpleDraweeView;->getController()Lcom/facebook/drawee/c/a;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/facebook/drawee/backends/pipeline/d;->a(Lcom/facebook/drawee/c/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p2

    check-cast p2, Lcom/facebook/drawee/backends/pipeline/d;

    .line 165
    invoke-virtual {p2, p1}, Lcom/facebook/drawee/backends/pipeline/d;->b(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/d;

    .line 166
    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/d;->k()Lcom/facebook/drawee/controller/a;

    move-result-object p1

    .line 167
    iget-object p2, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/c/a;)V

    return-void
.end method

.method private setDownloadDes(Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;)V
    .locals 10

    .line 128
    iget v0, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileSize:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/b/g;->a(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 129
    iget v1, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->progress:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/xiaoyi/mirrorlesscamera/b/g;->a(J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 130
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->g:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->k:Landroid/content/Context;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v3

    const/4 v1, 0x1

    aput-object v0, v5, v1

    const v0, 0x7f0d003b

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->p:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget v0, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->progress:I

    int-to-long v6, v0

    iget-wide v8, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->o:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    div-long/2addr v6, v4

    .line 138
    invoke-static {v6, v7}, Lcom/xiaoyi/mirrorlesscamera/b/g;->a(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    cmp-long v2, v4, v8

    if-lez v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->h:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->k:Landroid/content/Context;

    const v5, 0x7f0d003f

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget p1, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->progress:I

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->o:J

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->p:J

    :cond_1
    return-void
.end method

.method private setFileName(Ljava/lang/String;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setImageUri(Ljava/lang/String;)V
    .locals 2

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/high16 v0, 0x428c0000    # 70.0f

    invoke-static {v0}, Lcom/xiaoyi/mirrorlesscamera/b/f;->a(F)I

    move-result v0

    const/high16 v1, 0x423c0000    # 47.0f

    invoke-static {v1}, Lcom/xiaoyi/mirrorlesscamera/b/f;->a(F)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->a(Landroid/net/Uri;II)V

    :cond_0
    return-void
.end method

.method private setItemTypeStyle(Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;)V
    .locals 5

    .line 226
    iget-boolean v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->q:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->j:Landroid/widget/TextView;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Lcom/xiaoyi/mirrorlesscamera/b/f;->b(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->j:Landroid/widget/TextView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/xiaoyi/mirrorlesscamera/b/f;->b(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 231
    :goto_0
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem$1;->b:[I

    iget-object v1, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileType:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    invoke-virtual {v1}, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 255
    :pswitch_0
    iget-boolean p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->q:Z

    if-eqz p1, :cond_1

    .line 256
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->k:Landroid/content/Context;

    const v1, 0x7f070303

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->k:Landroid/content/Context;

    const v1, 0x7f070302

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 260
    :goto_1
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->k:Landroid/content/Context;

    const v1, 0x7f0d0031

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 247
    :pswitch_1
    iget-boolean v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->q:Z

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->k:Landroid/content/Context;

    const v4, 0x7f0702a9

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->k:Landroid/content/Context;

    const v4, 0x7f0702a8

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 252
    :goto_2
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->k:Landroid/content/Context;

    const v3, 0x7f0d002d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget p1, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->burst_count:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 239
    :pswitch_2
    iget-boolean v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->q:Z

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->k:Landroid/content/Context;

    const v3, 0x7f070305

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->k:Landroid/content/Context;

    const v3, 0x7f070304

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 244
    :goto_3
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->j:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->video_duration:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 236
    :pswitch_3
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 233
    :pswitch_4
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->j:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setTaskMode(Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;)V
    .locals 1

    .line 172
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem$1;->a:[I

    iget-object p1, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->downloadState:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$DownloadState;

    invoke-virtual {p1}, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$DownloadState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 198
    :pswitch_0
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->f:Landroid/widget/ImageView;

    const v0, 0x7f0702af

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->r:Landroid/widget/TextView;

    const v0, 0x7f0d003d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 200
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->i:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->f:Landroid/widget/ImageView;

    const v0, 0x7f0702b2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->r:Landroid/widget/TextView;

    const v0, 0x7f0d0040

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 193
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->i:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 183
    :pswitch_2
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->f:Landroid/widget/ImageView;

    const v0, 0x7f070252

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->r:Landroid/widget/TextView;

    const v0, 0x7f0d003e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 186
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->i:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 175
    :pswitch_3
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->f:Landroid/widget/ImageView;

    const v0, 0x7f0702b1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->r:Landroid/widget/TextView;

    const v0, 0x7f0d0042

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->i:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setSelected(Z)V

    .line 179
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->i:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCameraFile()Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->n:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    return-object v0
.end method

.method public setCameraFile(Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;)V
    .locals 2

    .line 109
    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->n:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    .line 110
    iget v0, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->position:I

    iput v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->a:I

    .line 112
    iget-object v0, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->setFileName(Ljava/lang/String;)V

    .line 113
    iget-object v0, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->thumbnail:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->originalPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/bean/YiCameraThumb;->fix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->thumbnail:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->setImageUri(Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->setItemTypeStyle(Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;)V

    .line 116
    iget v0, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->progress:I

    iget v1, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileSize:I

    invoke-direct {p0, v0, v1}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->a(II)V

    .line 117
    invoke-direct {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->setDownloadDes(Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->setTaskMode(Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;)V

    return-void
.end method

.method public setSelectMode(Z)V
    .locals 3

    .line 219
    iput-boolean p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->q:Z

    .line 220
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->d:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 222
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->c:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setTaskSelect(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->d:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->d:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 215
    :goto_0
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/view/DownloadAlbumItem;->c:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
