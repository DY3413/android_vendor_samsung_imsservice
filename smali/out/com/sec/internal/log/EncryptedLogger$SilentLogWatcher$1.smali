.class Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;
.super Landroid/os/FileObserver;
.source "EncryptedLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;-><init>(Lcom/sec/internal/log/EncryptedLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

.field final synthetic val$index:I

.field final synthetic val$this$0:Lcom/sec/internal/log/EncryptedLogger;


# direct methods
.method constructor <init>(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;Ljava/io/File;Lcom/sec/internal/log/EncryptedLogger;I)V
    .registers 5

    .line 264
    iput-object p1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    iput-object p3, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->val$this$0:Lcom/sec/internal/log/EncryptedLogger;

    iput p4, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->val$index:I

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 5

    .line 267
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    invoke-static {v0}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->-$$Nest$fgetSILENT_LOG_HOME(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)Ljava/nio/file/Path;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->val$index:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_40

    .line 268
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_40

    and-int/lit16 p2, p1, 0x100

    const/16 v0, 0x100

    if-ne p2, v0, :cond_2e

    .line 270
    iget-object p1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    iget-object p1, p1, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->fileObservers:[Landroid/os/FileObserver;

    iget p0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->val$index:I

    add-int/lit8 p0, p0, 0x1

    aget-object p0, p1, p0

    invoke-virtual {p0}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_40

    :cond_2e
    const/16 p2, 0x200

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_40

    .line 272
    iget-object p1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    iget-object p1, p1, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->fileObservers:[Landroid/os/FileObserver;

    iget p0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->val$index:I

    add-int/lit8 p0, p0, 0x1

    aget-object p0, p1, p0

    invoke-virtual {p0}, Landroid/os/FileObserver;->stopWatching()V

    :cond_40
    :goto_40
    return-void
.end method

.method public startWatching()V
    .registers 5

    .line 279
    invoke-super {p0}, Landroid/os/FileObserver;->startWatching()V

    .line 281
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    invoke-static {v0}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->-$$Nest$fgetSILENT_LOG_HOME(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->getRoot()Ljava/nio/file/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    invoke-static {v1}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->-$$Nest$fgetSILENT_LOG_HOME(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)Ljava/nio/file/Path;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->val$index:I

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/nio/file/Path;->subpath(II)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v1, v3, [Ljava/nio/file/LinkOption;

    .line 283
    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 284
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    iget-object v0, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->fileObservers:[Landroid/os/FileObserver;

    iget p0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->val$index:I

    add-int/lit8 p0, p0, 0x1

    aget-object p0, v0, p0

    invoke-virtual {p0}, Landroid/os/FileObserver;->startWatching()V

    :cond_35
    return-void
.end method

.method public stopWatching()V
    .registers 4

    .line 290
    invoke-super {p0}, Landroid/os/FileObserver;->stopWatching()V

    .line 292
    iget v0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->val$index:I

    :goto_5
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    iget-object v1, v1, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->fileObservers:[Landroid/os/FileObserver;

    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 293
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    goto :goto_5

    :cond_14
    return-void
.end method
