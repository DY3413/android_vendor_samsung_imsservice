.class public Lorg/apache/harmony/awt/datatransfer/DataTransferThread;
.super Ljava/lang/Thread;
.source "DataTransferThread.java"


# instance fields
.field private final dtk:Lorg/apache/harmony/awt/datatransfer/DTK;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/awt/datatransfer/DTK;)V
    .locals 1

    const-string v0, "AWT-DataTransferThread"

    .line 32
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 34
    iput-object p1, p0, Lorg/apache/harmony/awt/datatransfer/DataTransferThread;->dtk:Lorg/apache/harmony/awt/datatransfer/DTK;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 39
    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataTransferThread;->dtk:Lorg/apache/harmony/awt/datatransfer/DTK;

    invoke-virtual {v0}, Lorg/apache/harmony/awt/datatransfer/DTK;->initDragAndDrop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 39
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    iget-object p0, p0, Lorg/apache/harmony/awt/datatransfer/DataTransferThread;->dtk:Lorg/apache/harmony/awt/datatransfer/DTK;

    invoke-virtual {p0}, Lorg/apache/harmony/awt/datatransfer/DTK;->runEventLoop()V

    return-void

    :catchall_0
    move-exception v0

    .line 43
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 44
    throw v0

    :catchall_1
    move-exception v0

    .line 39
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public start()V
    .locals 2

    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 56
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    .line 51
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
