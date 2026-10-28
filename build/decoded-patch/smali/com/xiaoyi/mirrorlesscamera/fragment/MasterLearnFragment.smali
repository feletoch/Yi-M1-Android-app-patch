.class public Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;
.super Lcom/xiaoyi/mirrorlesscamera/fragment/BaseFragment;
.source "MasterLearnFragment.java"

# interfaces
.implements Leu/davidea/flexibleadapter/b$b;
.implements Leu/davidea/flexibleadapter/b$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment$a;
    }
.end annotation


# instance fields
.field d:Landroid/view/View$OnClickListener;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/support/v7/widget/RecyclerView;

.field private i:Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaoyi/mirrorlesscamera/view/i;",
            ">;"
        }
    .end annotation
.end field

.field private k:Leu/davidea/flexibleadapter/b;

.field private l:Lcom/xiaoyi/mirrorlesscamera/http/b/a;

.field private final m:I

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaoyi/mirrorlesscamera/view/i;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private q:Landroid/view/View;

.field private r:Z

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/fragment/BaseFragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->j:Ljava/util/List;

    .line 59
    new-instance v0, Lcom/xiaoyi/mirrorlesscamera/http/b/a;

    invoke-direct {v0, p0}, Lcom/xiaoyi/mirrorlesscamera/http/b/a;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->l:Lcom/xiaoyi/mirrorlesscamera/http/b/a;

    const/16 v0, 0x64

    .line 60
    iput v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->m:I

    const-string v0, "defaultLanguage"

    .line 62
    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->o:Ljava/lang/String;

    const-string v0, "defaultAera"

    .line 63
    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->p:Ljava/lang/String;

    .line 413
    new-instance v0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment$6;

    invoke-direct {v0, p0}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment$6;-><init>(Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;)V

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;)Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->i:Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/xiaoyi/mirrorlesscamera/view/i;",
            ">;"
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz p2, :cond_1

    .line 243
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "dsId"

    .line 244
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dsId"

    .line 245
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "updatedTime"

    .line 246
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "updatedTime"

    .line 247
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 249
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const-string v2, "MasterLearnFragment"

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MasterLearnDetail to Save : DsId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "dsId"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaoyi/util/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v2, Lcom/xiaoyi/mirrorlesscamera/view/i;

    invoke-direct {v2, v1}, Lcom/xiaoyi/mirrorlesscamera/view/i;-><init>(Ljava/util/Map;)V

    .line 256
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static synthetic a(Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;Ljava/util/List;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaoyi/mirrorlesscamera/view/i;",
            ">;)V"
        }
    .end annotation

    .line 262
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    iget-object v0, v0, Lcom/xiaoyi/mirrorlesscamera/bean/User;->userId:Ljava/lang/String;

    .line 263
    :goto_0
    invoke-static {}, Lcom/xiaoyi/util/c;->a()Lcom/xiaoyi/util/c;

    move-result-object v1

    const-string v2, "MASTER_LEARN_DETAIL_LOCALE"

    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/b/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaoyi/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaoyi/mirrorlesscamera/view/i;

    .line 266
    invoke-virtual {v1}, Lcom/xiaoyi/mirrorlesscamera/view/i;->a()Ljava/util/Map;

    move-result-object v2

    const-string v3, "picId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 268
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 269
    iget-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->l:Lcom/xiaoyi/mirrorlesscamera/http/b/a;

    new-instance v4, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment$3;

    invoke-direct {v4, p0, v1, v2}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment$3;-><init>(Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;Lcom/xiaoyi/mirrorlesscamera/view/i;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v0, v4}, Lcom/xiaoyi/mirrorlesscamera/http/b/a;->c(Ljava/lang/String;Ljava/lang/String;Lcom/zhy/http/okhttp/b/a;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->r:Z

    return p1
.end method

.method private a(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "picType"

    .line 301
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->j:Ljava/util/List;

    return-object p0
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/xiaoyi/mirrorlesscamera/view/i;",
            ">;"
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 294
    invoke-direct {p0, v1}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->a(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    new-instance v2, Lcom/xiaoyi/mirrorlesscamera/view/i;

    invoke-direct {v2, v1}, Lcom/xiaoyi/mirrorlesscamera/view/i;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic b(Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;Ljava/util/List;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->c(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->n:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 306
    invoke-direct {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaoyi/mirrorlesscamera/db/a;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic d(Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;)Leu/davidea/flexibleadapter/b;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->k:Leu/davidea/flexibleadapter/b;

    return-object p0
.end method

.method private d(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 313
    invoke-direct {p0, v1}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->a(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private d()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->e:Landroid/view/View;

    const v1, 0x7f0801c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->f:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->e:Landroid/view/View;

    const v1, 0x7f0801c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->g:Landroid/widget/ImageView;

    .line 96
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic e(Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->i()V

    return-void
.end method

.method private f()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->e:Landroid/view/View;

    const v1, 0x7f080221

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->h:Landroid/support/v7/widget/RecyclerView;

    .line 101
    new-instance v0, Lcom/yiaction/common/util/YLinearLayoutManager;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->b:Landroid/support/v4/app/FragmentActivity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/yiaction/common/util/YLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 102
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 103
    new-instance v0, Leu/davidea/flexibleadapter/b;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->j:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Leu/davidea/flexibleadapter/b;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->k:Leu/davidea/flexibleadapter/b;

    .line 104
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->k:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 106
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->k:Leu/davidea/flexibleadapter/b;

    new-instance v1, Lcom/xiaoyi/mirrorlesscamera/view/g;

    invoke-direct {v1}, Lcom/xiaoyi/mirrorlesscamera/view/g;-><init>()V

    # offline catalog: no endless loading footer
    nop

    .line 107
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->k:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v0, v2}, Leu/davidea/flexibleadapter/b;->g(I)Leu/davidea/flexibleadapter/b;

    return-void
.end method

.method static synthetic f(Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->k()V

    return-void
.end method

.method static synthetic g(Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->f:Landroid/widget/ImageView;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->e:Landroid/view/View;

    const v1, 0x7f0802b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->i:Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;

    .line 113
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->i:Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;

    new-instance v1, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment$1;-><init>(Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;->setOnRefreshListener(Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout$b;)V

    return-void
.end method

.method static synthetic h(Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->g:Landroid/widget/ImageView;

    return-object p0
.end method

.method private h()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->i()V

    return-void
.end method

.method private i()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->i:Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;->setEnabled(Z)V

    .line 321
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->i:Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;->d()V

    return-void
.end method

.method static synthetic i(Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->r:Z

    return p0
.end method

.method private j()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->i()V

    return-void
.end method

.method static synthetic j(Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->h()V

    return-void
.end method

.method private k()V
    .locals 2

    .line 383
    new-instance v0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment$5;

    invoke-direct {v0, p0}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment$5;-><init>(Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 404
    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->q:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->q:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 326
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->j()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->q:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->q:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d(I)Z
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaoyi/mirrorlesscamera/view/i;

    .line 332
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->b:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_masterlearn"

    .line 333
    sget-object v2, Lcom/xiaoyi/mirrorlesscamera/common/i;->a:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Lcom/xiaoyi/mirrorlesscamera/view/i;->a()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "come_from"

    .line 334
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1, v0}, Lcom/xiaoyi/mirrorlesscamera/b/k;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "defaultAera"

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->r:Z

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/common/a;->e()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->r:Z

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 81
    iget-object p3, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->e:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0a0084

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->e:Landroid/view/View;

    .line 84
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->d()V

    .line 85
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->f()V

    .line 86
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->g()V

    .line 87
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->e:Landroid/view/View;

    const p2, 0x7f0801e2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->q:Landroid/view/View;

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->e:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 409
    invoke-super {p0}, Lcom/xiaoyi/mirrorlesscamera/fragment/BaseFragment;->onDestroy()V

    .line 410
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->l:Lcom/xiaoyi/mirrorlesscamera/http/b/a;

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/http/b/a;->b()V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 125
    invoke-super {p0}, Lcom/xiaoyi/mirrorlesscamera/fragment/BaseFragment;->onResume()V

    .line 126
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    iget-object v0, v0, Lcom/xiaoyi/mirrorlesscamera/bean/User;->userId:Ljava/lang/String;

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->s:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->j:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 131
    :cond_1
    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->s:Ljava/lang/String;

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->f:Landroid/widget/ImageView;

    invoke-static {}, Lcom/xiaoyi/util/c;->a()Lcom/xiaoyi/util/c;

    move-result-object v1

    const-string v2, "MASTER_HELP_CLICKED"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xiaoyi/util/c;->b(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->f:Landroid/widget/ImageView;

    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/b/m;->a()Ljava/lang/String;

    move-result-object v1

    const-string v4, "cn"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f070219

    goto :goto_2

    :cond_4
    const v1, 0x7f07021b

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->g:Landroid/widget/ImageView;

    invoke-static {}, Lcom/xiaoyi/util/c;->a()Lcom/xiaoyi/util/c;

    move-result-object v1

    const-string v4, "MASTER_HELP_CLICKED"

    invoke-virtual {v1, v4, v3}, Lcom/xiaoyi/util/c;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-boolean v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->r:Z

    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/common/a;->e()Z

    move-result v1

    if-eq v0, v1, :cond_6

    .line 139
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->j:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 140
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 145
    :cond_6
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->j:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 146
    :cond_7
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaoyi/mirrorlesscamera/b/e;->a(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/xiaoyi/mirrorlesscamera/OfflineMasterLearn;->load(Landroid/content/Context;)V

    .line 147
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->d:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->n:Ljava/util/List;

    .line 148
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/db/a;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 151
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 152
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->j:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 154
    :cond_8
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->k:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/b;->notifyDataSetChanged()V

    .line 156
    new-instance v0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment$a;-><init>(Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_9
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 162
    invoke-super {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/fragment/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "defaultAera"

    .line 163
    iget-boolean v1, p0, Lcom/xiaoyi/mirrorlesscamera/fragment/MasterLearnFragment;->r:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
