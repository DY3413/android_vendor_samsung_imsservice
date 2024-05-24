.class public Lcom/sec/internal/helper/picturetool/ImageDimensionsExtractor;
.super Ljava/lang/Object;
.source "ImageDimensionsExtractor.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImageDimensionsExtractor"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeStream(Ljava/io/Closeable;)V
    .registers 4

    if-eqz p0, :cond_1d

    .line 59
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_1d

    :catch_6
    move-exception p0

    .line 61
    sget-object v0, Lcom/sec/internal/helper/picturetool/ImageDimensionsExtractor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeStream: e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :goto_1d
    return-void
.end method


# virtual methods
.method public extract(Ljava/io/File;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 29
    sget-object p0, Lcom/sec/internal/helper/picturetool/ImageDimensionsExtractor;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImageDimensions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 36
    :try_start_1b
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 37
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 39
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_28} :catch_42
    .catchall {:try_start_1b .. :try_end_28} :catchall_3e

    .line 40
    :try_start_28
    invoke-static {v1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 42
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 43
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_3b} :catch_3c
    .catchall {:try_start_28 .. :try_end_3b} :catchall_4b

    goto :goto_47

    :catch_3c
    move-exception p1

    goto :goto_44

    :catchall_3e
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_4c

    :catch_42
    move-exception p1

    move-object v1, p0

    .line 48
    :goto_44
    :try_start_44
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4b

    .line 50
    :goto_47
    invoke-static {v1}, Lcom/sec/internal/helper/picturetool/ImageDimensionsExtractor;->closeStream(Ljava/io/Closeable;)V

    return-object p0

    :catchall_4b
    move-exception p0

    :goto_4c
    invoke-static {v1}, Lcom/sec/internal/helper/picturetool/ImageDimensionsExtractor;->closeStream(Ljava/io/Closeable;)V

    .line 51
    throw p0
.end method
