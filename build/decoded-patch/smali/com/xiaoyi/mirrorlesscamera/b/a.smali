.class public Lcom/xiaoyi/mirrorlesscamera/b/a;
.super Ljava/lang/Object;
.source "AlbumUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaoyi/mirrorlesscamera/b/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Landroid/content/ContentResolver;

.field private final d:Landroid/net/Uri;

.field private final e:Landroid/net/Uri;

.field private final f:[Ljava/lang/String;

.field private final g:[Ljava/lang/String;

.field private final h:Landroid/net/Uri;

.field private final i:Landroid/net/Uri;

.field private final j:[Ljava/lang/String;

.field private final k:[Ljava/lang/String;

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lcom/xiaoyi/mirrorlesscamera/b/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaoyi/mirrorlesscamera/common/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->a:Ljava/lang/String;

    .line 37
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->d:Landroid/net/Uri;

    .line 38
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->e:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v1, "image_id"

    const-string v2, "_data"

    .line 40
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->f:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "date_modified"

    .line 41
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->g:[Ljava/lang/String;

    .line 43
    sget-object v0, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->h:Landroid/net/Uri;

    .line 44
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->i:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v1, "video_id"

    const-string v2, "_data"

    .line 45
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->j:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "date_modified"

    .line 46
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->k:[Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->m:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->p:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaoyi/mirrorlesscamera/common/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%\'and ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " like ?or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " like ?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->q:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaoyi/mirrorlesscamera/common/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%\'and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  not like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaoyi/mirrorlesscamera/common/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->r:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->b:Landroid/content/Context;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->c:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic a(Lcom/xiaoyi/mirrorlesscamera/b/a;)Ljava/util/ArrayList;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->p:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaoyi/mirrorlesscamera/b/a;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/b/a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 8

    const/4 v0, 0x0

    .line 272
    :goto_0
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    .line 275
    iget-object v2, v1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileType:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    sget-object v3, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;->TYPE_VIDEO:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-ne v2, v3, :cond_0

    if-nez p1, :cond_1

    .line 277
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->c:Landroid/content/ContentResolver;

    iget-object v1, v1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->mediaId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v2, v6, v7, v5, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 279
    :cond_0
    iget-object v2, v1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileType:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    sget-object v3, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;->TYPE_NORMAL_IMG:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    if-ne v2, v3, :cond_1

    .line 280
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->c:Landroid/content/ContentResolver;

    iget-object v1, v1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->mediaId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v2, v6, v7, v5, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 283
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaoyi/mirrorlesscamera/b/a;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 5

    .line 293
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-nez p1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/b/a;->d()V

    if-nez p1, :cond_1

    .line 300
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/b/a;->e()V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    const/4 v2, 0x0

    .line 306
    iget-object v3, v1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileType:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    sget-object v4, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;->TYPE_VIDEO:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    if-ne v3, v4, :cond_2

    if-nez p1, :cond_4

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->o:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->mediaId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 310
    :cond_2
    iget-object v3, v1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileType:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    sget-object v4, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;->TYPE_NORMAL_IMG:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    if-ne v3, v4, :cond_4

    .line 311
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->m:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->mediaId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->m:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->mediaId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 314
    :cond_3
    iget-object v2, v1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->originalPath:Ljava/lang/String;

    .line 317
    :cond_4
    :goto_1
    iput-object v2, v1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->thumbnail:Ljava/lang/String;

    const-string v1, "AlbumUtil"

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------\u751f\u6210\u4e86\u7f29\u7565\u56fe-----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaoyi/util/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 321
    :cond_5
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->s:Lcom/xiaoyi/mirrorlesscamera/b/a$a;

    if-eqz p1, :cond_6

    .line 322
    iget-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->s:Lcom/xiaoyi/mirrorlesscamera/b/a$a;

    invoke-interface {p1}, Lcom/xiaoyi/mirrorlesscamera/b/a$a;->c()V

    :cond_6
    return-void
.end method

.method private c()V
    .locals 8

    .line 127
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->i:Landroid/net/Uri;

    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->k:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data like \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaoyi/mirrorlesscamera/common/i;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "date_modified desc "

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->n:Ljava/util/HashMap;

    .line 136
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_data"

    .line 137
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    .line 138
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "date_modified"

    .line 139
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 141
    new-instance v5, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    invoke-direct {v5}, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;-><init>()V

    .line 142
    iput-object v2, v5, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->mediaId:Ljava/lang/String;

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->originalPath:Ljava/lang/String;

    .line 144
    sget-object v6, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;->TYPE_VIDEO:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    iput-object v6, v5, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileType:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    .line 145
    iput-wide v3, v5, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->createTime:J

    .line 146
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->previewUrl:Ljava/lang/String;

    .line 149
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xa

    const-wide/16 v3, 0x0

    const-string v1, "MM/dd"

    .line 152
    invoke-static {v1, v3, v4}, Lcom/xiaoyi/mirrorlesscamera/b/p;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->dayDate:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 157
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 7

    .line 83
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->q:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "%.jpg"

    const-string v1, "%.JPG"

    .line 84
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 86
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->c:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->e:Landroid/net/Uri;

    iget-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->g:[Ljava/lang/String;

    const-string v6, "date_modified desc "

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->l:Ljava/util/HashMap;

    .line 94
    :goto_1
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_data"

    .line 96
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_id"

    .line 97
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "date_modified"

    .line 98
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 100
    new-instance v4, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    invoke-direct {v4}, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;-><init>()V

    .line 101
    iput-object v1, v4, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->mediaId:Ljava/lang/String;

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->originalPath:Ljava/lang/String;

    .line 103
    iput-wide v2, v4, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->createTime:J

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->previewUrl:Ljava/lang/String;

    .line 105
    new-instance v5, Lcom/xiaoyi/mirrorlesscamera/bean/YiExifInterface;

    invoke-direct {v5, v0}, Lcom/xiaoyi/mirrorlesscamera/bean/YiExifInterface;-><init>(Ljava/lang/String;)V

    iput-object v5, v4, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->exifInterface:Lcom/xiaoyi/mirrorlesscamera/bean/YiExifInterface;

    const-string v0, "AlbumUtil"

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "originalPath-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->originalPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/xiaoyi/util/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xa

    const-wide/16 v2, 0x0

    const-string v0, "MM/dd"

    .line 113
    invoke-static {v0, v2, v3}, Lcom/xiaoyi/mirrorlesscamera/b/p;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->dayDate:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->l:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 117
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    :goto_2
    return-void
.end method

.method private d()V
    .locals 6

    .line 166
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->d:Landroid/net/Uri;

    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->f:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_id"

    .line 170
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "image_id"

    .line 171
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "_data"

    .line 172
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 175
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 176
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 178
    iget-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->m:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method private e()V
    .locals 6

    .line 190
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->h:Landroid/net/Uri;

    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->j:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 192
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->o:Ljava/util/HashMap;

    .line 194
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "video_id"

    .line 195
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "_data"

    .line 196
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 198
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    iget-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->o:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method private f()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->l:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->l:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->l:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 218
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    .line 219
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 220
    iget-object v4, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->m:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->m:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->thumbnail:Ljava/lang/String;

    goto :goto_1

    .line 223
    :cond_0
    iget-object v2, v3, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->originalPath:Ljava/lang/String;

    iput-object v2, v3, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->thumbnail:Ljava/lang/String;

    .line 225
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 232
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method private g()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->n:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->n:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 243
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->n:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 244
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    .line 245
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 246
    iget-object v4, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->o:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->o:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->thumbnail:Ljava/lang/String;

    goto :goto_1

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    :cond_1
    new-instance v1, Lcom/xiaoyi/mirrorlesscamera/b/a$1;

    invoke-direct {v1, p0}, Lcom/xiaoyi/mirrorlesscamera/b/a$1;-><init>(Lcom/xiaoyi/mirrorlesscamera/b/a;)V

    invoke-static {v1}, Lcom/yiaction/common/util/b;->a(Ljava/lang/Runnable;)V

    return-object v0

    .line 268
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method private h()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;",
            ">;"
        }
    .end annotation

    const-string v0, "external"

    .line 508
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v0, "_id"

    const-string v1, "_data"

    const-string v3, "date_modified"

    .line 509
    filled-new-array {v0, v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "AlbumUtil"

    const-string v1, "+>>>---------\u5f00\u59cb\u626b\u63cf---------"

    .line 511
    invoke-static {v0, v1}, Lcom/xiaoyi/util/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->c:Landroid/content/ContentResolver;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data like \'%"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaoyi/mirrorlesscamera/common/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "DNG"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "date_modified desc "

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 517
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_5

    .line 520
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "_data"

    .line 522
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\."

    .line 523
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 524
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const-string v4, "DNG"

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 525
    aget-object v6, v3, v4

    aget-object v3, v3, v4

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_id"

    .line 526
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "date_modified"

    .line 527
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 529
    new-instance v7, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    invoke-direct {v7}, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;-><init>()V

    .line 530
    iput-object v4, v7, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->mediaId:Ljava/lang/String;

    .line 531
    sget-object v4, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;->TYPE_RAW_IMG:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    iput-object v4, v7, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileType:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    .line 532
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "DNG"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileName:Ljava/lang/String;

    .line 533
    iput-wide v5, v7, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->createTime:J

    .line 534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->b:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "dng_thumb_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "JPG"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 536
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->b:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "dng_preview_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "JPG"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 538
    invoke-static {v4}, Lcom/xiaoyi/mirrorlesscamera/b/g;->g(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v8}, Lcom/xiaoyi/mirrorlesscamera/b/g;->g(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 539
    :cond_1
    new-instance v10, Lcom/xiaoyi/mirrorlesscamera/bean/YiMirrorlessDNG;

    invoke-direct {v10, v2}, Lcom/xiaoyi/mirrorlesscamera/bean/YiMirrorlessDNG;-><init>(Ljava/lang/String;)V

    .line 540
    invoke-static {v4}, Lcom/xiaoyi/mirrorlesscamera/b/g;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->b:Landroid/content/Context;

    invoke-virtual {v11, v9}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "dng_thumb_"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "JPG"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Lcom/xiaoyi/mirrorlesscamera/bean/YiMirrorlessDNG;->generateThumbnail(Ljava/lang/String;Ljava/lang/String;)Z

    .line 544
    :cond_2
    invoke-static {v8}, Lcom/xiaoyi/mirrorlesscamera/b/g;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->b:Landroid/content/Context;

    invoke-virtual {v11, v9}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "dng_preview_"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "JPG"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Lcom/xiaoyi/mirrorlesscamera/bean/YiMirrorlessDNG;->generatePreview(Ljava/lang/String;Ljava/lang/String;)Z

    .line 550
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->originalPath:Ljava/lang/String;

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->originalUrl:Ljava/lang/String;

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->previewUrl:Ljava/lang/String;

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->thumbnail:Ljava/lang/String;

    .line 555
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    const-wide/16 v2, 0x0

    const-string v4, "MM/dd"

    .line 558
    invoke-static {v4, v2, v3}, Lcom/xiaoyi/mirrorlesscamera/b/p;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->dayDate:Ljava/lang/String;

    .line 559
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "AlbumUtil"

    const-string v3, "+>>>---------\u626b\u63cf\u5230\u4e86\u6587\u4ef6---------"

    .line 560
    invoke-static {v2, v3}, Lcom/xiaoyi/util/d;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 564
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_5
    :goto_1
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;
    .locals 1

    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0, p1, v0}, Lcom/xiaoyi/mirrorlesscamera/b/a;->b(Ljava/lang/String;Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;)Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;)Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 424
    iget-object v2, v0, Lcom/xiaoyi/mirrorlesscamera/b/a;->c:Landroid/content/ContentResolver;

    iget-object v3, v0, Lcom/xiaoyi/mirrorlesscamera/b/a;->i:Landroid/net/Uri;

    iget-object v4, v0, Lcom/xiaoyi/mirrorlesscamera/b/a;->k:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data like \'%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "%\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 425
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "_id"

    .line 426
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "date_modified"

    .line 427
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 428
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 429
    iget-object v2, v0, Lcom/xiaoyi/mirrorlesscamera/b/a;->c:Landroid/content/ContentResolver;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x3

    invoke-static {v2, v7, v8, v9, v3}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 430
    iget-object v10, v0, Lcom/xiaoyi/mirrorlesscamera/b/a;->c:Landroid/content/ContentResolver;

    iget-object v11, v0, Lcom/xiaoyi/mirrorlesscamera/b/a;->h:Landroid/net/Uri;

    iget-object v12, v0, Lcom/xiaoyi/mirrorlesscamera/b/a;->j:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez p2, :cond_0

    .line 431
    new-instance v3, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    invoke-direct {v3}, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    .line 432
    :goto_0
    sget-object v7, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;->TYPE_VIDEO:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    iput-object v7, v3, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileType:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    .line 433
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->originalPath:Ljava/lang/String;

    .line 434
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->originalUrl:Ljava/lang/String;

    .line 435
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->previewUrl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 436
    iput-boolean v1, v3, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->isProtected:Z

    .line 437
    iput-object v4, v3, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->mediaId:Ljava/lang/String;

    .line 438
    iput-wide v5, v3, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->createTime:J

    if-eqz v2, :cond_1

    .line 439
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "_data"

    .line 440
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->thumbnail:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, ""

    .line 444
    iput-object v1, v3, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->thumbnail:Ljava/lang/String;

    :goto_1
    return-object v3

    :cond_2
    return-object v3
.end method

.method public declared-synchronized a()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->q:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/b/a;->c(Ljava/lang/String;)V

    .line 338
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/b/a;->d()V

    .line 340
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/b/a;->c()V

    .line 341
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/b/a;->e()V

    .line 343
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/b/a;->f()Ljava/util/ArrayList;

    move-result-object v4

    .line 344
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/b/a;->g()Ljava/util/ArrayList;

    move-result-object v5

    .line 345
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/b/a;->h()Ljava/util/ArrayList;

    move-result-object v6

    .line 346
    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/b/o;->a()Lcom/xiaoyi/mirrorlesscamera/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaoyi/mirrorlesscamera/b/o;->e()Ljava/util/ArrayList;

    move-result-object v7

    .line 348
    new-instance v0, Lcom/xiaoyi/mirrorlesscamera/b/a$2;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v3, v1, v2

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/xiaoyi/mirrorlesscamera/b/a$2;-><init>(Lcom/xiaoyi/mirrorlesscamera/b/a;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 336
    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/xiaoyi/mirrorlesscamera/b/a$a;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->s:Lcom/xiaoyi/mirrorlesscamera/b/a$a;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;",
            ">;)V"
        }
    .end annotation

    .line 401
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    const/4 v1, -0x1

    .line 405
    :try_start_0
    iget-object v2, v0, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileType:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    sget-object v3, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;->TYPE_NORMAL_IMG:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 406
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->c:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->mediaId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 407
    :cond_0
    iget-object v2, v0, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileType:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    sget-object v3, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;->TYPE_VIDEO:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    if-ne v2, v3, :cond_1

    .line 408
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->c:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->mediaId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 409
    :cond_1
    iget-object v2, v0, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileType:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    sget-object v3, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;->TYPE_RAW_IMG:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    if-ne v2, v3, :cond_2

    .line 410
    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->c:Landroid/content/ContentResolver;

    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->mediaId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 411
    :try_start_1
    iget-object v1, v0, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->thumbnail:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaoyi/mirrorlesscamera/b/g;->i(Ljava/lang/String;)Z

    .line 412
    iget-object v0, v0, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->previewUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaoyi/mirrorlesscamera/b/g;->i(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    goto :goto_2

    :catch_0
    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_2

    :catch_1
    const/4 v0, -0x1

    :goto_1
    const-string v1, "AlbumUtil"

    const-string v2, "del error"

    .line 415
    invoke-static {v1, v2}, Lcom/xiaoyi/util/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v1, "AlbumUtil"

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlbumUtil.delAlbumsFromMediaStore: deleted rows number-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaoyi/util/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public a(Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;)Z
    .locals 6

    const/4 v0, -0x1

    .line 383
    :try_start_0
    iget-object v1, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileType:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    sget-object v2, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;->TYPE_NORMAL_IMG:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 384
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->c:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->mediaId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 385
    :cond_0
    iget-object v1, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileType:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    sget-object v2, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;->TYPE_VIDEO:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    if-ne v1, v2, :cond_1

    .line 386
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->c:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->mediaId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 387
    :cond_1
    iget-object v1, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileType:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    sget-object v2, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;->TYPE_RAW_IMG:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    if-ne v1, v2, :cond_2

    .line 388
    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->c:Landroid/content/ContentResolver;

    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->mediaId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 390
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "\u4e0d\u652f\u6301\u7684\u6587\u4ef6\u683c\u5f0f"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "AlbumUtil"

    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-----albumFile.fileType------>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileType:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaoyi/util/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 v1, -0x1

    :goto_0
    const-string p1, "AlbumUtil"

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlbumUtil.delAlbumsFromMediaStore: deleted rows number-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/xiaoyi/util/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public b(Ljava/lang/String;)Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;
    .locals 10

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/b/o;->a()Lcom/xiaoyi/mirrorlesscamera/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaoyi/mirrorlesscamera/b/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Thumb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/b/o;->a()Lcom/xiaoyi/mirrorlesscamera/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaoyi/mirrorlesscamera/b/o;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Preview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 602
    invoke-static {p1}, Lcom/xiaoyi/mirrorlesscamera/b/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 603
    invoke-static {p1}, Lcom/xiaoyi/mirrorlesscamera/b/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 604
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 606
    new-instance v6, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    invoke-direct {v6}, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;-><init>()V

    .line 607
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TF"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->mediaId:Ljava/lang/String;

    .line 608
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/b/o;->a()Lcom/xiaoyi/mirrorlesscamera/b/o;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaoyi/mirrorlesscamera/b/o;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->originalPath:Ljava/lang/String;

    .line 609
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaoyi/mirrorlesscamera/b/o;->a()Lcom/xiaoyi/mirrorlesscamera/b/o;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaoyi/mirrorlesscamera/b/o;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->originalUrl:Ljava/lang/String;

    .line 611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "JPG"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 612
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "JPG"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 613
    goto :cond_0

    .line 614
    :cond_0
    new-instance v8, Lcom/xiaoyi/mirrorlesscamera/bean/YiMirrorlessDNG;

    invoke-direct {v8, p1}, Lcom/xiaoyi/mirrorlesscamera/bean/YiMirrorlessDNG;-><init>(Ljava/lang/String;)V

    .line 615
    invoke-static {v3}, Lcom/xiaoyi/mirrorlesscamera/b/g;->g(Ljava/lang/String;)Z

    move-result p1

    nop

    .line 616
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "JPG"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, v0, p1}, Lcom/xiaoyi/mirrorlesscamera/bean/YiMirrorlessDNG;->generateThumbnail(Ljava/lang/String;Ljava/lang/String;)Z

    .line 618
    :cond_1
    invoke-static {v7}, Lcom/xiaoyi/mirrorlesscamera/b/g;->g(Ljava/lang/String;)Z

    move-result p1

    nop

    .line 619
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "JPG"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, v1, p1}, Lcom/xiaoyi/mirrorlesscamera/bean/YiMirrorlessDNG;->generatePreview(Ljava/lang/String;Ljava/lang/String;)Z

    .line 623
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->previewUrl:Ljava/lang/String;

    .line 624
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->thumbnail:Ljava/lang/String;

    .line 625
    sget-object p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;->TYPE_RAW_IMG:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    iput-object p1, v6, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileType:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    .line 626
    iput-wide v4, v6, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->createTime:J

    const/4 p1, 0x0

    .line 627
    iput-boolean p1, v6, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->isProtected:Z

    .line 629
    iget-wide v0, v6, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->createTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xa

    const-wide/16 v0, 0x0

    const-string p1, "MM/dd"

    .line 632
    invoke-static {p1, v0, v1}, Lcom/xiaoyi/mirrorlesscamera/b/p;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->dayDate:Ljava/lang/String;

    return-object v6
.end method

.method public b(Ljava/lang/String;Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;)Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 456
    iget-object v2, v1, Lcom/xiaoyi/mirrorlesscamera/b/a;->c:Landroid/content/ContentResolver;

    iget-object v3, v1, Lcom/xiaoyi/mirrorlesscamera/b/a;->e:Landroid/net/Uri;

    iget-object v4, v1, Lcom/xiaoyi/mirrorlesscamera/b/a;->g:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data like \'%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "%\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 462
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "_id"

    .line 464
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "date_modified"

    .line 465
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 466
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 467
    iget-object v7, v1, Lcom/xiaoyi/mirrorlesscamera/b/a;->c:Landroid/content/ContentResolver;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v10, 0x3

    invoke-static {v7, v8, v9, v10, v3}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 468
    iget-object v11, v1, Lcom/xiaoyi/mirrorlesscamera/b/a;->c:Landroid/content/ContentResolver;

    iget-object v12, v1, Lcom/xiaoyi/mirrorlesscamera/b/a;->d:Landroid/net/Uri;

    iget-object v13, v1, Lcom/xiaoyi/mirrorlesscamera/b/a;->f:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "image_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 474
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v3, "_data"

    .line 475
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez p2, :cond_0

    .line 478
    new-instance v8, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    invoke-direct {v8}, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;-><init>()V

    goto :goto_0

    .line 480
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    .line 482
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->originalPath:Ljava/lang/String;

    .line 483
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->originalUrl:Ljava/lang/String;

    .line 484
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->previewUrl:Ljava/lang/String;

    .line 485
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->thumbnail:Ljava/lang/String;

    .line 486
    iput-wide v5, v8, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->createTime:J

    .line 487
    iput-object v4, v8, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->mediaId:Ljava/lang/String;

    .line 488
    sget-object v4, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;->TYPE_NORMAL_IMG:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    iput-object v4, v8, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileType:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    const/4 v4, 0x0

    .line 489
    iput-boolean v4, v8, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->isProtected:Z

    .line 490
    iget-object v4, v8, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->exifInterface:Lcom/xiaoyi/mirrorlesscamera/bean/YiExifInterface;

    if-nez v4, :cond_1

    .line 491
    new-instance v4, Lcom/xiaoyi/mirrorlesscamera/bean/YiExifInterface;

    invoke-direct {v4, v0}, Lcom/xiaoyi/mirrorlesscamera/bean/YiExifInterface;-><init>(Ljava/lang/String;)V

    iput-object v4, v8, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->exifInterface:Lcom/xiaoyi/mirrorlesscamera/bean/YiExifInterface;

    :cond_1
    const-string v0, "AlbumUtil"

    .line 493
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thumbnail path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaoyi/util/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v8

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    :goto_1
    return-object v3
.end method

.method public declared-synchronized b()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->r:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaoyi/mirrorlesscamera/b/a;->c(Ljava/lang/String;)V

    .line 359
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/b/a;->d()V

    .line 361
    invoke-direct {p0}, Lcom/xiaoyi/mirrorlesscamera/b/a;->f()Ljava/util/ArrayList;

    move-result-object v0

    .line 363
    new-instance v1, Lcom/xiaoyi/mirrorlesscamera/b/a$3;

    invoke-direct {v1, p0}, Lcom/xiaoyi/mirrorlesscamera/b/a$3;-><init>(Lcom/xiaoyi/mirrorlesscamera/b/a;)V

    invoke-static {v1}, Lcom/yiaction/common/util/b;->a(Ljava/lang/Runnable;)V

    .line 374
    new-instance v1, Lcom/xiaoyi/mirrorlesscamera/b/a$4;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, p0, v2, v0}, Lcom/xiaoyi/mirrorlesscamera/b/a$4;-><init>(Lcom/xiaoyi/mirrorlesscamera/b/a;ILjava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    .line 357
    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/String;Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;)Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;
    .locals 7

    .line 571
    new-instance v0, Lcom/xiaoyi/mirrorlesscamera/bean/YiMirrorlessDNG;

    invoke-direct {v0, p1}, Lcom/xiaoyi/mirrorlesscamera/bean/YiMirrorlessDNG;-><init>(Ljava/lang/String;)V

    .line 572
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dng_thumb_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->b:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "dng_preview_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 574
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileName:Ljava/lang/String;

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "JPG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/xiaoyi/mirrorlesscamera/bean/YiMirrorlessDNG;->generateThumbnail(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileName:Ljava/lang/String;

    const-string v6, "\\."

    .line 575
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "JPG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/xiaoyi/mirrorlesscamera/bean/YiMirrorlessDNG;->generatePreview(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {p2}, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->originalPath:Ljava/lang/String;

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaoyi/mirrorlesscamera/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->originalUrl:Ljava/lang/String;

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileName:Ljava/lang/String;

    const-string v2, "\\."

    .line 582
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "JPG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->previewUrl:Ljava/lang/String;

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileName:Ljava/lang/String;

    const-string v1, "\\."

    .line 584
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v5

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "JPG"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->thumbnail:Ljava/lang/String;

    .line 585
    sget-object p1, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;->TYPE_RAW_IMG:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    iput-object p1, p2, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->fileType:Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile$FileType;

    .line 586
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->createTime:J

    .line 587
    iput-boolean v5, p2, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->isProtected:Z

    .line 589
    iget-wide v0, p2, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->createTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xa

    const-wide/16 v0, 0x0

    const-string p1, "MM/dd"

    .line 592
    invoke-static {p1, v0, v1}, Lcom/xiaoyi/mirrorlesscamera/b/p;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/xiaoyi/mirrorlesscamera/bean/AlbumFile;->dayDate:Ljava/lang/String;

    return-object p2

    :cond_0
    return-object v2
.end method
