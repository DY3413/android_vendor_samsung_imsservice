.class public Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;
.super Ljava/lang/Object;
.source "CphDeviceManager.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field private static cacheMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/cmcp2phelper/data/CphMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static sHandler:Landroid/os/Handler;

.field private static sMaxPeer:I

.field private static sWhat:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcp2phelper/1.3.06/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->LOG_TAG:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToCache(Lcom/samsung/android/cmcp2phelper/data/CphMessage;)V
    .locals 3

    .line 28
    sget-object v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceId ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") is already added"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 33
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New peer is discovered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", count : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-object p0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    sget v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sMaxPeer:I

    if-ne p0, v1, :cond_1

    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "All peers ("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sMaxPeer:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") are discovered"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 37
    invoke-static {p0}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->notify(Z)V

    :cond_1
    return-void
.end method

.method public static declared-synchronized clearCache()V
    .locals 2

    const-class v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getDeviceList(Ljava/lang/String;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "--- P2P reachable peer list ----"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    .line 45
    invoke-virtual {v2}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getLineId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    new-instance v3, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getLineId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v2, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reachable peer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_1
    sget-object p0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "--- end ----"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static declared-synchronized notify(Z)V
    .locals 5

    const-class v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 69
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-ne p0, v1, :cond_0

    .line 71
    sget-object p0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sHandler:Landroid/os/Handler;

    sget v4, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sWhat:I

    invoke-virtual {p0, v4, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 73
    :cond_0
    sget-object p0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sHandler:Landroid/os/Handler;

    sget v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sWhat:I

    invoke-virtual {p0, v1, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    :goto_0
    sput-object v2, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setCallback(Landroid/os/Handler;I)V
    .locals 3

    const-class v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;

    monitor-enter v0

    .line 56
    :try_start_0
    sput-object p0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sHandler:Landroid/os/Handler;

    .line 57
    sput p1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sWhat:I

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0, p1, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setMaxPeer(I)V
    .locals 1

    const-class v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;

    monitor-enter v0

    .line 64
    :try_start_0
    sput p0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sMaxPeer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
