.class Lcom/sec/internal/ims/core/ImsEpdgEventListener;
.super Lcom/sec/ims/ImsManager$EpdgListener;
.source "ImsEpdgEventListener.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private final mPdnController:Lcom/sec/internal/ims/core/PdnController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/sec/ims/ImsManager$EpdgListener;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 22
    iput-object p2, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    return-void
.end method

.method private notifyEpdgRequest(IZZ)V
    .locals 2

    .line 114
    sget-object v0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyEpdgRequest:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 115
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    if-eqz p3, :cond_0

    .line 117
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgRegisterRequested(IZ)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgDeregisterRequested(I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onEpdgAvailable(III)V
    .locals 6

    .line 27
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 33
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEpdgAvailable :  availability : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " physicalInterface : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 36
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgAvailable(Z)V

    .line 37
    invoke-virtual {v0, p3}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgPhysicalInterface(I)V

    .line 38
    iget-object p3, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    xor-int/lit8 v0, v2, 0x1

    invoke-virtual {p3, p1, v0}, Lcom/sec/internal/ims/core/PdnController;->setPendedEPDGWeakSignal(IZ)V

    .line 40
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 42
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->notifyEpdgAvailable(II)V

    :cond_2
    return-void
.end method

.method public onEpdgDeregister(I)V
    .locals 2

    .line 63
    sget-object v0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onEpdgDeregister"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/core/PdnController;->setPendedEPDGWeakSignal(IZ)V

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0, v0}, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->notifyEpdgRequest(IZZ)V

    return-void
.end method

.method public onEpdgHandoverEnableChanged(IZ)V
    .locals 1

    .line 108
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 109
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgHandoverEnableChanged(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onEpdgHandoverResult(IIILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    if-ne p2, v1, :cond_1

    const-string v1, "LTE_TO_WLAN"

    goto :goto_1

    :cond_1
    const-string v1, "WLAN_TO_LTE"

    .line 50
    :goto_1
    sget-object v2, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEpdgHandoverResult :  Direction : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " result : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p3, :cond_2

    .line 54
    iget-object p3, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p3, p1, v0}, Lcom/sec/internal/ims/core/PdnController;->setPendedEPDGWeakSignal(IZ)V

    .line 55
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    const/16 p3, 0x68

    .line 56
    invoke-virtual {p0, p3, p1, p2, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public onEpdgIpsecConnection(ILjava/lang/String;II)V
    .locals 2

    .line 70
    sget-object p4, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEpdgIpsecConnection :  ikeError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " apnType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataSubscriptionId()I

    move-result p4

    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    .line 73
    invoke-static {p4}, Lcom/sec/internal/helper/SimUtil;->getSlotId(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    :goto_0
    if-nez p3, :cond_2

    .line 74
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v0, v0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-eqz v0, :cond_2

    .line 76
    invoke-interface {v0, p4}, Lcom/sec/internal/helper/os/ITelephonyManager;->semGetDataState(I)I

    move-result p4

    const/4 v0, 0x2

    if-ne p4, v0, :cond_2

    .line 78
    :cond_1
    iget-object p3, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4}, Lcom/sec/internal/ims/core/PdnController;->setPendedEPDGWeakSignal(IZ)V

    .line 79
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    const/16 p3, 0x68

    const/4 p4, 0x1

    .line 80
    invoke-virtual {p0, p3, p1, p4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_2
    const/16 p2, 0x18

    if-ne p3, p2, :cond_3

    .line 82
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    const/16 p2, 0x6d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public onEpdgIpsecDisconnection(ILjava/lang/String;)V
    .locals 3

    .line 88
    sget-object v0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEpdgIpsecDisconnection :  apnType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "ims"

    .line 89
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 90
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 91
    invoke-interface {p2, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgIpsecDisconnected(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onEpdgRegister(IZ)V
    .locals 2

    .line 98
    sget-object v0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onEpdgRegister"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 99
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->notifyEpdgRequest(IZZ)V

    return-void
.end method

.method public onEpdgShowPopup(II)V
    .locals 0

    return-void
.end method
