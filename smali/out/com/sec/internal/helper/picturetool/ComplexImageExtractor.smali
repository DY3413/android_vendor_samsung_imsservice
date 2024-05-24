.class public Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;
.super Ljava/lang/Object;
.source "ComplexImageExtractor.java"


# static fields
.field private static final CONTENT_TYPE_GIF:Ljava/lang/String; = "image/gif"

.field private static final LOG_TAG:Ljava/lang/String; = "ComplexImageExtractor"

.field private static final TEMP_FILE_PREFIX:Ljava/lang/String; = "FT_thumb"


# instance fields
.field private mDecoder:Lcom/sec/internal/helper/picturetool/GifDecoder;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->mDecoder:Lcom/sec/internal/helper/picturetool/GifDecoder;

    return-void
.end method

.method private getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string p0, "."

    .line 25
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    add-int/lit8 p0, p0, 0x1

    .line 31
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public extractFrom(Ljava/io/File;)Ljava/io/File;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 37
    sget-object p0, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "imageFile == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 40
    :cond_b
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 42
    sget-object p0, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "fileName == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 45
    :cond_1d
    invoke-static {v1}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/gif"

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_144

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gid decoder: extractFrom, file="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ComplexImageExtractor"

    .line 48
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v1, Lcom/sec/internal/helper/picturetool/GifDecoder;

    invoke-direct {v1}, Lcom/sec/internal/helper/picturetool/GifDecoder;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->mDecoder:Lcom/sec/internal/helper/picturetool/GifDecoder;

    .line 52
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_12d

    .line 59
    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->mDecoder:Lcom/sec/internal/helper/picturetool/GifDecoder;

    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->getFrames()Ljava/util/Vector;

    move-result-object p0

    .line 61
    invoke-static {p0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_115

    :try_start_63
    const-string v1, "FT_thumb"

    const-string v2, ".jpg"

    .line 70
    invoke-static {v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 71
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_70} :catch_c9
    .catchall {:try_start_63 .. :try_end_70} :catchall_c7

    const/4 v0, 0x0

    .line 73
    :try_start_71
    invoke-virtual {p0, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;

    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_81} :catch_c4
    .catchall {:try_start_71 .. :try_end_81} :catchall_c1

    if-nez p0, :cond_a2

    .line 84
    :try_start_83
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_91
    .catchall {:try_start_83 .. :try_end_86} :catchall_8f

    .line 91
    :try_start_86
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_98

    :catch_8a
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_98

    :catchall_8f
    move-exception p0

    goto :goto_99

    :catch_91
    move-exception p0

    .line 87
    :try_start_92
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_8f

    .line 91
    :try_start_95
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_8a

    :goto_98
    return-object p1

    :goto_99
    :try_start_99
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    goto :goto_a1

    :catch_9d
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    :goto_a1
    throw p0

    .line 84
    :cond_a2
    :try_start_a2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_b0
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_ae

    .line 91
    :try_start_a5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_a9

    goto :goto_b7

    :catch_a9
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b7

    :catchall_ae
    move-exception p0

    goto :goto_b8

    :catch_b0
    move-exception p0

    .line 87
    :try_start_b1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_ae

    .line 91
    :try_start_b4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_a9

    :goto_b7
    return-object v1

    :goto_b8
    :try_start_b8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bc

    goto :goto_c0

    :catch_bc
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    :goto_c0
    throw p0

    :catchall_c1
    move-exception p0

    move-object v0, v2

    goto :goto_f1

    :catch_c4
    move-exception p0

    move-object v0, v2

    goto :goto_ca

    :catchall_c7
    move-exception p0

    goto :goto_f1

    :catch_c9
    move-exception p0

    .line 80
    :goto_ca
    :try_start_ca
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_c7

    if-eqz v0, :cond_e6

    .line 84
    :try_start_cf
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d5
    .catchall {:try_start_cf .. :try_end_d2} :catchall_d3

    goto :goto_e6

    :catchall_d3
    move-exception p0

    goto :goto_dd

    :catch_d5
    move-exception p0

    .line 87
    :try_start_d6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d9
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_d3

    .line 91
    :try_start_d9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_ec

    goto :goto_144

    :goto_dd
    :try_start_dd
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_e1

    goto :goto_e5

    :catch_e1
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    :goto_e5
    throw p0

    :cond_e6
    :goto_e6
    if-eqz v0, :cond_144

    .line 91
    :try_start_e8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_ec

    goto :goto_144

    :catch_ec
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_144

    :goto_f1
    if-eqz v0, :cond_10a

    .line 84
    :try_start_f3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f6} :catch_f9
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_f7

    goto :goto_10a

    :catchall_f7
    move-exception p0

    goto :goto_101

    :catch_f9
    move-exception p1

    .line 87
    :try_start_fa
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_fd
    .catchall {:try_start_fa .. :try_end_fd} :catchall_f7

    .line 91
    :try_start_fd
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_110

    goto :goto_114

    :goto_101
    :try_start_101
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_105

    goto :goto_109

    :catch_105
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    :goto_109
    throw p0

    :cond_10a
    :goto_10a
    if-eqz v0, :cond_114

    .line 91
    :try_start_10c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_10f} :catch_110

    goto :goto_114

    :catch_110
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    :cond_114
    :goto_114
    throw p0

    .line 63
    :cond_115
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 65
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Requested frame was: 0 but %d only available."

    .line 63
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_12d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GifDecoder read routine has ended with an error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_144
    :goto_144
    return-object p1
.end method

.method public release()V
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->mDecoder:Lcom/sec/internal/helper/picturetool/GifDecoder;

    if-eqz p0, :cond_7

    .line 105
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->clean()V

    :cond_7
    return-void
.end method
