.class Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity$3;
.super Lcom/xiaoyi/mirrorlesscamera/http/a/c;
.source "CameraMasterLearnActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaoyi/mirrorlesscamera/http/a/c<",
        "Ljava/util/List<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;


# direct methods
.method constructor <init>(Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity$3;->a:Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;

    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/http/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 394
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity$3;->a:Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;

    invoke-static {p1}, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;->e(Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0

    .line 399
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity$3;->a:Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;

    invoke-static {p1}, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;->e(Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 360
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity$3;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
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

    if-eqz p1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity$3;->a:Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;

    invoke-static {v0, p1}, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;->a(Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;Ljava/util/List;)V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity$3;->a:Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;

    invoke-static {v0}, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;->i(Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;)Lcom/xiaoyi/mirrorlesscamera/adapter/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/adapter/d;->notifyDataSetChanged()V

    .line 367
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity$3;->a:Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;

    invoke-static {v0}, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;->o(Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;)V

    .line 368
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity$3;->a:Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;

    invoke-static {v0}, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;->p(Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;)V

    .line 370
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    goto :cond_2

    .line 371
    sget-object p1, Lcom/xiaoyi/mirrorlesscamera/common/l;->c:Ljava/util/List;

    if-eqz p1, :cond_1

    const p1, 0x7f0d01f6

    .line 372
    invoke-static {p1}, Lcom/xiaoyi/mirrorlesscamera/b/q;->b(I)V

    const/4 p1, 0x0

    .line 373
    sput-object p1, Lcom/xiaoyi/mirrorlesscamera/common/l;->c:Ljava/util/List;

    :cond_1
    return-void

    .line 378
    :cond_2
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->c:Ljava/util/List;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 379
    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/common/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz p1, :cond_3

    .line 381
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity$3;->a:Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;

    invoke-static {v1, p1}, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;->b(Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;Ljava/util/List;)V

    .line 383
    :cond_3
    sget-object p1, Lcom/xiaoyi/mirrorlesscamera/common/l;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    if-le v0, p1, :cond_4

    .line 384
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity$3;->a:Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;

    const v0, 0x7f0d01df

    :goto_0
    invoke-virtual {p1, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity$3;->a:Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;

    const v0, 0x7f0d01e0

    goto :goto_0

    :goto_1
    invoke-static {p1}, Lcom/xiaoyi/mirrorlesscamera/b/q;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 385
    :cond_5
    sget-object p1, Lcom/xiaoyi/mirrorlesscamera/common/l;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq v0, p1, :cond_6

    .line 386
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity$3;->a:Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;

    const v0, 0x7f0d01c3

    invoke-virtual {p1, v0}, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaoyi/mirrorlesscamera/b/q;->a(Ljava/lang/String;)V

    .line 388
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity$3;->a:Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;

    invoke-static {p1}, Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;->q(Lcom/xiaoyi/mirrorlesscamera/activity/CameraMasterLearnActivity;)V

    :cond_7
    return-void
.end method
