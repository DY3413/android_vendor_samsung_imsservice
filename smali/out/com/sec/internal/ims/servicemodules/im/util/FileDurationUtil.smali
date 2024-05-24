.class public Lcom/sec/internal/ims/servicemodules/im/util/FileDurationUtil;
.super Ljava/lang/Object;
.source "FileDurationUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileDurationUtil"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDuration(Landroid/media/MediaMetadataRetriever;)J
    .registers 5

    const/16 v0, 0x9

    const-wide/16 v1, 0x0

    .line 99
    :try_start_4
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    .line 98
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 100
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/util/FileDurationUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileDurationTime, time = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_27
    return-wide v1
.end method

.method public static getFileDurationTime(Landroid/content/Context;Landroid/net/Uri;)I
    .registers 5

    .line 64
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FileDurationUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileDurationTime for contentUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_29

    if-nez p1, :cond_1f

    goto :goto_29

    .line 70
    :cond_1f
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FileDurationUtil;->getMediaMetadataRetriever(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaMetadataRetriever;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/util/FileDurationUtil;->getDuration(Landroid/media/MediaMetadataRetriever;)J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_29
    :goto_29
    const/4 p0, -0x1

    return p0
.end method

.method public static getFileDurationTime(Ljava/lang/String;)I
    .registers 4

    .line 42
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FileDurationUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileDurationTime for filePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-nez p0, :cond_1e

    return v0

    .line 48
    :cond_1e
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2a

    return v0

    .line 53
    :cond_2a
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/im/util/FileDurationUtil;->getMediaMetadataRetriever(Ljava/io/File;)Landroid/media/MediaMetadataRetriever;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/util/FileDurationUtil;->getDuration(Landroid/media/MediaMetadataRetriever;)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method private static getMediaMetadataRetriever(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaMetadataRetriever;
    .registers 3

    .line 86
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 88
    :try_start_5
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_d
    return-object v0
.end method

.method private static getMediaMetadataRetriever(Ljava/io/File;)Landroid/media/MediaMetadataRetriever;
    .registers 3

    .line 75
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 76
    :try_start_5
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_a} :catch_1f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_1f

    .line 77
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_15

    .line 78
    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_14} :catch_1f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_1f

    goto :goto_23

    :catchall_15
    move-exception p0

    .line 76
    :try_start_16
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception v1

    :try_start_1b
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1e
    throw p0
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1f} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_23
    return-object v0
.end method
