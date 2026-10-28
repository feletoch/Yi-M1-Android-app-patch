.class public Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;
.super Lcom/xiaoyi/mirrorlesscamera/activity/BaseActivity;
.source "MyMasterLearnActivity.java"

# interfaces
.implements Leu/davidea/flexibleadapter/b$e;
.implements Leu/davidea/flexibleadapter/b$f;


# instance fields
.field private A:Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;

.field private final B:Ljava/lang/String;

.field private final C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Z

.field private F:Landroid/view/View$OnClickListener;

.field private final G:I

.field private final H:I

.field private final I:I

.field private final J:I

.field private final K:I

.field private final L:I

.field private M:Landroid/os/Handler;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaoyi/mirrorlesscamera/view/j;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Landroid/app/ActionBar;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/support/v7/widget/RecyclerView;

.field private l:Lcom/xiaoyi/mirrorlesscamera/widget/MultiStateView;

.field private m:Leu/davidea/flexibleadapter/b;

.field private n:Ljava/util/Map;
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

.field private o:Ljava/lang/String;

.field private p:Lcom/xiaoyi/mirrorlesscamera/http/b/a;

.field private q:Landroid/view/animation/Animation;

.field private r:Landroid/view/animation/Animation;

.field private s:Landroid/view/animation/Animation;

.field private t:Landroid/view/animation/Animation;

.field private u:Landroid/view/View;

.field private v:Lcom/xiaoyi/mirrorlesscamera/fragment/ProgressDialog;

