.class public Lcom/sec/internal/helper/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final FILE_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.sec.internal.ims.rcs.fileprovider"

.field private static final LOG_TAG:Ljava/lang/String; = "FileUtils"

.field private static final MAX_FILE_NAME_LENGTH:I = 0x80


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J
    .registers 7

    const-wide/16 v0, 0x0

    if-nez p1, :cond_5

    return-wide v0

    :cond_5
    const/4 v2, 0x0

    .line 114
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_31

    .line 116
    sget-object p0, Lcom/sec/internal/helper/FileUtils;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI open failed!!!! Uri = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_26} :catch_67
    .catchall {:try_start_6 .. :try_end_26} :catchall_65

    if-eqz v2, :cond_30

    .line 127
    :try_start_28
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_30
    :goto_30
    return-wide v0

    .line 119
    :cond_31
    :try_start_31
    sget-object p0, Lcom/sec/internal/helper/FileUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ==> "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    new-array p1, p0, [Ljava/lang/String;

    .line 120
    invoke-static {p2, p1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/nio/file/CopyOption;

    sget-object v3, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v3, p2, p0

    invoke-static {v2, p1, p2}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J

    move-result-wide p0
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_5c} :catch_67
    .catchall {:try_start_31 .. :try_end_5c} :catchall_65

    .line 127
    :try_start_5c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception p2

    .line 129
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_64
    return-wide p0

    :catchall_65
    move-exception p0

    goto :goto_89

    :catch_67
    move-exception p0

    .line 122
    :try_start_68
    sget-object p1, Lcom/sec/internal/helper/FileUtils;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File get from TP failed by "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_68 .. :try_end_7e} :catchall_65

    if-eqz v2, :cond_88

    .line 127
    :try_start_80
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_88

    :catch_84
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_88
    :goto_88
    return-wide v0

    :goto_89
    if-eqz v2, :cond_93

    .line 127
    :try_start_8b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_93

    :catch_8f
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 132
    :cond_93
    :goto_93
    throw p0
.end method

.method public static copyFile(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)J
    .registers 8

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_9

    return-wide v1

    :cond_9
    const/4 v0, 0x0

    .line 142
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v3, "rw"

    invoke-virtual {p0, p2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_38

    .line 144
    sget-object p0, Lcom/sec/internal/helper/FileUtils;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI open failed!!!! Uri = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2d} :catch_67
    .catchall {:try_start_a .. :try_end_2d} :catchall_65

    if-eqz v0, :cond_37

    .line 155
    :try_start_2f
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception p0

    .line 157
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_37
    :goto_37
    return-wide v1

    .line 147
    :cond_38
    :try_start_38
    sget-object p0, Lcom/sec/internal/helper/FileUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    .line 148
    invoke-static {p1, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J

    move-result-wide p0
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_5c} :catch_67
    .catchall {:try_start_38 .. :try_end_5c} :catchall_65

    .line 155
    :try_start_5c
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception p2

    .line 157
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_64
    return-wide p0

    :catchall_65
    move-exception p0

    goto :goto_76

    :catch_67
    move-exception p0

    .line 150
    :try_start_68
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_65

    if-eqz v0, :cond_75

    .line 155
    :try_start_6d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_75

    :catch_71
    move-exception p0

    .line 157
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_75
    :goto_75
    return-wide v1

    :goto_76
    if-eqz v0, :cond_80

    .line 155
    :try_start_78
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_80

    :catch_7c
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 160
    :cond_80
    :goto_80
    throw p0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 2

    .line 48
    :try_start_0
    invoke-static {p0, p1}, Lcom/sec/internal/helper/FileUtils;->copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method public static copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 57
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    :cond_9
    const/4 v0, 0x0

    .line 63
    :try_start_a
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_13} :catch_3b
    .catchall {:try_start_a .. :try_end_13} :catchall_38

    .line 64
    :try_start_13
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v4, 0x0

    .line 65
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    move-object v2, v0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_27
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_27} :catch_33
    .catchall {:try_start_13 .. :try_end_27} :catchall_2e

    .line 70
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    .line 73
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_4a

    :catchall_2e
    move-exception p1

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    goto :goto_4c

    :catch_33
    move-exception p1

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    goto :goto_3d

    :catchall_38
    move-exception p1

    move-object p0, v0

    goto :goto_4c

    :catch_3b
    move-exception p1

    move-object p0, v0

    .line 67
    :goto_3d
    :try_start_3d
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4b

    if-eqz v0, :cond_45

    .line 70
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_45
    if-eqz p0, :cond_4a

    .line 73
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_4a
    :goto_4a
    return-void

    :catchall_4b
    move-exception p1

    :goto_4c
    if-eqz v0, :cond_51

    .line 70
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_51
    if-eqz p0, :cond_56

    .line 73
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    .line 75
    :cond_56
    throw p1
