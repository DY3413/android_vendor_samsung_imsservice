.class Lcom/sec/internal/log/EncryptedLogger$1;
.super Ljava/lang/Thread;
.source "EncryptedLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/log/EncryptedLogger;->startSilentLogWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/log/EncryptedLogger;


# direct methods
.method constructor <init>(Lcom/sec/internal/log/EncryptedLogger;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/sec/internal/log/EncryptedLogger$1;->this$0:Lcom/sec/internal/log/EncryptedLogger;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v0, 0xa

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    :try_start_0
    const-string v0, "/sdcard"

    new-array v3, v1, [Ljava/lang/String;

    .line 234
    invoke-static {v0, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v3, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$1;->this$0:Lcom/sec/internal/log/EncryptedLogger;

    new-instance v2, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    invoke-direct {v2, v0}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;-><init>(Lcom/sec/internal/log/EncryptedLogger;)V

    invoke-static {v0, v2}, Lcom/sec/internal/log/EncryptedLogger;->-$$Nest$fputsilentLogWatcher(Lcom/sec/internal/log/EncryptedLogger;Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)V

    .line 236
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$1;->this$0:Lcom/sec/internal/log/EncryptedLogger;

    invoke-static {v0}, Lcom/sec/internal/log/EncryptedLogger;->-$$Nest$fgetsilentLogWatcher(Lcom/sec/internal/log/EncryptedLogger;)Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->startWatch()V

    move v0, v1

    goto :goto_0

    .line 239
    :cond_0
    invoke-static {}, Lcom/sec/internal/log/EncryptedLogger;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/sdcard is not mounted yet"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0xbb8

    .line 243
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 247
    invoke-static {}, Lcom/sec/internal/log/EncryptedLogger;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method
