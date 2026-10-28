.class Lcom/xiaoyi/mirrorlesscamera/common/n$1;
.super Ljava/lang/Object;
.source "MHttpUrlConnectionNetworkFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaoyi/mirrorlesscamera/common/n;->a(Lcom/facebook/imagepipeline/j/t;Lcom/facebook/imagepipeline/j/ah$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/j/t;

.field final synthetic b:Lcom/facebook/imagepipeline/j/ah$a;

.field final synthetic c:Lcom/xiaoyi/mirrorlesscamera/common/n;


# direct methods
.method constructor <init>(Lcom/xiaoyi/mirrorlesscamera/common/n;Lcom/facebook/imagepipeline/j/t;Lcom/facebook/imagepipeline/j/ah$a;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/common/n$1;->c:Lcom/xiaoyi/mirrorlesscamera/common/n;

    iput-object p2, p0, Lcom/xiaoyi/mirrorlesscamera/common/n$1;->a:Lcom/facebook/imagepipeline/j/t;

    iput-object p3, p0, Lcom/xiaoyi/mirrorlesscamera/common/n$1;->b:Lcom/facebook/imagepipeline/j/ah$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 54
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/common/n$1;->a:Lcom/facebook/imagepipeline/j/t;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/j/t;->e()Landroid/net/Uri;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/common/n$1;->a:Lcom/facebook/imagepipeline/j/t;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/j/t;->e()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MHttpUrlConnectionNetworkFetcher"

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request image url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaoyi/util/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object v3, v2

    .line 63
    :goto_0
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0x7530

    .line 65
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 66
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v3, "Location"

    .line 67
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v4, v2

    goto :goto_1

    .line 68
    :cond_0
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v3, :cond_3

    .line 69
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    .line 81
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object v0, v4

    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    goto :goto_0

    .line 70
    :cond_3
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 71
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/common/n$1;->b:Lcom/facebook/imagepipeline/j/ah$a;

    const/4 v3, -0x1

    invoke-interface {v2, v0, v3}, Lcom/facebook/imagepipeline/j/ah$a;->a(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    .line 81
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v3, v1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :catch_1
    move-exception v0

    .line 77
    :goto_3
    const-string v1, "YiNet"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaoyi/util/d;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/common/n$1;->b:Lcom/facebook/imagepipeline/j/ah$a;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/j/ah$a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_4

    .line 81
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    :goto_4
    return-void

    :goto_5
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v0
.end method
