.class public Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;
.super Lcom/xiaoyi/mirrorlesscamera/activity/BaseActivity;
.source "MasterLearnDetailActivity.java"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Lcom/xiaoyi/mirrorlesscamera/widget/PullScrollView;

.field private G:I

.field private H:Landroid/graphics/drawable/Drawable;

.field private I:I

.field private J:I

.field private K:Landroid/app/ActionBar;

.field private L:Lcom/xiaoyi/mirrorlesscamera/http/b/a;

.field private M:I

.field private N:Lcom/golshadi/majid/b/a;

.field private O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private T:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private U:Landroid/graphics/Typeface;

.field private V:Landroid/widget/RelativeLayout;

.field private W:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

.field private X:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Y:Ljava/lang/String;

.field private Z:Z

.field private aa:Lcom/xiaoyi/mirrorlesscamera/fragment/LoadingDialog;

.field private ab:Ljava/lang/String;

.field private ac:Lcom/golshadi/majid/report/a/a;

.field private final ad:I

.field private final ae:I

.field private final af:I

.field private ag:Landroid/os/Handler;

.field private ah:Lcom/xiaoyi/mirrorlesscamera/fragment/PaymentSelectFragment$a;

.field private ai:Lcom/xiaoyi/mirrorlesscamera/a/c;

.field private aj:I

.field private ak:Ljava/lang/Runnable;

.field e:Ljava/lang/CharSequence;

.field private final f:I

