.class Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$1;
.super Ljava/util/TimerTask;
.source "EncryptedLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->startWatching()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;


# direct methods
.method public static synthetic $r8$lambda$bDKMnE43FqT6IZh2U7CTJDAg_8w(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$1;->lambda$run$0(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;)V
    .registers 2

    .line 338
    iput-object p1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$1;->this$2:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private static synthetic lambda$run$0(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    .line 345
    invoke-static {p0, v1}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/file/attribute/FileTime;->compareTo(Ljava/nio/file/attribute/FileTime;)I

    move-result v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_16

    if-lez v0, :cond_14

    goto :goto_15

    :cond_14
    move-object p0, p1

    :goto_15
    return-object p0

    :catch_16
    move-exception p0

    .line 347
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$1;->this$2:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;

    invoke-static {v0}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->-$$Nest$fgetmPath(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 352
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    .line 353
    invoke-static {v0, v1}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_64

    .line 354
    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "20\\d{6}_\\d{6}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 355
    iget-object v1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$1;->this$2:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;

    invoke-static {v1}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->-$$Nest$fgettimer(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;

    iget-object p0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$1;->this$2:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;

    invoke-direct {v2, p0, v0}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;-><init>(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;Ljava/nio/file/Path;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_57} :catch_58

    goto :goto_64

    :catch_58
    move-exception p0

    .line 359
    invoke-static {}, Lcom/sec/internal/log/EncryptedLogger;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_64
    :goto_64
    return-void
.end method
