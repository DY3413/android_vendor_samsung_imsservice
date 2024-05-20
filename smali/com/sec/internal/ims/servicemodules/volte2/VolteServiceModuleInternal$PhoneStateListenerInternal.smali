.class Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;
.super Landroid/telephony/PhoneStateListener;
.source "VolteServiceModuleInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneStateListenerInternal"
.end annotation


# instance fields
.field mPhoneId:I

.field mState:I

.field mSubId:I

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;II)V
    .locals 0

    .line 1869
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 1870
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mSubId:I

    .line 1871
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    const/4 p1, 0x0

    .line 1872
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mState:I

    return-void
.end method

.method private isCallEndByCsEvent(Lcom/sec/internal/helper/os/ServiceStateWrapper;)Z
    .locals 3

    .line 1910
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 1911
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_1

    .line 1912
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRegState()I

    move-result p0

    if-nez p0, :cond_0

    .line 1913
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceNetworkType()I

    move-result p0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    .line 1914
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataNetworkType()I

    move-result p0

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 1915
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1918
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1919
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRegState()I

    move-result p0

    if-ne p0, v2, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 1916
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRegState()I

    move-result p0

    if-ne p0, v2, :cond_5

    .line 1917
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataNetworkType()I

    move-result p0

    if-nez p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method private isOutOfServiceState(Lcom/sec/internal/helper/os/ServiceStateWrapper;)Z
    .locals 1

    .line 1905
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 1906
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUssdEndByCsEvent(Lcom/sec/internal/helper/os/ServiceStateWrapper;)Z
    .locals 2

    .line 1925
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 1926
    sget-object v0, Lcom/sec/internal/constants/Mno;->VODAFONE_INDIA:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 1927
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRegState()I

    move-result p0

    if-nez p0, :cond_0

    .line 1928
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceNetworkType()I

    move-result p0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    .line 1929
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataNetworkType()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public getInternalPhoneId()I
    .locals 0

    .line 1876
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    return p0
.end method

.method public onBarringInfoChanged(Landroid/telephony/BarringInfo;)V
    .locals 3

    .line 1951
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBarringInfoChanged: barringInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    const/16 v1, 0x25

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    .line 1936
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mState:I

    if-eq p2, p1, :cond_0

    .line 1937
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStateChanged: state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mState:I

    .line 1939
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    const/4 v0, 0x5

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 3

    .line 1957
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreciseDataConnectionStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 1959
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionState()I

    move-result v1

    if-nez v1, :cond_0

    .line 1961
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionFailCause()I

    move-result v1

    .line 1962
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1963
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result p1

    const/16 v2, 0x200

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_0

    if-eqz v1, :cond_0

    const-string p1, "ePDN setup failed"

    .line 1965
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    const/16 v0, 0x13

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6

    .line 1886
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    new-instance v1, Lcom/sec/internal/helper/os/ServiceStateWrapper;

    invoke-direct {v1, p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;-><init>(Landroid/telephony/ServiceState;)V

    .line 1888
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->isOutOfServiceState(Lcom/sec/internal/helper/os/ServiceStateWrapper;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 1889
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->isCallEndByCsEvent(Lcom/sec/internal/helper/os/ServiceStateWrapper;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1890
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    const/16 v3, 0xa

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    invoke-virtual {p1, v3, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1891
    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->isUssdEndByCsEvent(Lcom/sec/internal/helper/os/ServiceStateWrapper;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1892
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    const/16 v3, 0x24

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    invoke-virtual {p1, v3, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1895
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsLteEpsOnlyAttached:[Z

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    .line 1896
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 1897
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataNetworkType()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1898
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->isPsOnlyReg()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v5

    :cond_2
    aput-boolean v2, p1, v3

    .line 1900
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDataAccessNetwork:[I

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    invoke-virtual {v1, v5}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getAccessNetworkTechnology(I)I

    move-result v1

    aput v1, p1, v2

    .line 1901
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsLteEpsOnlyAttached("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsLteEpsOnlyAttached:[Z

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    aget-boolean p0, v1, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    .line 1881
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->onSignalStrengthsChanged(ILandroid/telephony/SignalStrength;)V

    return-void
.end method

.method public onSrvccStateChanged(I)V
    .locals 3

    .line 1945
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSrvccStateChanged: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
