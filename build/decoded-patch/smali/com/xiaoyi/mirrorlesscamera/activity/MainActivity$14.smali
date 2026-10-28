.class Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity$14;->a:Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 739
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 761
    :sswitch_0
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity$14;->a:Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;

    invoke-static {p1}, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;->g(Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;)Lcom/xiaoyi/mirrorlesscamera/fragment/AlbumFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 762
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity$14;->a:Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;

    invoke-static {p1}, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;->g(Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;)Lcom/xiaoyi/mirrorlesscamera/fragment/AlbumFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaoyi/mirrorlesscamera/fragment/AlbumFragment;->c()V

    goto/16 :goto_1

    :sswitch_1
    const-string p1, "category_album"

    const-string v0, "ImportLocalAlbum"

    .line 766
    invoke-static {p1, v0}, Lcom/xiaoyi/mirrorlesscamera/common/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity$14;->a:Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;

    iget-object v0, v0, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;->c:Landroid/support/v4/app/FragmentActivity;

    const-class v1, Lcom/xiaoyi/mirrorlesscamera/activity/ImageImportActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 768
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity$14;->a:Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;

    const/16 v1, 0x65

    invoke-virtual {v0, p1, v1}, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 769
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity$14;->a:Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;

    const v0, 0x7f010014

    const v1, 0x7f01001a

    invoke-virtual {p1, v0, v1}, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;->overridePendingTransition(II)V

    goto/16 :goto_1

    .line 775
    :sswitch_2
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity$14;->a:Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;

    invoke-static {p1}, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;->f(Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;)Lcom/xiaoyi/mirrorlesscamera/kotlin/HomeFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 776
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity$14;->a:Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;

    invoke-static {p1}, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;->f(Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;)Lcom/xiaoyi/mirrorlesscamera/kotlin/HomeFragment;

    move-result-object p1

    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/kotlin/HomeFragment$Type;->MasterGuide:Lcom/xiaoyi/mirrorlesscamera/kotlin/HomeFragment$Type;

    invoke-virtual {p1, v0}, Lcom/xiaoyi/mirrorlesscamera/kotlin/HomeFragment;->a(Lcom/xiaoyi/mirrorlesscamera/kotlin/HomeFragment$Type;)V

    goto/16 :goto_1

    .line 780
    :sswitch_3
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity$14;->a:Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;

    invoke-static {p1}, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;->f(Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;)Lcom/xiaoyi/mirrorlesscamera/kotlin/HomeFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 781
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity$14;->a:Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;

    invoke-static {p1}, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;->f(Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;)Lcom/xiaoyi/mirrorlesscamera/kotlin/HomeFragment;

    move-result-object p1

    sget-object v0, Lcom/xiaoyi/mirrorlesscamera/kotlin/HomeFragment$Type;->Discover:Lcom/xiaoyi/mirrorlesscamera/kotlin/HomeFragment$Type;

    invoke-virtual {p1, v0}, Lcom/xiaoyi/mirrorlesscamera/kotlin/HomeFragment;->a(Lcom/xiaoyi/mirrorlesscamera/kotlin/HomeFragment$Type;)V

    goto :goto_1

    .line 772
    :sswitch_4
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity$14;->a:Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;

    iget-object p1, p1, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;->c:Landroid/support/v4/app/FragmentActivity;

    const-class v0, Lcom/xiaoyi/mirrorlesscamera/activity/SettingsActivity;

    invoke-static {p1, v0}, Lcom/xiaoyi/mirrorlesscamera/b/k;->a(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_1

    :sswitch_5
    const-string p1, "category_master_learn"

    const-string v0, "ViewMyTemplate"

    .line 742
    invoke-static {p1, v0}, Lcom/xiaoyi/mirrorlesscamera/common/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    sget-object p1, Lcom/xiaoyi/mirrorlesscamera/common/l;->a:Lcom/xiaoyi/mirrorlesscamera/bean/User;

    goto :cond_1

    .line 744
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity$14;->a:Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;

    iget-object v0, v0, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;->b:Landroid/content/Context;

    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/common/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/xiaoyi/mirrorlesscamera/activity/LoginFacebookActivity;

    goto :goto_0

    :cond_0
    const-class v1, Lcom/xiaoyi/mirrorlesscamera/activity/LoginActivity;

    :goto_0
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 745
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity$14;->a:Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 747
    :cond_1
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity$14;->a:Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;

    iget-object p1, p1, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;->c:Landroid/support/v4/app/FragmentActivity;

    const-class v0, Lcom/xiaoyi/mirrorlesscamera/activity/MyMasterLearnActivity;

    invoke-static {p1, v0}, Lcom/xiaoyi/mirrorlesscamera/b/k;->a(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_1

    .line 756
    :sswitch_6
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity$14;->a:Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;

    invoke-static {p1}, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;->g(Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;)Lcom/xiaoyi/mirrorlesscamera/fragment/AlbumFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 757
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity$14;->a:Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;

    invoke-static {p1}, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;->g(Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;)Lcom/xiaoyi/mirrorlesscamera/fragment/AlbumFragment;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaoyi/mirrorlesscamera/fragment/AlbumFragment;->a(I)V

    goto :goto_1

    .line 751
    :sswitch_7
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity$14;->a:Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;

    invoke-static {p1}, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;->g(Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;)Lcom/xiaoyi/mirrorlesscamera/fragment/AlbumFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 752
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity$14;->a:Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;

    invoke-static {p1}, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;->g(Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;)Lcom/xiaoyi/mirrorlesscamera/fragment/AlbumFragment;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaoyi/mirrorlesscamera/fragment/AlbumFragment;->a(I)V

    .line 786
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity$14;->a:Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;

    invoke-static {p1}, Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;->i(Lcom/xiaoyi/mirrorlesscamera/activity/MainActivity;)Lcom/xiaoyi/mirrorlesscamera/common/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaoyi/mirrorlesscamera/common/d;->e()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08003e -> :sswitch_7
        0x7f080040 -> :sswitch_6
        0x7f080157 -> :sswitch_5
        0x7f080158 -> :sswitch_4
        0x7f0802ef -> :sswitch_3
        0x7f0802f0 -> :sswitch_2
        0x7f080300 -> :sswitch_1
        0x7f08030b -> :sswitch_5
        0x7f08030c -> :sswitch_0
    .end sparse-switch
.end method