.field private w:Z

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 58
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/BaseActivity;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->e:Ljava/util/List;

    .line 73
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    iget-object v0, v0, Lcom/xiaoyi/mirrorlesscamera/bean/User;->userId:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->o:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/xiaoyi/mirrorlesscamera/http/b/a;

    invoke-direct {v0, p0}, Lcom/xiaoyi/mirrorlesscamera/http/b/a;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->p:Lcom/xiaoyi/mirrorlesscamera/http/b/a;

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->x:I

    const/4 v1, 0x1

    .line 82
    iput v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->y:I

    const/16 v2, 0x64

    .line 83
    iput v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->z:I

    const-string v3, "defaultLanguage"

    .line 88
    iput-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->B:Ljava/lang/String;

    const-string v3, "defaultAera"

    .line 89
    iput-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->C:Ljava/lang/String;

    .line 231
    new-instance v3, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$7;

    invoke-direct {v3, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$7;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V

    iput-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->F:Landroid/view/View$OnClickListener;

    .line 700
    iput v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->G:I

    .line 701
    iput v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->H:I

    const/4 v0, -0x1

    .line 702
    iput v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->I:I

    const/4 v0, -0x2

    .line 703
    iput v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->J:I

    .line 705
    iput v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->K:I

    const/16 v0, -0x64

    .line 706
    iput v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->L:I

    .line 708
    new-instance v0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$4;

    invoke-direct {v0, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$4;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->M:Landroid/os/Handler;

    return-void
.end method

.method private A()V
    .locals 2

    .line 663
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->d:Landroid/support/v4/app/FragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->d:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->d:Landroid/support/v4/app/FragmentManager;

    invoke-static {v0}, Lcom/xiaoyi/mirrorlesscamera/fragment/ProgressDialog;->a(Landroid/support/v4/app/FragmentManager;)Lcom/xiaoyi/mirrorlesscamera/fragment/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->v:Lcom/xiaoyi/mirrorlesscamera/fragment/ProgressDialog;

    .line 665
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->v:Lcom/xiaoyi/mirrorlesscamera/fragment/ProgressDialog;

    const v1, 0x7f0d01d7

    invoke-virtual {p0, v1}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/fragment/ProgressDialog;->a(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->v:Lcom/xiaoyi/mirrorlesscamera/fragment/ProgressDialog;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v1}, Leu/davidea/flexibleadapter/b;->x()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/fragment/ProgressDialog;->a(I)V

    .line 667
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->v:Lcom/xiaoyi/mirrorlesscamera/fragment/ProgressDialog;

    new-instance v1, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$2;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/fragment/ProgressDialog;->a(Lcom/xiaoyi/mirrorlesscamera/fragment/ProgressDialog$a;)V

    .line 678
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->v:Lcom/xiaoyi/mirrorlesscamera/fragment/ProgressDialog;

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/fragment/ProgressDialog;->c()V

    :cond_0
    return-void
.end method

.method private B()V
    .locals 1

    .line 683
    new-instance v0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$3;

    invoke-direct {v0, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$3;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V

    invoke-static {v0}, Lcom/yiaction/common/util/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private C()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaoyi/mirrorlesscamera/view/j;",
            ">;"
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/b;->y()Ljava/util/List;

    move-result-object v0

    .line 693
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 694
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 695
    iget-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private D()V
    .locals 8

    .line 752
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->C()Ljava/util/List;

    move-result-object v0

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 754
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaoyi/mirrorlesscamera/view/j;

    .line 755
    iget-boolean v5, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->w:Z

    if-eqz v5, :cond_0

    .line 756
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->M:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 759
    :cond_0
    invoke-virtual {v2}, Lcom/xiaoyi/mirrorlesscamera/view/j;->a()Ljava/util/Map;

    move-result-object v5

    const-string v6, "picId"

    .line 760
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 762
    iget-object v6, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->p:Lcom/xiaoyi/mirrorlesscamera/http/b/a;

    iget-object v7, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->o:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/xiaoyi/mirrorlesscamera/http/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 764
    iget-object v7, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->e:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 765
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->o:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/xiaoyi/mirrorlesscamera/db/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v6, :cond_2

    .line 768
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ","

    .line 769
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    :cond_2
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->M:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 775
    :cond_3
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->M:Landroid/os/Handler;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_5

    .line 781
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->M:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 783
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "MyMasterLearnActivity"

    .line 784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------\u79bb\u7ebf\u5220\u9664\u7684\u4efb\u52a1--------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaoyi/util/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-static {}, Lcom/xiaoyi/util/c;->a()Lcom/xiaoyi/util/c;

    move-result-object v0

    const-string v2, "del_master_learn_task"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/xiaoyi/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private E()V
    .locals 3

    .line 790
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->k()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 792
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->l:Lcom/xiaoyi/mirrorlesscamera/widget/MultiStateView;

    const v1, 0x7f08032b

    const v2, 0x7f0d0201

    invoke-virtual {v0, v1, v2}, Lcom/xiaoyi/mirrorlesscamera/widget/MultiStateView;->a(II)V

    .line 793
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->l:Lcom/xiaoyi/mirrorlesscamera/widget/MultiStateView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/MultiStateView;->setViewState(I)V

    goto :goto_0

    .line 795
    :cond_0
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->k()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 796
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->l:Lcom/xiaoyi/mirrorlesscamera/widget/MultiStateView;

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/MultiStateView;->setViewState(I)V

    :goto_0
    return-void
.end method

.method private F()V
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->A:Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;->d()V

    return-void
.end method

.method private G()V
    .locals 5

    .line 805
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/b;->x()I

    move-result v0

    if-lez v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f0d0055

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v4}, Leu/davidea/flexibleadapter/b;->x()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f0d0056

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method private H()V
    .locals 2

    .line 854
    new-instance v0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$5;

    invoke-direct {v0, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$5;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 869
    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic a(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->D:Ljava/lang/String;

    return-object p1
.end method

.method private a(ILjava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "picId"

    .line 378
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->n:Ljava/util/Map;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->n:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 380
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->n:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "master_learn_file"

    .line 381
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "master_learn_file"

    .line 382
    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    new-instance v3, Ljava/io/File;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "listUrl"

    .line 385
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 386
    new-instance v5, Ljava/io/File;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    invoke-static {v0}, Lcom/xiaoyi/mirrorlesscamera/db/a;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 389
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v2, "picUrl"

    .line 394
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 395
    new-instance v6, Ljava/io/File;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "shadowUrl"

    .line 397
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 398
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 401
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "updateType"

    .line 402
    sget-object v2, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_NONE:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    invoke-virtual {v2}, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const-string p1, "version"

    .line 416
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "fileVersion"

    .line 417
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "master_learn_version"

    .line 419
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "item_version"

    .line 420
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 422
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "updateType"

    .line 423
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_NONE:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 425
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "updateType"

    .line 428
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_INFO:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    :goto_0
    const-string p1, "updateType"

    .line 426
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_MASTERlEARN_FILE:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const-string p1, "updateType"

    .line 404
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_OTHER_FILE:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_6
    const-string p1, "updateType"

    .line 408
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_MASTERlEARN_FILE:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_7
    :goto_1
    const-string p1, "updateType"

    .line 390
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_ALL:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_8
    const-string p1, "updateType"

    .line 433
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_ALL:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-object p2
.end method

.method static synthetic a(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->n:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->F()V

    return-void
.end method

.method static synthetic a(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;ILjava/util/List;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->d(ILjava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 545
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaoyi/mirrorlesscamera/common/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 546
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xiaoyi/mirrorlesscamera/common/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2}, Lcom/xiaoyi/mirrorlesscamera/b/g;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 549
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/xiaoyi/mirrorlesscamera/b/g;->i(Ljava/lang/String;)Z

    .line 552
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_itemImg.jpg"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_detailImg1.jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_detailImg2.png"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "listUrl"

    .line 557
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 558
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/xiaoyi/mirrorlesscamera/common/a;->f:Ljava/lang/String;

    invoke-static {v2, p4, v3}, Lcom/xiaoyi/mirrorlesscamera/b/h;->b(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "picUrl"

    .line 560
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/xiaoyi/mirrorlesscamera/common/a;->f:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/xiaoyi/mirrorlesscamera/b/h;->b(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "shadowUrl"

    .line 562
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/xiaoyi/mirrorlesscamera/common/a;->f:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/xiaoyi/mirrorlesscamera/b/h;->b(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xiaoyi/mirrorlesscamera/common/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    .line 565
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xiaoyi/mirrorlesscamera/common/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 566
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xiaoyi/mirrorlesscamera/common/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "listUrl"

    .line 573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "picUrl"

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "shadowUrl"

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "file://"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/xiaoyi/mirrorlesscamera/db/a;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->E:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)Lcom/xiaoyi/mirrorlesscamera/widget/MultiStateView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->l:Lcom/xiaoyi/mirrorlesscamera/widget/MultiStateView;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->w:Z

    return p1
.end method

.method private c(ILjava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/xiaoyi/mirrorlesscamera/view/j;",
            ">;"
        }
    .end annotation

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 442
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 443
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 444
    invoke-direct {p0, p1, v3}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->a(ILjava/util/Map;)Ljava/util/Map;

    const-string v4, "updateType"

    .line 445
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->valueOf(Ljava/lang/String;)Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    move-result-object v4

    .line 446
    sget-object v5, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_MASTERlEARN_FILE:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    if-eq v4, v5, :cond_0

    sget-object v5, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_ALL:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    if-eq v4, v5, :cond_0

    .line 447
    new-instance v4, Lcom/xiaoyi/mirrorlesscamera/view/j;

    invoke-direct {v4, v3}, Lcom/xiaoyi/mirrorlesscamera/view/j;-><init>(Ljava/util/Map;)V

    .line 448
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 450
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 453
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private c()V
    .locals 2

    const v0, 0x7f01000f

    .line 144
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->q:Landroid/view/animation/Animation;

    const v0, 0x7f010010

    .line 145
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->r:Landroid/view/animation/Animation;

    .line 146
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->c:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f01000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->s:Landroid/view/animation/Animation;

    .line 147
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->c:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->t:Landroid/view/animation/Animation;

    return-void
.end method

.method static synthetic c(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->H()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->g:Landroid/app/ActionBar;

    .line 153
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->g:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->g:Landroid/app/ActionBar;

    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    :cond_0
    return-void
.end method

.method private d(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 459
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 460
    invoke-direct {p0, p1, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->a(ILjava/util/Map;)Ljava/util/Map;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->E()V

    return-void
.end method

.method private e()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->g:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->i()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f07028e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 164
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->i()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->j()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d01dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 166
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->k()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->k()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d025a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 168
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->k()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->g:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080016

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->h:Landroid/view/View;

    const v1, 0x7f0802d3

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f080187

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080230

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->i:Landroid/widget/TextView;

    .line 178
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic e(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->s()V

    return-void
.end method

.method static synthetic f(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->v()V

    return-void
.end method

.method static synthetic g(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->w()V

    return-void
.end method

.method static synthetic h(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->x()V

    return-void
.end method

.method static synthetic i(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)Leu/davidea/flexibleadapter/b;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    return-object p0
.end method

.method static synthetic j(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)Ljava/util/List;
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->C()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->z()V

    return-void
.end method

.method static synthetic l(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->D:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->E:Z

    return p0
.end method

.method static synthetic n(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->o:Ljava/lang/String;

    return-object p0
.end method

.method private o()V
    .locals 2

    const v0, 0x7f0802b8

    .line 183
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->A:Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;

    .line 184
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->A:Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;

    new-instance v1, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$1;

    invoke-direct {v1, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$1;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;->setOnRefreshListener(Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout$b;)V

    return-void
.end method

.method static synthetic o(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->t()V

    return-void
.end method

.method private p()V
    .locals 3

    const v0, 0x7f080221

    .line 202
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->k:Landroid/support/v7/widget/RecyclerView;

    .line 203
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->k:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/yiaction/common/util/YLinearLayoutManager;

    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/yiaction/common/util/YLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 204
    new-instance v0, Leu/davidea/flexibleadapter/b;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->e:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Leu/davidea/flexibleadapter/b;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    .line 205
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->k:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    const v0, 0x7f0802d6

    .line 207
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->u:Landroid/view/View;

    const v0, 0x7f08031a

    .line 208
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800c4

    .line 209
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic p(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->u()V

    return-void
.end method

.method static synthetic q(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->A:Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;

    return-object p0
.end method

.method private q()V
    .locals 2

    const v0, 0x7f0801dc

    .line 215
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaoyi/mirrorlesscamera/widget/MultiStateView;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->l:Lcom/xiaoyi/mirrorlesscamera/widget/MultiStateView;

    .line 216
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->l:Lcom/xiaoyi/mirrorlesscamera/widget/MultiStateView;

    new-instance v1, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$6;

    invoke-direct {v1, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$6;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/MultiStateView;->setOnEmptyRetryListener(Lcom/xiaoyi/mirrorlesscamera/widget/MultiStateView$c;)V

    return-void
.end method

.method private r()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->l:Lcom/xiaoyi/mirrorlesscamera/widget/MultiStateView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/MultiStateView;->setViewState(I)V

    .line 278
    invoke-static {}, Lcom/yiaction/common/util/b;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$8;

    invoke-direct {v1, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$8;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic r(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->A()V

    return-void
.end method

.method private s()V
    .locals 5

    .line 293
    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/common/u;->b()Lcom/xiaoyi/mirrorlesscamera/common/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/common/u;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->A:Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;->setEnabled(Z)V

    .line 295
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->E()V

    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->p:Lcom/xiaoyi/mirrorlesscamera/http/b/a;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->o:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x64

    new-instance v4, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$9;

    invoke-direct {v4, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$9;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaoyi/mirrorlesscamera/http/b/a;->a(Ljava/lang/String;IILcom/zhy/http/okhttp/b/a;)V

    return-void
.end method

.method static synthetic s(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->B()V

    return-void
.end method

.method private t()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaoyi/mirrorlesscamera/db/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 341
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 342
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 344
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 345
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 346
    invoke-direct {p0, v2, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->c(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 349
    :cond_1
    new-instance v0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$10;

    invoke-direct {v0, p0, v1}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$10;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic t(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->D()V

    return-void
.end method

.method static synthetic u(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)Lcom/xiaoyi/mirrorlesscamera/fragment/ProgressDialog;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->v:Lcom/xiaoyi/mirrorlesscamera/fragment/ProgressDialog;

    return-object p0
.end method

.method private u()V
    .locals 11

    .line 483
    new-instance v0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$11;

    invoke-direct {v0, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$11;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V

    .line 484
    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$11;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 485
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v4, "updateType"

    .line 486
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->valueOf(Ljava/lang/String;)Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    move-result-object v4

    .line 487
    sget-object v5, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_NONE:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "picId"

    .line 490
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 494
    :try_start_0
    iget-object v6, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->p:Lcom/xiaoyi/mirrorlesscamera/http/b/a;

    iget-object v7, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->o:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Lcom/xiaoyi/mirrorlesscamera/http/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 495
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "code"

    .line 496
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v8, "data"

    const/4 v9, 0x0

    .line 497
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xc8

    if-eq v6, v8, :cond_2

    const/16 v8, 0x4e20

    if-ne v6, v8, :cond_7

    .line 499
    :cond_2
    sget-object v6, Lcom/xiaoyi/mirrorlesscamera/common/i;->a:Lcom/google/gson/Gson;

    invoke-virtual {v6, v7, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "updateType"

    .line 509
    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "updateType"

    .line 510
    invoke-interface {v2, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    :cond_3
    sget-object v7, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_ALL:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    if-eq v4, v7, :cond_5

    sget-object v7, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_MASTERlEARN_FILE:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    if-eq v4, v7, :cond_5

    sget-object v7, Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;->UPDATE_OTHER_FILE:Lcom/xiaoyi/mirrorlesscamera/bean/UpdateType;

    if-ne v4, v7, :cond_4

    goto :goto_1

    .line 525
    :cond_4
    iget-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->n:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 526
    iget-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->n:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_0

    const-string v4, "master_learn_file"

    .line 528
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v6, v3}, Lcom/xiaoyi/mirrorlesscamera/db/a;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 515
    :cond_5
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->o:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "downFileName"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 516
    iget-object v7, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->p:Lcom/xiaoyi/mirrorlesscamera/http/b/a;

    const-string v8, "downUrl"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/xiaoyi/mirrorlesscamera/common/a;->d:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/xiaoyi/mirrorlesscamera/http/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 518
    invoke-direct {p0, v5, v2, v6, v4}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x1

    :catch_0
    :cond_7
    if-eqz v3, :cond_8

    .line 536
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->M:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 538
    :cond_8
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->M:Landroid/os/Handler;

    const/16 v1, -0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_2
    return-void
.end method

.method private v()V
    .locals 3

    .line 581
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->q:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 582
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->u:Landroid/view/View;

    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->s:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 584
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Leu/davidea/flexibleadapter/b;->j(I)V

    .line 586
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/b;->notifyDataSetChanged()V

    .line 587
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->A:Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;->setEnabled(Z)V

    return-void
.end method

.method static synthetic v(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->r()V

    return-void
.end method

.method private w()V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->r:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 592
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/b;->j(I)V

    .line 596
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/b;->j()V

    .line 598
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/b;->notifyDataSetChanged()V

    .line 600
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->i:Landroid/widget/TextView;

    const v1, 0x7f0d0052

    invoke-virtual {p0, v1}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->A:Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/widget/SuperSwipeRefreshLayout;->setEnabled(Z)V

    .line 603
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->E()V

    return-void
.end method

.method private x()V
    .locals 3

    const v0, 0x7f0d0052

    .line 622
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->i:Landroid/widget/TextView;

    const v1, 0x7f0d0070

    invoke-virtual {p0, v1}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/b;->a([Ljava/lang/Integer;)V

    goto :goto_0

    .line 626
    :cond_0
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/b;->j()V

    .line 629
    :goto_0
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/b;->notifyDataSetChanged()V

    .line 630
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->G()V

    return-void
.end method

.method private y()V
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/b;->x()I

    move-result v0

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v1}, Leu/davidea/flexibleadapter/b;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 635
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->i:Landroid/widget/TextView;

    const v1, 0x7f0d0070

    invoke-virtual {p0, v1}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->i:Landroid/widget/TextView;

    const v1, 0x7f0d0052

    invoke-virtual {p0, v1}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private z()V
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->d:Landroid/support/v4/app/FragmentManager;

    invoke-static {v0}, Lcom/xiaoyi/mirrorlesscamera/fragment/DeleteConfirmDialog;->a(Landroid/support/v4/app/FragmentManager;)Lcom/xiaoyi/mirrorlesscamera/fragment/DeleteConfirmDialog;

    move-result-object v0

    const v1, 0x7f0d01c6

    .line 643
    invoke-virtual {p0, v1}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/fragment/DeleteConfirmDialog;->a(Ljava/lang/String;)Lcom/xiaoyi/mirrorlesscamera/fragment/DeleteConfirmDialog;

    move-result-object v0

    new-instance v1, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$13;

    invoke-direct {v1, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$13;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V

    .line 644
    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/fragment/DeleteConfirmDialog;->a(Lcom/xiaoyi/mirrorlesscamera/fragment/DeleteConfirmDialog$b;)Lcom/xiaoyi/mirrorlesscamera/fragment/DeleteConfirmDialog;

    move-result-object v0

    new-instance v1, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$12;

    invoke-direct {v1, p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity$12;-><init>(Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;)V

    .line 653
    invoke-virtual {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/fragment/DeleteConfirmDialog;->a(Lcom/xiaoyi/mirrorlesscamera/fragment/DeleteConfirmDialog$a;)Lcom/xiaoyi/mirrorlesscamera/fragment/DeleteConfirmDialog;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/fragment/DeleteConfirmDialog;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 824
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->c:Ljava/util/List;

    .line 825
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0151

    .line 826
    invoke-static {v0}, Lcom/xiaoyi/mirrorlesscamera/b/q;->a(I)V

    return-void

    .line 829
    :cond_0
    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/common/h;->a()Lcom/xiaoyi/mirrorlesscamera/common/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/common/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->c:Landroid/support/v4/app/FragmentActivity;

    const-class v1, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;

    invoke-static {v0, v1}, Lcom/xiaoyi/mirrorlesscamera/b/k;->a(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    const-string v0, "category_connect"

    const-string v1, "PairCamera"

    const-string v2, "Type"

    const-string v3, "UploadMasterlearn"

    .line 832
    invoke-static {v0, v1, v2, v3}, Lcom/xiaoyi/mirrorlesscamera/common/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->b:Landroid/content/Context;

    const-class v2, Lcom/xiaoyi/mirrorlesscamera/activity/CameraBindingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "jump_cam_master"

    const/4 v2, 0x1

    .line 835
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 836
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Lcom/xiaoyi/mirrorlesscamera/b/k;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 841
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->s()V

    return-void
.end method

.method public d(I)Z
    .locals 3

    .line 466
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/b;->e(I)Leu/davidea/flexibleadapter/b/f;

    move-result-object v0

    check-cast v0, Lcom/xiaoyi/mirrorlesscamera/view/j;

    .line 467
    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/view/j;->a()Ljava/util/Map;

    move-result-object v0

    .line 468
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v1}, Leu/davidea/flexibleadapter/b;->w()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 469
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/b;->d(I)V

    .line 470
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/b;->notifyItemChanged(I)V

    .line 471
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->y()V

    .line 472
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->G()V

    goto :goto_0

    .line 474
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->c:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/xiaoyi/mirrorlesscamera/activity/MasterLearnDetailActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_masterlearn"

    .line 475
    sget-object v2, Lcom/xiaoyi/mirrorlesscamera/common/i;->a:Lcom/google/gson/Gson;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, p1}, Lcom/xiaoyi/mirrorlesscamera/b/k;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public e(I)V
    .locals 2

    .line 814
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/b;->w()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 815
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->v()V

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/b;->d(I)V

    .line 818
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/b;->notifyItemChanged(I)V

    .line 819
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->y()V

    .line 820
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->G()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/b;->w()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 609
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/b;->x()I

    move-result v0

    if-lez v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->m:Leu/davidea/flexibleadapter/b;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/b;->j()V

    .line 611
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->G()V

    .line 612
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->y()V

    goto :goto_0

    .line 614
    :cond_0
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->w()V

    goto :goto_0

    .line 617
    :cond_1
    invoke-super {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/BaseActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 95
    invoke-super {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0040

    .line 96
    invoke-virtual {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->setContentView(I)V

    if-eqz p1, :cond_0

    const-string v0, "defaultLanguage"

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->D:Ljava/lang/String;

    const-string v0, "defaultAera"

    .line 99
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->E:Z

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/b/m;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->D:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/common/a;->e()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->E:Z

    .line 105
    :goto_0
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->d()V

    .line 107
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->e()V

    .line 109
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->o()V

    .line 111
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->p()V

    .line 113
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->c()V

    .line 115
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->q()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 846
    invoke-super {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 847
    sput-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->c:Ljava/util/List;

    .line 848
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->M:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 849
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->M:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 121
    invoke-super {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/BaseActivity;->onResume()V

    .line 122
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    goto :cond_0

    const-string v0, "MyMasterLearnActivity"

    const-string v1, "No User,finish directly"

    .line 123
    invoke-static {v0, v1}, Lcom/xiaoyi/util/d;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->finish()V

    .line 127
    :cond_0
    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/b/m;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->E:Z

    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/common/a;->e()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    :cond_3
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->r()V

    :cond_4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 874
    invoke-super {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/activity/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "defaultLanguage"

    .line 875
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->D:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "defaultAera"

    .line 876
    iget-boolean v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->E:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 139
    invoke-super {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/BaseActivity;->onStart()V

    .line 140
    invoke-virtual {p0}, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;->n()V

    return-void
.end method
