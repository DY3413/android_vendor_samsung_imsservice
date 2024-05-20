.class public Lcom/samsung/android/cmcnsd/CmcNsdManager;
.super Ljava/lang/Object;
.source "CmcNsdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;,
        Lcom/samsung/android/cmcnsd/CmcNsdManager$BindStatusListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_WIFI_AP_NETWORK:Lcom/samsung/android/cmcnsd/network/NsdNetwork;

.field public static final DEFAULT_WIFI_DIRECT_NETWORK:Lcom/samsung/android/cmcnsd/network/NsdNetwork;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mConnection:Landroid/content/ServiceConnection;

.field public final mContext:Landroid/content/Context;

.field public mIsBound:Z

.field public mIsNetworkAcquired:Z

.field public final mLastNetworks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/cmcnsd/network/NsdNetwork;",
            ">;"
        }
    .end annotation
.end field

.field public mListener:Lcom/samsung/android/cmcnsd/CmcNsdManager$BindStatusListener;

.field public final mNsdNetworkCallback:Lcom/samsung/android/cmcnsd/INsdNetworkCallback;

.field public final mNsdNetworkCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public mService:Lcom/samsung/android/cmcnsd/INsdService;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;

    invoke-direct {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;-><init>()V

    new-instance v1, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;

    invoke-direct {v1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;-><init>()V

    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v2}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->addTransport(I)Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;

    move-result-object v1

    const/4 v2, 0x7

    .line 32
    invoke-virtual {v1, v2}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->setCapabilities(I)Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->build()Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;->setCapabilities(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;->build()Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->DEFAULT_WIFI_AP_NETWORK:Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    .line 35
    new-instance v0, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;

    invoke-direct {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;-><init>()V

    new-instance v1, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;

    invoke-direct {v1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;-><init>()V

    const/4 v2, 0x1

    .line 37
    invoke-virtual {v1, v2}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->addTransport(I)Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->build()Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;->setCapabilities(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;->build()Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->DEFAULT_WIFI_DIRECT_NETWORK:Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mNsdNetworkCallbackList:Ljava/util/List;

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mLastNetworks:Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mIsBound:Z

    const/4 v2, 0x0

    .line 46
    iput-object v2, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mService:Lcom/samsung/android/cmcnsd/INsdService;

    .line 47
    iput-object v2, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mListener:Lcom/samsung/android/cmcnsd/CmcNsdManager$BindStatusListener;

    .line 48
    iput-boolean v1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mIsNetworkAcquired:Z

    .line 55
    new-instance v1, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;-><init>(Lcom/samsung/android/cmcnsd/CmcNsdManager;)V

    iput-object v1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mConnection:Landroid/content/ServiceConnection;

    .line 154
    new-instance v1, Lcom/samsung/android/cmcnsd/CmcNsdManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcnsd/CmcNsdManager$2;-><init>(Lcom/samsung/android/cmcnsd/CmcNsdManager;)V

    iput-object v1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mNsdNetworkCallback:Lcom/samsung/android/cmcnsd/INsdNetworkCallback;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->TAG:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mContext:Landroid/content/Context;

    .line 83
    sget-object p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->DEFAULT_WIFI_AP_NETWORK:Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    sget-object p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->DEFAULT_WIFI_DIRECT_NETWORK:Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pkgName="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " version="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "0.0.2"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Lcom/samsung/android/cmcnsd/INsdService;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mService:Lcom/samsung/android/cmcnsd/INsdService;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/samsung/android/cmcnsd/CmcNsdManager;Lcom/samsung/android/cmcnsd/INsdService;)Lcom/samsung/android/cmcnsd/INsdService;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mService:Lcom/samsung/android/cmcnsd/INsdService;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Lcom/samsung/android/cmcnsd/INsdNetworkCallback;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mNsdNetworkCallback:Lcom/samsung/android/cmcnsd/INsdNetworkCallback;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/cmcnsd/CmcNsdManager;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->onBound()V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/cmcnsd/CmcNsdManager;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->onUnbound()V

    return-void
.end method

.method public static synthetic access$500(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Landroid/util/SparseArray;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mLastNetworks:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/cmcnsd/CmcNsdManager;Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->notifyWifiApConnectionChanged(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/samsung/android/cmcnsd/CmcNsdManager;Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->notifyWifiDirectConnectionChanged(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/samsung/android/cmcnsd/CmcNsdManager;Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->notifyWifiApNetworkMessageReceived(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;)V

    return-void
.end method

.method private notifyWifiApConnectionChanged(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V
    .locals 4
    .param p1    # Lcom/samsung/android/cmcnsd/network/NsdNetwork;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 185
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mNsdNetworkCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 186
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mNsdNetworkCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;

    .line 188
    invoke-virtual {v1}, Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;->getCapabilities()Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->getCapabilities()Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->hasCapabilities(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    invoke-virtual {v1}, Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;->getCallback()Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;->onConnected(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;->getCallback()Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;->onDisconnected(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V

    goto :goto_0

    .line 196
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private notifyWifiApNetworkMessageReceived(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;)V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mNsdNetworkCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mNsdNetworkCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;

    .line 223
    invoke-virtual {v1}, Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;->getCapabilities()Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->hasCapabilities(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {v1}, Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;->getCallback()Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;->onNetworkMessageReceived(Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;)V

    goto :goto_0

    .line 227
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private notifyWifiDirectConnectionChanged(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V
    .locals 5
    .param p1    # Lcom/samsung/android/cmcnsd/network/NsdNetwork;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 200
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mNsdNetworkCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mNsdNetworkCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;

    .line 203
    invoke-virtual {v2}, Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;->getCapabilities()Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->getCapabilities()Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->hasCapabilities(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 205
    iget-boolean v3, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mIsNetworkAcquired:Z

    if-eqz v3, :cond_1

    .line 206
    invoke-virtual {v2}, Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;->getCallback()Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;->onConnected(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;->getCallback()Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->getCapabilities()Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;->onAvailable(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;->getCallback()Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;->onDisconnected(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V

    const/4 v2, 0x0

    .line 212
    iput-boolean v2, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mIsNetworkAcquired:Z

    goto :goto_0

    .line 216
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onBound()V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mListener:Lcom/samsung/android/cmcnsd/CmcNsdManager$BindStatusListener;

    if-eqz p0, :cond_0

    .line 136
    invoke-interface {p0}, Lcom/samsung/android/cmcnsd/CmcNsdManager$BindStatusListener;->onBound()V

    :cond_0
    return-void
.end method

.method private onUnbound()V
    .locals 3

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mService:Lcom/samsung/android/cmcnsd/INsdService;

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mIsBound:Z

    .line 143
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mNsdNetworkCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mNsdNetworkCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 145
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mLastNetworks:Landroid/util/SparseArray;

    sget-object v1, Lcom/samsung/android/cmcnsd/CmcNsdManager;->DEFAULT_WIFI_AP_NETWORK:Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mLastNetworks:Landroid/util/SparseArray;

    sget-object v1, Lcom/samsung/android/cmcnsd/CmcNsdManager;->DEFAULT_WIFI_DIRECT_NETWORK:Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mListener:Lcom/samsung/android/cmcnsd/CmcNsdManager$BindStatusListener;

    if-eqz p0, :cond_0

    .line 150
    invoke-interface {p0}, Lcom/samsung/android/cmcnsd/CmcNsdManager$BindStatusListener;->onUnbound()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 145
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public bind()V
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->TAG:Ljava/lang/String;

    const-string v0, "bind() context null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind() isBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->isBound()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->onBound()V

    goto :goto_0

    .line 106
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.mdecservice"

    const-string v2, "com.samsung.android.mdecservice.nsd.NsdService"

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mConnection:Landroid/content/ServiceConnection;

    sget-object v3, Lcom/samsung/android/cmcnsd/extension/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v4, v3}, Lcom/samsung/android/cmcnsd/extension/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mIsBound:Z

    :goto_0
    return-void
.end method

.method public isBound()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mService:Lcom/samsung/android/cmcnsd/INsdService;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mIsBound:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerNetworkCallback(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;)Z
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerNetworkCallback() cap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mNsdNetworkCallbackList:Ljava/util/List;

    monitor-enter v1

    .line 263
    :try_start_0
    new-instance v2, Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;

    invoke-direct {v2, p1, p2}, Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;-><init>(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;)V

    .line 264
    iget-object p1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mNsdNetworkCallbackList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 265
    iget-object p0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->TAG:Ljava/lang/String;

    const-string p1, "registerNetworkCallback() failed to add callback"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    monitor-exit v1

    return v0

    .line 268
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    iget-object p1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerNetworkCallback() NsdNetworkCallbackList="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mNsdNetworkCallbackList:Ljava/util/List;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x1

    if-gt v0, p1, :cond_4

    .line 273
    iget-object p2, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mLastNetworks:Landroid/util/SparseArray;

    shl-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    if-eqz p1, :cond_3

    if-nez v0, :cond_2

    .line 276
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->notifyWifiApConnectionChanged(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V

    goto :goto_1

    .line 278
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->notifyWifiDirectConnectionChanged(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return p1

    :catchall_0
    move-exception p0

    .line 268
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_2
    return v0
.end method

.method public registerServiceConnectionListener(Lcom/samsung/android/cmcnsd/CmcNsdManager$BindStatusListener;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mListener:Lcom/samsung/android/cmcnsd/CmcNsdManager$BindStatusListener;

    return-void
.end method

.method public unregisterNetworkCallback(Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;)V
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterNetworkCallback() callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mNsdNetworkCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mNsdNetworkCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 289
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/cmcnsd/CmcNsdManager$NetworkCallbackWrapper;->getCallback()Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 291
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 294
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    iget-object p1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterNetworkCallback() NsdNetworkCallbackList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager;->mNsdNetworkCallbackList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 294
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
