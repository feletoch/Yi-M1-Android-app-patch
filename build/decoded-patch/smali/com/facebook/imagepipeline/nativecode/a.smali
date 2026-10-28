.class public Lcom/facebook/imagepipeline/nativecode/a;
.super Ljava/lang/Object;
.source "ImagePipelineNativeLoader.java"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/nativecode/a;->a:Ljava/util/List;

    return-void
.end method

.method public static a()V
    .locals 1

    :try_start_ldr
    const-string v0, "imagepipeline"

    .line 42
    invoke-static {v0}, Lcom/facebook/common/e/a;->a(Ljava/lang/String;)V
    :try_end_ldr
    .catch Ljava/lang/Throwable; {:try_start_ldr .. :try_end_ldr} :catch_ldr

    goto :ldr_done

    :catch_ldr
    move-exception v0

    :ldr_done
    return-void
.end method
