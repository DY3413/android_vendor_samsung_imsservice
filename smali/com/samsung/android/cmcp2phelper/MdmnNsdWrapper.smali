.class public Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;
.super Ljava/lang/Object;
.source "MdmnNsdWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

.field mContext:Landroid/content/Context;

.field mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

.field mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

.field private final wifiNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcp2phelper/1.3.06/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->IDLE:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    .line 101
    new-instance v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;-><init>(Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->wifiNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 30
    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cmcp2phelper version 1.3.06"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput-object p2, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 32
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mContext:Landroid/content/Context;

    .line 33
    new-instance p2, Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;-><init>(Landroid/content/Context;Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V

    iput-object p2, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    return-void
.end method

.method private isConfigurationInvalid(Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)Z
    .locals 0

    .line 58
    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public getSupportDevices()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->getDeviceList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public setServiceInfo(Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->isConfigurationInvalid(Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->stopReceive()V

    .line 45
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 46
    new-instance p1, Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;-><init>(Landroid/content/Context;Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V

    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    .line 48
    iget-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTED:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    if-ne p1, v0, :cond_2

    .line 49
    iget-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->startReceive()V

    goto :goto_0

    .line 52
    :cond_1
    sget-object p1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTING:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    :cond_2
    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->wifiNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-static {v0, v1}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->registerWiFiNetworkCallback(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "WiFi is not connected to receive discovery packet"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTING:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->startReceive()V

    .line 69
    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTED:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    return-void
.end method

.method public startDiscovery(Landroid/os/Handler;ILjava/util/ArrayList;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 80
    sget-object p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "No ip list for p2p discovery"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 84
    :cond_0
    sget-object v1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try discovery : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->clearCache()V

    .line 86
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->setMaxPeer(I)V

    .line 87
    invoke-static {p1, p2}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->setCallback(Landroid/os/Handler;I)V

    .line 89
    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "WiFi is not enabled for p2p discovery"

    .line 90
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->stopReceive()V

    .line 92
    sget-object p1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTING:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    return v0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->startReceive()V

    .line 97
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->startDiscoveryUnicast(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 p0, 0x1

    return p0
.end method

.method public stop()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->wifiNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-static {v0, v1}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->unregisterWifiNetworkCallback(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->stopReceive()V

    .line 75
    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->IDLE:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    return-void
.end method