.field private final g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private k:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private l:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/BaseActivity;-><init>()V

    const/16 v0, 0x64

    .line 79
    iput v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->f:I

    const/16 v0, 0x65

    .line 80
    iput v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->g:I

    const/16 v0, 0xff

    .line 92
    iput v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->G:I

    .line 98
    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/http/b/a;->a()Lcom/xiaoyi/mirrorlesscamera/http/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->L:Lcom/xiaoyi/mirrorlesscamera/http/b/a;

    .line 114
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_NONE:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->W:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    const-string v0, ""

    .line 116
    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->Y:Ljava/lang/String;

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->Z:Z

    .line 509
    new-instance v1, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$19;

    invoke-direct {v1, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$19;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V

    iput-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ac:Lcom/golshadi/majid/report/a/a;

    const/4 v1, 0x1

    .line 775
    iput v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ad:I

    const/4 v1, -0x1

    .line 776
    iput v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ae:I

    .line 777
    iput v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->af:I

    .line 779
    new-instance v0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$5;

    invoke-direct {v0, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$5;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ag:Landroid/os/Handler;

    .line 905
    new-instance v0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$7;

    invoke-direct {v0, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$7;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ah:Lcom/xiaoyi/mirrorlesscamera/fragment/PaymentSelectFragment$a;

    .line 912
    new-instance v0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$8;

    invoke-direct {v0, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$8;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ai:Lcom/xiaoyi/mirrorlesscamera/a/c;

    .line 928
    new-instance v0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$9;

    invoke-direct {v0, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$9;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ak:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic A(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)I
    .locals 2

    .line 77
    iget v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->aj:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->aj:I

    return v0
.end method

.method private A()V
    .locals 2

    const v0, 0x7f0d02e0

    .line 980
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/fragment/LoadingDialog;->a(Ljava/lang/String;Z)Lcom/xiaoyi/mirrorlesscamera/fragment/LoadingDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->aa:Lcom/xiaoyi/mirrorlesscamera/fragment/LoadingDialog;

    .line 981
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->aa:Lcom/xiaoyi/mirrorlesscamera/fragment/LoadingDialog;

    new-instance v1, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$11;

    invoke-direct {v1, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$11;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/fragment/LoadingDialog;->a(Lcom/xiaoyi/mirrorlesscamera/fragment/LoadingDialog$a;)V

    .line 992
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->aa:Lcom/xiaoyi/mirrorlesscamera/fragment/LoadingDialog;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->d:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/fragment/LoadingDialog;->a(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method

.method private B()V
    .locals 2

    .line 996
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->aa:Lcom/xiaoyi/mirrorlesscamera/fragment/LoadingDialog;

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->aa:Lcom/xiaoyi/mirrorlesscamera/fragment/LoadingDialog;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->d:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/fragment/LoadingDialog;->b(Landroid/support/v4/app/FragmentManager;)V

    :cond_0
    return-void
.end method

.method static synthetic B(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->B()V

    return-void
.end method

.method static synthetic a(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->J:I

    return p1
.end method

.method static synthetic a(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->a:Lcom/xiaoyi/mirrorlesscamera/common/s;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->b:Landroid/content/Context;

    const v2, 0x7f050026

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/common/s;->b(I)V

    .line 135
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->a:Lcom/xiaoyi/mirrorlesscamera/common/s;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/common/s;->a(F)V

    .line 137
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->i()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f07028e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 138
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->i()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$1;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->k()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070099

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 145
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->k()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$12;

    invoke-direct {v1, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$12;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    iget-object v0, v0, Lcom/xiaoyi/mirrorlesscamera/bean/User;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->k()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->j()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->H:Landroid/graphics/drawable/Drawable;

    .line 170
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->H:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 171
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->K:Landroid/app/ActionBar;

    .line 172
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->K:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(Lcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 2

    .line 457
    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 458
    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x43700000    # 240.0f

    invoke-static {v1}, Lcom/xiaoyi/mirrorlesscamera/b/f;->a(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 459
    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setAspectRatio(F)V

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "res://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f070283

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 463
    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getHierarchy()Lcom/facebook/drawee/c/b;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/generic/a;

    .line 464
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/a;->c()Lcom/facebook/drawee/drawable/n$b;

    move-result-object v0

    .line 465
    sget-object v1, Lcom/facebook/drawee/drawable/n$b;->f:Lcom/facebook/drawee/drawable/n$b;

    if-eq v0, v1, :cond_0

    .line 466
    sget-object v0, Lcom/facebook/drawee/drawable/n$b;->f:Lcom/facebook/drawee/drawable/n$b;

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/generic/a;->a(Lcom/facebook/drawee/drawable/n$b;)V

    .line 469
    :cond_0
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->c()V

    return-void
.end method

.method static synthetic a(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;Lcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->a(Lcom/facebook/drawee/view/SimpleDraweeView;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 729
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "category_master_learn"

    const-string v1, "TemplateDownload"

    const-string v2, "TemplateName"

    .line 730
    invoke-static {v0, v1, v2, p1}, Lcom/xiaoyi/mirrorlesscamera/common/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_0
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->v()V

    .line 734
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->W:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_NONE:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    if-ne p1, v0, :cond_1

    .line 735
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->r()V

    goto :goto_0

    .line 737
    :cond_1
    new-instance p1, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$4;

    invoke-direct {p1, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$4;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V

    invoke-static {p1}, Lcom/yiaction/common/util/b;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "picType"

    .line 630
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "payStatus"

    .line 631
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    if-nez v0, :cond_1

    .line 632
    :cond_0
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    invoke-virtual {p1, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setState(I)V

    .line 633
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    const v0, 0x7f0d01e6

    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const-string v0, "0"

    .line 636
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v3, "isDown"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v2, 0x7f0d01e7

    goto :cond_2

    .line 637
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    invoke-virtual {p1, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setState(I)V

    .line 638
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    invoke-virtual {p0, v2}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 639
    sget-object p1, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_NONE:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->W:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    return-void

    :cond_2
    const-string v0, "picId"

    .line 643
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 644
    iget-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->T:Ljava/util/Map;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->T:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 645
    iget-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->T:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "master_learn_file"

    .line 646
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "master_learn_file"

    .line 647
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    new-instance p1, Ljava/io/File;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 650
    sget-object p1, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_NONE:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->W:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    goto :goto_0

    .line 652
    :cond_3
    sget-object p1, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_MASTERlEARN_FILE:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->W:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    .line 654
    :goto_0
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->W:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_NONE:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    if-ne p1, v0, :cond_4

    .line 655
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    invoke-virtual {p1, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setState(I)V

    .line 656
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    const v0, 0x7f0d01ea

    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 658
    :cond_4
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    invoke-virtual {p1, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setState(I)V

    .line 659
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    invoke-virtual {p0, v2}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 663
    :cond_5
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    invoke-virtual {p0, v2}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 664
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    invoke-virtual {p1, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setState(I)V

    .line 665
    sget-object p1, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_ALL:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->W:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    :goto_1
    return-void
.end method

.method private a(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f0d01cb

    .line 813
    invoke-static {p1}, Lcom/xiaoyi/mirrorlesscamera/b/q;->a(I)V

    .line 814
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    invoke-virtual {p1, v0}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setState(I)V

    .line 815
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    const v0, 0x7f0d01ea

    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0d01ca

    .line 817
    invoke-static {p1}, Lcom/xiaoyi/mirrorlesscamera/b/q;->a(I)V

    .line 818
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    invoke-virtual {p1, v0}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setState(I)V

    .line 819
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setProgress(F)V

    .line 820
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->Z:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->I:I

    return p1
.end method

.method static synthetic b(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->T:Ljava/util/Map;

    return-object p1
.end method

.method private b()V
    .locals 3

    const v0, 0x7f080232

    .line 176
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->V:Landroid/widget/RelativeLayout;

    const v0, 0x7f0800c7

    .line 177
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaoyi/mirrorlesscamera/widget/PullScrollView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->F:Lcom/xiaoyi/mirrorlesscamera/widget/PullScrollView;

    .line 179
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_masterlearn"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->h:Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "come_from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->R:Ljava/lang/String;

    .line 181
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/i;->a:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->h:Ljava/lang/String;

    new-instance v2, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$13;

    invoke-direct {v2, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$13;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V

    .line 182
    invoke-virtual {v2}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$13;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 181
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "picId"

    .line 183
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 185
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->i:Ljava/lang/String;

    :cond_0
    const-string v1, "downFileName"

    .line 187
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->Q:Ljava/lang/String;

    const v0, 0x7f0801ef

    .line 189
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0801f7

    .line 190
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f080051

    .line 191
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0802d3

    .line 193
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f080181

    .line 194
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f0800c6

    .line 195
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f080052

    .line 196
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->p:Landroid/widget/TextView;

    const v0, 0x7f08004f

    .line 197
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f080306

    .line 200
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f0802fb

    .line 201
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f080301

    .line 202
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f080305

    .line 203
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f0802fe

    .line 204
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f0802fc

    .line 205
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f080303

    .line 206
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->x:Landroid/widget/TextView;

    const v0, 0x7f0802fd

    .line 208
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->y:Landroid/widget/TextView;

    const v0, 0x7f0802fa

    .line 209
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->z:Landroid/widget/TextView;

    const v0, 0x7f0802f7

    .line 210
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->A:Landroid/widget/TextView;

    const v0, 0x7f08030f

    .line 211
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->B:Landroid/widget/TextView;

    const v0, 0x7f0802ff

    .line 212
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->C:Landroid/widget/TextView;

    const v0, 0x7f080307

    .line 213
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->D:Landroid/widget/TextView;

    const v0, 0x7f080308

    .line 214
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->E:Landroid/widget/TextView;

    const v0, 0x7f080215

    .line 217
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    .line 218
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lcom/xiaoyi/mirrorlesscamera/b/f;->b(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setTextSize(F)V

    .line 219
    const-class v0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    const v2, 0x7f0d01e7

    invoke-virtual {p0, v2}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setState(I)V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    const v2, 0x7f0d01ea

    invoke-virtual {p0, v2}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setState(I)V

    .line 226
    :goto_0
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setMaxProgress(I)V

    return-void
.end method

.method static synthetic b(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->J:I

    return p0
.end method

.method static synthetic c(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->aj:I

    return p1
.end method

.method private c()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$14;

    invoke-direct {v1, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$14;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->post(Ljava/lang/Runnable;)Z

    .line 239
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->F:Lcom/xiaoyi/mirrorlesscamera/widget/PullScrollView;

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/widget/PullScrollView;->a()V

    .line 241
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->F:Lcom/xiaoyi/mirrorlesscamera/widget/PullScrollView;

    new-instance v1, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$15;

    invoke-direct {v1, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$15;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/PullScrollView;->setOnScrollListener(Lcom/xiaoyi/mirrorlesscamera/widget/PullScrollView$a;)V

    return-void
.end method

.method private d()V
    .locals 5

    const/4 v0, 0x2

    .line 250
    new-array v0, v0, [I

    .line 251
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->V:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 252
    aget v0, v0, v1

    iget v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->J:I

    sub-int/2addr v0, v1

    .line 256
    iget v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->I:I

    if-gtz v1, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v1, v0, 0x64

    .line 260
    iget v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->I:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    .line 262
    iget v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->G:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    const/4 v4, 0x0

    if-lez v0, :cond_2

    .line 264
    iget v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->G:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    cmpg-float v2, v0, v4

    if-gez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 268
    :cond_1
    iget v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->G:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    .line 269
    iget v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->G:I

    int-to-float v0, v0

    goto :goto_0

    .line 272
    :cond_2
    iget v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->G:I

    int-to-float v0, v0

    .line 274
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->H:Landroid/graphics/drawable/Drawable;

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 275
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    div-float/2addr v1, v3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    cmpg-float v2, v1, v4

    if-gez v2, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    cmpl-float v2, v1, v0

    if-lez v2, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    .line 285
    :goto_1
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->a:Lcom/xiaoyi/mirrorlesscamera/common/s;

    invoke-virtual {v1, v0}, Lcom/xiaoyi/mirrorlesscamera/common/s;->a(F)V

    return-void
.end method

.method static synthetic d(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->d()V

    return-void
.end method

.method static synthetic e(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->i:Ljava/lang/String;

    return-object p0
.end method

.method private e()V
    .locals 5

    .line 301
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    iget-object v0, v0, Lcom/xiaoyi/mirrorlesscamera/bean/User;->userId:Ljava/lang/String;

    .line 303
    :goto_0
    new-instance v1, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$16;

    invoke-direct {v1, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$16;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V

    .line 304
    invoke-virtual {v1}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$16;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 306
    :try_start_0
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->L:Lcom/xiaoyi/mirrorlesscamera/http/b/a;

    iget-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/xiaoyi/mirrorlesscamera/http/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    .line 308
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "data"

    const/4 v4, 0x0

    .line 309
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_1

    const/16 v3, 0x4e20

    if-ne v0, v3, :cond_2

    .line 311
    :cond_1
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/i;->a:Lcom/google/gson/Gson;

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    .line 312
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 313
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->w()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 321
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    const v0, 0x7f0d02e7

    .line 319
    invoke-static {v0}, Lcom/xiaoyi/mirrorlesscamera/b/q;->c(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic f(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->w()V

    return-void
.end method

.method static synthetic g(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->e()V

    return-void
.end method

.method static synthetic h(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->p()V

    return-void
.end method

.method static synthetic i(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->t()V

    return-void
.end method

.method static synthetic j(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->Z:Z

    return p0
.end method

.method static synthetic k(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->c()V

    return-void
.end method

.method static synthetic l(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-object p0
.end method

.method static synthetic m(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->M:I

    return p0
.end method

.method static synthetic n(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)Landroid/os/Handler;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ag:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic o(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)Lcom/golshadi/majid/report/a/a;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ac:Lcom/golshadi/majid/report/a/a;

    return-object p0
.end method

.method private o()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d01d8

    .line 328
    invoke-static {v0}, Lcom/xiaoyi/mirrorlesscamera/b/q;->a(I)V

    .line 329
    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/db/a;->b()V

    .line 330
    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/db/a;->c()V

    .line 331
    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/db/a;->d()V

    .line 332
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->finish()V

    return-void

    .line 335
    :cond_0
    new-instance v0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$17;

    invoke-direct {v0, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$17;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 359
    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$17;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private p()V
    .locals 2

    const-string v0, "MasterLearnDetailActivity"

    const-string v1, "\u5237\u65b0\u6a21\u677f\u8be6\u60c5"

    .line 366
    invoke-static {v0, v1}, Lcom/xiaoyi/util/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->m()V

    .line 368
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->B()V

    .line 369
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->q()V

    .line 371
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-direct {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->a(Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 374
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-direct {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->a(Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 375
    const-class v0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->x()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic p(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->s()V

    return-void
.end method

.method static synthetic q(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)Lcom/xiaoyi/mirrorlesscamera/http/b/a;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->L:Lcom/xiaoyi/mirrorlesscamera/http/b/a;

    return-object p0
.end method

.method private q()V
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v2, "picUrl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->a(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v2, "shadowUrl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->a(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v2, "picName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v2, "label"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v2, "description"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v2, "author"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v2, "exposureProgram"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v2, "fNumber"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v2, "isoSpeedRatings"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v2, "meteringMode"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v2, "focusMode"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v2, "flash"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v2, "lensModel"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v2, "focalLength"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v2, "exposureTime"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v2, "exposureBiasValue"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v2, "lightSource"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v2, "draw"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v2, "model"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->E:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v2, "module"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v1, "dsId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->Y:Ljava/lang/String;

    return-void
.end method

.method private r()V
    .locals 8

    .line 485
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    const v1, 0x7f0d01e8

    invoke-virtual {p0, v1}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setState(I)V

    .line 493
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->N:Lcom/golshadi/majid/b/a;

    if-nez v0, :cond_1

    .line 494
    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/common/j;->a()Lcom/xiaoyi/mirrorlesscamera/common/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/common/j;->b()Lcom/golshadi/majid/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->N:Lcom/golshadi/majid/b/a;

    .line 495
    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/common/j;->a()Lcom/xiaoyi/mirrorlesscamera/common/j;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ac:Lcom/golshadi/majid/report/a/a;

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/common/j;->a(Lcom/golshadi/majid/report/a/a;)V

    .line 498
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    nop

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->P:Ljava/lang/String;

    .line 500
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->N:Lcom/golshadi/majid/b/a;

    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->P:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v3, "downUrl"

    .line 501
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    sget-object v5, Lcom/xiaoyi/mirrorlesscamera/common/a;->d:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 500
    invoke-virtual/range {v1 .. v7}, Lcom/golshadi/majid/b/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)I

    move-result v0

    iput v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->M:I

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->N:Lcom/golshadi/majid/b/a;

    iget v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->M:I

    invoke-virtual {v0, v1}, Lcom/golshadi/majid/b/a;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 505
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void

    .line 486
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ag:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic r(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->o()V

    return-void
.end method

.method private s()V
    .locals 5

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaoyi/mirrorlesscamera/common/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xiaoyi/mirrorlesscamera/common/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->P:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaoyi/mirrorlesscamera/b/g;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaoyi/mirrorlesscamera/b/g;->i(Ljava/lang/String;)Z

    .line 598
    :cond_0
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->X:Ljava/util/Map;

    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/xiaoyi/mirrorlesscamera/db/a;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic s(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->u()V

    return-void
.end method

.method static synthetic t(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    return-object p0
.end method

.method private t()V
    .locals 4

    .line 670
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    goto :cond_1

    .line 671
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->b:Landroid/content/Context;

    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/common/a;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Lcom/xiaoyi/mirrorlesscamera/activity/LoginFacebookActivity;

    goto :goto_0

    :cond_0
    const-class v2, Lcom/xiaoyi/mirrorlesscamera/activity/LoginActivity;

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x65

    .line 672
    invoke-virtual {p0, v0, v1}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 675
    :cond_1
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/q;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 676
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    invoke-virtual {v1}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->getCurrentText()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0d01ea

    invoke-virtual {p0, v2}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 677
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "category_master_learn"

    const-string v2, "TemplateTry"

    const-string v3, "TemplateName"

    .line 678
    invoke-static {v1, v2, v3, v0}, Lcom/xiaoyi/mirrorlesscamera/common/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :cond_2
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->T:Ljava/util/Map;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->T:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->T:Ljava/util/Map;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 682
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "downFileName"

    .line 683
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->Q:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "master_learn_file"

    .line 684
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->T:Ljava/util/Map;

    iget-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->i:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "master_learn_file"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    new-instance v1, Lcom/xiaoyi/mirrorlesscamera/view/j;

    invoke-direct {v1, v0}, Lcom/xiaoyi/mirrorlesscamera/view/j;-><init>(Ljava/util/Map;)V

    .line 686
    new-instance v0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$2;

    invoke-direct {v0, p0, v1}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$2;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;Lcom/xiaoyi/mirrorlesscamera/view/j;)V

    sput-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->c:Ljava/util/List;

    .line 691
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->b:Landroid/content/Context;

    const-class v2, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 693
    :cond_3
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    invoke-virtual {v1}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->getCurrentText()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0d01e6

    invoke-virtual {p0, v2}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 694
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->y()V

    goto :goto_1

    .line 697
    :cond_4
    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/common/u;->b()Lcom/xiaoyi/mirrorlesscamera/common/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaoyi/mirrorlesscamera/common/u;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 698
    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/common/u;->b()Lcom/xiaoyi/mirrorlesscamera/common/u;

    move-result-object v0

    new-instance v1, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$3;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/xiaoyi/mirrorlesscamera/common/u;->a(Landroid/support/v4/app/FragmentActivity;Lcom/xiaoyi/mirrorlesscamera/common/u$a;)V

    goto :goto_1

    .line 723
    :cond_5
    invoke-direct {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->a(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic u(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ab:Ljava/lang/String;

    return-object p0
.end method

.method private u()V
    .locals 6

    const/4 v0, -0x1

    .line 749
    :try_start_0
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->L:Lcom/xiaoyi/mirrorlesscamera/http/b/a;

    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaoyi/mirrorlesscamera/http/b/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 750
    sget-object v2, Lcom/xiaoyi/mirrorlesscamera/common/i;->a:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->h:Ljava/lang/String;

    .line 751
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->W:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    sget-object v3, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_ALL:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->W:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    sget-object v3, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_MASTERlEARN_FILE:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->W:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    sget-object v3, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_OTHER_FILE:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 765
    :cond_0
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    iget-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->T:Ljava/util/Map;

    iget-object v5, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->i:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "master_learn_file"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/xiaoyi/mirrorlesscamera/db/a;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 766
    sget-object v1, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    iget-object v1, v1, Lcom/xiaoyi/mirrorlesscamera/bean/User;->userId:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Lcom/xiaoyi/mirrorlesscamera/db/a;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->T:Ljava/util/Map;

    .line 767
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ag:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3

    .line 753
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->P:Ljava/lang/String;

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaoyi/mirrorlesscamera/common/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->P:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 755
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->L:Lcom/xiaoyi/mirrorlesscamera/http/b/a;

    iget-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v5, "downUrl"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/xiaoyi/mirrorlesscamera/http/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 757
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->s()V

    .line 758
    sget-object v1, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    if-nez v1, :cond_3

    const-string v1, ""

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    iget-object v1, v1, Lcom/xiaoyi/mirrorlesscamera/bean/User;->userId:Ljava/lang/String;

    :goto_2
    invoke-static {v1}, Lcom/xiaoyi/mirrorlesscamera/db/a;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->T:Ljava/util/Map;

    .line 759
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ag:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 761
    :cond_4
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ag:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 770
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 771
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ag:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_3
    return-void
.end method

.method static synthetic v(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)Lcom/xiaoyi/mirrorlesscamera/a/c;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ai:Lcom/xiaoyi/mirrorlesscamera/a/c;

    return-object p0
.end method

.method private v()V
    .locals 2

    .line 805
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->getCurrentText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->e:Ljava/lang/CharSequence;

    .line 806
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ag:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 807
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 808
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private w()V
    .locals 11

    .line 829
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/i;->a:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->h:Ljava/lang/String;

    new-instance v2, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$6;

    invoke-direct {v2, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$6;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V

    .line 830
    invoke-virtual {v2}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 829
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->X:Ljava/util/Map;

    .line 831
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->X:Ljava/util/Map;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->X:Ljava/util/Map;

    const-string v1, "listUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 836
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v2, "picUrl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 837
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v3, "shadowUrl"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 839
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_itemImg.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 840
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_detailImg1.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 841
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->i:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_detailImg2.png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 843
    sget-object v6, Lcom/xiaoyi/mirrorlesscamera/common/a;->f:Ljava/lang/String;

    .line 845
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_3

    const-string v7, "file://"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 846
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, v4, v6}, Lcom/xiaoyi/mirrorlesscamera/b/h;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 847
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 848
    iget-object v4, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v7, "picUrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    goto :goto_0

    .line 851
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v4, v6}, Lcom/xiaoyi/mirrorlesscamera/b/h;->b(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v3, v6}, Lcom/xiaoyi/mirrorlesscamera/b/h;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 855
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 856
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->X:Ljava/util/Map;

    const-string v3, "listUrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 858
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v3, v6}, Lcom/xiaoyi/mirrorlesscamera/b/h;->b(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :cond_3
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "file://"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 862
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v5, v6}, Lcom/xiaoyi/mirrorlesscamera/b/h;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 863
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 864
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    const-string v2, "shadowUrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 867
    :cond_4
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v5, v6}, Lcom/xiaoyi/mirrorlesscamera/b/h;->b(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move v8, v9

    :goto_2
    if-eqz v8, :cond_6

    .line 872
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->X:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/db/a;->a(Ljava/util/Map;Ljava/util/Map;)V

    :cond_6
    return-void

    :cond_7
    :goto_3
    return-void
.end method

.method static synthetic w(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->A()V

    return-void
.end method

.method static synthetic x(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ak:Ljava/lang/Runnable;

    return-object p0
.end method

.method private x()V
    .locals 2

    .line 877
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setState(I)V

    .line 878
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    const v1, 0x7f0d01e7

    invoke-virtual {p0, v1}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 879
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_ALL:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_NONE:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    :goto_0
    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->W:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    return-void
.end method

.method private y()V
    .locals 2

    .line 899
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->d:Landroid/support/v4/app/FragmentManager;

    invoke-static {v0}, Lcom/xiaoyi/mirrorlesscamera/fragment/PaymentSelectFragment;->a(Landroid/support/v4/app/FragmentManager;)Lcom/xiaoyi/mirrorlesscamera/fragment/PaymentSelectFragment;

    move-result-object v0

    const-string v1, "1"

    .line 900
    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/fragment/PaymentSelectFragment;->a(Ljava/lang/String;)Lcom/xiaoyi/mirrorlesscamera/fragment/PaymentSelectFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ah:Lcom/xiaoyi/mirrorlesscamera/fragment/PaymentSelectFragment$a;

    .line 901
    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/fragment/PaymentSelectFragment;->a(Lcom/xiaoyi/mirrorlesscamera/fragment/PaymentSelectFragment$a;)Lcom/xiaoyi/mirrorlesscamera/fragment/PaymentSelectFragment;

    move-result-object v0

    .line 902
    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/fragment/PaymentSelectFragment;->a()V

    return-void
.end method

.method static synthetic y(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->z()V

    return-void
.end method

.method static synthetic z(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->aj:I

    return p0
.end method

.method private z()V
    .locals 4

    .line 936
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    iget-object v0, v0, Lcom/xiaoyi/mirrorlesscamera/bean/User;->userId:Ljava/lang/String;

    .line 937
    :goto_0
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->L:Lcom/xiaoyi/mirrorlesscamera/http/b/a;

    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->i:Ljava/lang/String;

    new-instance v3, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$10;

    invoke-direct {v3, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$10;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/xiaoyi/mirrorlesscamera/http/b/a;->c(Ljava/lang/String;Ljava/lang/String;Lcom/zhy/http/okhttp/b/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V
    .locals 3

    .line 411
    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getHierarchy()Lcom/facebook/drawee/c/b;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/a;

    .line 412
    invoke-virtual {v0}, Lcom/facebook/drawee/generic/a;->c()Lcom/facebook/drawee/drawable/n$b;

    move-result-object v1

    .line 413
    sget-object v2, Lcom/facebook/drawee/drawable/n$b;->g:Lcom/facebook/drawee/drawable/n$b;

    if-eq v1, v2, :cond_0

    .line 414
    sget-object v1, Lcom/facebook/drawee/drawable/n$b;->g:Lcom/facebook/drawee/drawable/n$b;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/a;->a(Lcom/facebook/drawee/drawable/n$b;)V

    .line 417
    :cond_0
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/b;->a()Lcom/facebook/drawee/backends/pipeline/d;

    move-result-object v0

    .line 418
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/facebook/drawee/backends/pipeline/d;->a(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/d;

    .line 419
    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getController()Lcom/facebook/drawee/c/a;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/facebook/drawee/backends/pipeline/d;->a(Lcom/facebook/drawee/c/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 420
    new-instance p2, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$18;

    invoke-direct {p2, p0, p1}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity$18;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    invoke-virtual {v0, p2}, Lcom/facebook/drawee/backends/pipeline/d;->a(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 453
    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/d;->k()Lcom/facebook/drawee/controller/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/c/a;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 884
    invoke-super {p0, p1, p2, p3}, Lcom/xiaoyi/mirrorlesscamera/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x64

    if-ne p1, p3, :cond_0

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    .line 886
    sget-object p1, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    if-nez p1, :cond_2

    .line 887
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->finish()V

    goto :goto_1

    :cond_0
    const/16 p2, 0x65

    if-ne p1, p2, :cond_2

    .line 890
    sget-object p1, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    iget-object p1, p1, Lcom/xiaoyi/mirrorlesscamera/bean/User;->userId:Ljava/lang/String;

    .line 891
    :goto_0
    iget-object p2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ab:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 892
    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/db/a;->b()V

    .line 893
    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/db/a;->c()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080215

    if-eq v0, v1, :cond_2

    const v1, 0x7f080296

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 291
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 292
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    goto :goto_1

    .line 295
    :cond_2
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->t()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a003c

    .line 124
    invoke-virtual {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->setContentView(I)V

    .line 126
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "fonts/DINCond-Light.otf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->U:Landroid/graphics/Typeface;

    .line 128
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->a()V

    .line 129
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->b()V

    .line 130
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->c()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 474
    invoke-super {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/BaseActivity;->onDestroy()V

    .line 475
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->F:Lcom/xiaoyi/mirrorlesscamera/widget/PullScrollView;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->F:Lcom/xiaoyi/mirrorlesscamera/widget/PullScrollView;

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/widget/PullScrollView;->a()V

    .line 478
    :cond_0
    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/common/j;->a()Lcom/xiaoyi/mirrorlesscamera/common/j;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ac:Lcom/golshadi/majid/report/a/a;

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/common/j;->b(Lcom/golshadi/majid/report/a/a;)V

    .line 479
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ag:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ag:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 603
    invoke-super {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/BaseActivity;->onResume()V

    .line 604
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->d()V

    .line 606
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    iget-object v0, v0, Lcom/xiaoyi/mirrorlesscamera/bean/User;->userId:Ljava/lang/String;

    .line 607
    :goto_0
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ab:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 608
    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ab:Ljava/lang/String;

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->ab:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaoyi/mirrorlesscamera/db/a;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->T:Ljava/util/Map;

    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->Q:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->Q:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->S:Ljava/util/Map;

    .line 614
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->q()V

    .line 615
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setState(I)V

    .line 616
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->O:Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;

    const v1, 0x7f0d01c0

    invoke-virtual {p0, v1}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/ProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 617
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->k()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 619
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->g(Z)Lcom/xiaoyi/mirrorlesscamera/fragment/LoadingDialog;

    .line 620
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;->o()V

    :goto_1
    return-void
.end method