.end method

.method public static copyFileToCacheFromUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_48

    .line 79
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_48

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_48

    .line 83
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_24

    .line 85
    sget-object p0, Lcom/sec/internal/helper/FileUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Unable to get Cache Dir!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 90
    :cond_24
    :try_start_24
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v1, p1, v2}, Lcom/sec/internal/helper/FilePathGenerator;->generateUniqueFilePath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_38

    .line 92
    sget-object p0, Lcom/sec/internal/helper/FileUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Create internal path failed!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 96
    :cond_38
    invoke-static {p0, p2, p1}, Lcom/sec/internal/helper/FileUtils;->copyFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    move-result-wide v1
    :try_end_3c
    .catch Ljava/lang/NullPointerException; {:try_start_24 .. :try_end_3c} :catch_44
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_3c} :catch_44

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_43

    return-object p1

    :cond_43
    return-object v0

    :catch_44
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_48
    :goto_48
    return-object v0
.end method

.method public static deAccent(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_3c

    .line 282
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3c

    .line 286
    :cond_9
    sget-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    .line 287
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 289
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_3b

    .line 291
    sget-object p1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, p1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "[^\\p{ASCII}]"

    const-string v0, "_"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "`"

    .line 293
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\'"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3b
    return-object p0

    :cond_3c
    :goto_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static deleteDirectory(Ljava/nio/file/Path;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    :try_start_4
    new-array v1, v0, [Ljava/nio/file/FileVisitOption;

    .line 169
    invoke-static {p0, v1}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 170
    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/sec/internal/helper/FileUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/helper/FileUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 171
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/sec/internal/helper/FileUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sec/internal/helper/FileUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 172
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_23} :catch_25

    const/4 p0, 0x1

    return p0

    :catch_25
    move-exception p0

    .line 174
    sget-object v1, Lcom/sec/internal/helper/FileUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteDirectory exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static exists(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 4

    .line 209
    invoke-static {p0, p1}, Lcom/sec/internal/helper/FileUtils;->getSizeFromUri(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide p0

    const-wide/16 v0, -0x1

    cmp-long p0, p0, v0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static getContentType(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .registers 5

    .line 235
    invoke-static {p1}, Lcom/sec/internal/helper/FileUtils;->getContentTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "."

    .line 237
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v1}, Lcom/sec/internal/helper/FileUtils;->isMetaDataExtension(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 239
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/MetaDataUtil;->getContentType(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :cond_20
    if-nez v0, :cond_26

    .line 243
    invoke-static {}, Lcom/sec/internal/helper/FileUtils;->getUnkownContentType()Ljava/lang/String;

    move-result-object v0

    :cond_26
    return-object v0
.end method

.method public static getContentType(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    .line 220
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Lcom/sec/internal/helper/FileUtils;->getContentTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "."

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {v0}, Lcom/sec/internal/helper/FileUtils;->isMetaDataExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 225
    invoke-static {p0}, Lcom/sec/internal/helper/MetaDataUtil;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    :cond_24
    if-nez v1, :cond_2a

    .line 229
    invoke-static {}, Lcom/sec/internal/helper/FileUtils;->getUnkownContentType()Ljava/lang/String;

    move-result-object v1

    :cond_2a
    return-object v1
.end method

.method private static getContentTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "."

    .line 262
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 264
    invoke-static {p0}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->isTranslationDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 265
    invoke-static {p0}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return-object p0
.end method

.method public static getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 300
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const-string v0, "/"

    .line 304
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSizeFromUri(Landroid/content/Context;Landroid/net/Uri;)J
    .registers 5

    const-wide/16 v0, -0x1

    .line 200
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v2, "r"

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_24

    if-eqz p0, :cond_1e

    .line 201
    :try_start_f
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_14

    goto :goto_1e

    :catchall_14
    move-exception p1

    .line 200
    :try_start_15
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception p0

    :try_start_1a
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1d
    throw p1

    :cond_1e
    :goto_1e
    if-eqz p0, :cond_28

    .line 202
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception p0

    .line 203
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_28
    :goto_28
    return-wide v0
.end method

.method private static getUnkownContentType()Ljava/lang/String;
    .registers 2

    .line 249
    sget-object v0, Lcom/sec/internal/helper/FileUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ContentTypeTranslator error: UNKNOWN TYPE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "application/octet-stream"

    return-object v0
.end method

.method public static getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .registers 3

    .line 181
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const-string v0, "com.sec.internal.ims.rcs.fileprovider"

    .line 185
    invoke-static {p0, v0, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static isMetaDataExtension(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "3gp"

    .line 278
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "mp4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "heic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public static removeFile(Ljava/lang/String;)Z
    .registers 2

    .line 189
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 190
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 192
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method
