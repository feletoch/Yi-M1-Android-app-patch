.class public Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;
.super Landroid/widget/FrameLayout;
.source "AlbumItem.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/CheckBox;

.field private e:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private f:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->a(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->a(Landroid/content/Context;)V

    .line 60
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    invoke-direct {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->a(Landroid/content/Context;)V

    .line 66
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->a()V

    return-void
.end method

.method static synthetic a(Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;)Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->f:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    return-object p0
.end method

.method private a()V
    .locals 1

    const v0, 0x7f0801c1

    .line 75
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->c:Landroid/view/View;

    const v0, 0x7f080094

    .line 76
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->d:Landroid/widget/CheckBox;

    const v0, 0x7f0800df

    .line 77
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->a:Landroid/widget/TextView;

    const v0, 0x7f08024b

    .line 78
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0801b1

    .line 79
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->j:Landroid/widget/ImageView;

    const v0, 0x7f080096

    .line 80
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->k:Landroid/view/View;

    const v0, 0x7f080311

    .line 81
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->l:Landroid/widget/ImageView;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 70
    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->b:Landroid/content/Context;

    const v0, 0x7f0a0059

    .line 71
    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private a(Landroid/net/Uri;II)V
    .locals 1

    .line 174
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/facebook/imagepipeline/common/d;

    invoke-direct {v0, p2, p3}, Lcom/facebook/imagepipeline/common/d;-><init>(II)V

    .line 175
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Lcom/facebook/imagepipeline/common/d;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->f:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    iget-object p2, p2, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->exifInterface:Lcom/xiaoyi/mirrorlesscamera/bean/YiExifInterface;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->f:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    iget-object p2, p2, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->exifInterface:Lcom/xiaoyi/mirrorlesscamera/bean/YiExifInterface;

    iget p2, p2, Lcom/xiaoyi/mirrorlesscamera/bean/YiExifInterface;->orientation:I

    .line 176
    :goto_0
    invoke-static {p2}, Lcom/xiaoyi/mirrorlesscamera/b/h;->a(I)Lcom/facebook/imagepipeline/common/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Lcom/facebook/imagepipeline/common/e;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 177
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 178
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/b;->a()Lcom/facebook/drawee/backends/pipeline/d;

    move-result-object p2

    iget-object p3, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 179
    invoke-virtual {p3}, Lcom/facebook/drawee/view/SimpleDraweeView;->getController()Lcom/facebook/drawee/c/a;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/facebook/drawee/backends/pipeline/d;->a(Lcom/facebook/drawee/c/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p2

    check-cast p2, Lcom/facebook/drawee/backends/pipeline/d;

    .line 180
    invoke-virtual {p2, p1}, Lcom/facebook/drawee/backends/pipeline/d;->b(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/d;

    new-instance p2, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem$3;

    invoke-direct {p2, p0}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem$3;-><init>(Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;)V

    .line 181
    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/d;->a(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/d;

    .line 187
    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/d;->k()Lcom/facebook/drawee/controller/a;

    move-result-object p1

    .line 188
    iget-object p2, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/c/a;)V

    return-void
.end method

.method private a(Landroid/view/View;F)V
    .locals 2

    .line 267
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 269
    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 270
    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance v0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem$4;

    invoke-direct {v0, p0, p2}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem$4;-><init>(Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;F)V

    .line 271
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/drawee/controller/b;)V
    .locals 2

    .line 161
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/b;->a()Lcom/facebook/drawee/backends/pipeline/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 162
    invoke-virtual {v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getController()Lcom/facebook/drawee/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/d;->a(Lcom/facebook/drawee/c/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/d;

    .line 163
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->b(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/d;

    .line 164
    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/d;->a(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/d;

    .line 165
    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/d;->k()Lcom/facebook/drawee/controller/a;

    move-result-object p1

    .line 166
    iget-object p2, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/c/a;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;Landroid/net/Uri;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->setThumbnail2(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;Landroid/view/View;F)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->b(Landroid/view/View;F)V

    return-void
.end method

.method private b()V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->f:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    iget-boolean v1, v1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->isProtected:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem$5;->a:[I

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->f:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    iget-object v1, v1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileType:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    invoke-virtual {v1}, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 234
    :pswitch_0
    iget-boolean v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->h:Z

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->l:Landroid/widget/ImageView;

    const v1, 0x7f0702e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->l:Landroid/widget/ImageView;

    const v1, 0x7f0702e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 227
    :pswitch_1
    iget-boolean v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->h:Z

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->l:Landroid/widget/ImageView;

    const v1, 0x7f070303

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->l:Landroid/widget/ImageView;

    const v1, 0x7f070302

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 220
    :pswitch_2
    iget-boolean v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->h:Z

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->l:Landroid/widget/ImageView;

    const v1, 0x7f0702a9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->l:Landroid/widget/ImageView;

    const v1, 0x7f0702a8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 213
    :pswitch_3
    iget-boolean v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->h:Z

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->l:Landroid/widget/ImageView;

    const v1, 0x7f070305

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->l:Landroid/widget/ImageView;

    const v1, 0x7f070304

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 206
    :pswitch_4
    iget-boolean v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->h:Z

    if-eqz v0, :cond_5

    .line 207
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->l:Landroid/widget/ImageView;

    const v1, 0x7f0702f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 209
    :cond_5
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->l:Landroid/widget/ImageView;

    const v1, 0x7f0702f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 199
    :pswitch_5
    iget-boolean v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->h:Z

    if-eqz v0, :cond_6

    .line 200
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->l:Landroid/widget/ImageView;

    const v1, 0x7f0702f2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 202
    :cond_6
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->l:Landroid/widget/ImageView;

    const v1, 0x7f0702f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 196
    :pswitch_6
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/view/View;F)V
    .locals 0

    .line 290
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 291
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    return-void
.end method

.method private setThumbnail(I)V
    .locals 1

    .line 149
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(I)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->f:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    iget-object v0, v0, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->exifInterface:Lcom/xiaoyi/mirrorlesscamera/bean/YiExifInterface;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->f:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    iget-object v0, v0, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->exifInterface:Lcom/xiaoyi/mirrorlesscamera/bean/YiExifInterface;

    iget v0, v0, Lcom/xiaoyi/mirrorlesscamera/bean/YiExifInterface;->orientation:I

    .line 150
    :goto_0
    invoke-static {v0}, Lcom/xiaoyi/mirrorlesscamera/b/h;->a(I)Lcom/facebook/imagepipeline/common/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Lcom/facebook/imagepipeline/common/e;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 152
    new-instance v0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem$2;

    invoke-direct {v0, p0}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem$2;-><init>(Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;)V

    invoke-direct {p0, p1, v0}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/drawee/controller/b;)V

    return-void
.end method

.method private setThumbnail(Landroid/net/Uri;)V
    .locals 2

    .line 134
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->f:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    iget-object v1, v1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->exifInterface:Lcom/xiaoyi/mirrorlesscamera/bean/YiExifInterface;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->f:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    iget-object v1, v1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->exifInterface:Lcom/xiaoyi/mirrorlesscamera/bean/YiExifInterface;

    iget v1, v1, Lcom/xiaoyi/mirrorlesscamera/bean/YiExifInterface;->orientation:I

    .line 135
    :goto_0
    invoke-static {v1}, Lcom/xiaoyi/mirrorlesscamera/b/h;->a(I)Lcom/facebook/imagepipeline/common/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Lcom/facebook/imagepipeline/common/e;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 137
    new-instance v1, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem$1;-><init>(Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;Landroid/net/Uri;)V

    invoke-direct {p0, v0, v1}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/drawee/controller/b;)V

    return-void
.end method

.method private setThumbnail2(Landroid/net/Uri;)V
    .locals 2

    const/high16 v0, 0x42ac0000    # 86.0f

    .line 170
    invoke-static {v0}, Lcom/xiaoyi/mirrorlesscamera/b/f;->a(F)I

    move-result v1

    invoke-static {v0}, Lcom/xiaoyi/mirrorlesscamera/b/f;->a(F)I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->a(Landroid/net/Uri;II)V

    return-void
.end method


# virtual methods
.method public getAlbumFile()Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->f:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->g:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 253
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAlbumFile(Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;)V
    .locals 2

    .line 122
    iget v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->g:I

    iput v0, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->position:I

    .line 123
    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->f:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    .line 124
    iget-object v0, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->thumbnail:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->originalPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/bean/YiCameraThumb;->fix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->thumbnail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object p1, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->thumbnail:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->setThumbnail(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f07005d

    .line 126
    invoke-direct {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->setThumbnail(I)V

    :goto_0
    return-void
.end method

.method public setDownload(Z)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setItemSelected(Z)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 103
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 105
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->b()V

    return-void
.end method

.method public setNeedAnim(Z)V
    .locals 0

    .line 263
    iput-boolean p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->i:Z

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->g:I

    return-void
.end method

.method public setSelectedMode(Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 86
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->k:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getScaleX(Landroid/view/View;)F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->k:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getScaleY(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 87
    :cond_0
    iget-boolean v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->h:Z

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->k:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->a(Landroid/view/View;F)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->k:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->b(Landroid/view/View;F)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->k:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getScaleX(Landroid/view/View;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->k:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getScaleY(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->k:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->a(Landroid/view/View;F)V

    .line 96
    :cond_4
    :goto_0
    iput-boolean p1, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->h:Z

    .line 97
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/view/AlbumItem;->d:Landroid/widget/CheckBox;

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void
.end method
