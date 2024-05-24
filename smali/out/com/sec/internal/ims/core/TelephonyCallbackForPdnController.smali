.class Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;
.super Landroid/telephony/TelephonyCallback;
.source "TelephonyCallbackForPdnController.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;
.implements Landroid/telephony/TelephonyCallback$CellInfoListener;
.implements Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field mInternalSimSlot:I

.field mMobileRadioConnected:Z

.field private final mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field mSubId:I


# direct methods
.method public static synthetic $r8$lambda$RiHQbRJ2xAlIrCU3FRMulLtWMgw(Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;ILandroid/telephony/PreciseDataConnectionState;Landroid/telephony/data/ApnSetting;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->lambda$onPreciseDataConnectionStateChanged$0(ILandroid/telephony/PreciseDataConnectionState;Landroid/telephony/data/ApnSetting;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 39
    const-class v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/IImsFramework;II)V
    .registers 5

    .line 49
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 52
    iput-object p2, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 54
    iput p3, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    .line 55
    iput p4, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mSubId:I

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mMobileRadioConnected:Z

    return-void
.end method

.method private synthetic lambda$onPreciseDataConnectionStateChanged$0(ILandroid/telephony/PreciseDataConnectionState;Landroid/telephony/data/ApnSetting;)V
    .registers 5

    .line 232
    invoke-virtual {p3}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result p3

    const/16 v0, 0x40

    and-int/2addr p3, v0

    if-ne p3, v0, :cond_14

    .line 233
    iget-object p3, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget p0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setPreciseDataConnectionState(ILandroid/telephony/PreciseDataConnectionState;)V

    :cond_14
    return-void
.end method

.method private notifySnapshotState(II)V
    .registers 8

    .line 251
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 254
    :cond_9
    sget-object v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySnapshotState: snapshotState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 255
    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v2

    .line 256
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getSnapshotState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getSnapshotState()I

    move-result v0

    if-eq v0, p1, :cond_9a

    .line 258
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setSnapshotState(I)V

    .line 260
    iget-object p1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getSnapshotState()I

    move-result p1

    sget v0, Lcom/sec/ims/extensions/ServiceStateExt;->SNAPSHOT_STATUS_ACTIVATED:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_57

    move p1, v1

    goto :goto_58

    :cond_57
    const/4 p1, 0x0

    .line 262
    :goto_58
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v0, v0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 263
    :try_start_5d
    iget-object p0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_69
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_95

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 264
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 265
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 267
    iget v4, v2, Lcom/sec/internal/ims/core/NetworkCallback;->mPhoneId:I

    if-eq v4, p2, :cond_86

    goto :goto_69

    .line 271
    :cond_86
    iget v2, v2, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    if-ne v2, v1, :cond_8b

    goto :goto_69

    :cond_8b
    if-eqz p1, :cond_91

    .line 276
    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onSuspendedBySnapshot(I)V

    goto :goto_69

    .line 278
    :cond_91
    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onResumedBySnapshot(I)V

    goto :goto_69

    .line 281
    :cond_95
    monitor-exit v0

    goto :goto_9a

    :catchall_97
    move-exception p0

    monitor-exit v0
    :try_end_99
    .catchall {:try_start_5d .. :try_end_99} :catchall_97

    throw p0

    :cond_9a
    :goto_9a
    return-void
.end method


# virtual methods
.method public getInternalSimSlot()I
    .registers 1

    .line 64
    iget p0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    return p0
.end method

.method public getSubId()I
    .registers 1

    .line 60
    iget p0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mSubId:I

    return p0
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    .line 212
    sget-object v1, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCellInfoChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_2f

    if-eqz v0, :cond_2f

    .line 214
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2f

    return-void

    :cond_2f
    if-eqz v0, :cond_34

    .line 219
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setAllCellInfo(Ljava/util/List;)V

    .line 221
    :cond_34
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v0, v0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 222
    iget v2, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-interface {v1, p1, v2}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onCellInfoChanged(Ljava/util/List;I)V

    goto :goto_3c

    :cond_4e
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .registers 7

    .line 245
    sget-object v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataConnectionStateChanged: state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", networkType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 247
    iget-object p2, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget p0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/ims/core/PdnController;->setDataState(II)V

    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .registers 6

    .line 228
    sget-object v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreciseDataConnectionStateChanged: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getTransportType()I

    move-result v0

    .line 231
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;ILandroid/telephony/PreciseDataConnectionState;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 238
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v0, v0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 239
    iget v2, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-interface {v1, v2, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onPreciseDataConnectionStateChanged(ILandroid/telephony/PreciseDataConnectionState;)V

    goto :goto_34

    :cond_46
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 16

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/sec/internal/helper/os/ServiceStateWrapper;

    invoke-direct {v1, p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;-><init>(Landroid/telephony/ServiceState;)V

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 75
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->setCellIdentity(Landroid/telephony/CellIdentity;)V

    .line 78
    :cond_1f
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_2d

    if-ne v3, v5, :cond_2b

    goto :goto_2d

    :cond_2b
    move v4, v6

    goto :goto_2e

    :cond_2d
    :goto_2d
    move v4, v5

    .line 81
    :goto_2e
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEmergencyOnly()Z

    move-result v7

    const-string v8, "=>"

    if-eq v4, v7, :cond_5f

    .line 82
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EmergencyOnlyReg:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEmergencyOnly()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v7, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v9, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-virtual {v7, v9}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEmergencyOnly(Z)V

    .line 86
    :cond_5f
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getImsVoiceAvail()Z

    move-result v4

    const/4 v7, 0x3

    if-eq v3, v5, :cond_6b

    if-ne v3, v7, :cond_69

    goto :goto_6b

    :cond_69
    move v9, v6

    goto :goto_6c

    :cond_6b
    :goto_6b
    move v9, v5

    :goto_6c
    invoke-static {v4, v9}, Lcom/sec/internal/constants/ims/os/VoPsIndication;->translateVops(ZZ)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v4

    .line 90
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVopsIndication()Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v9

    if-eq v4, v9, :cond_99

    .line 91
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VoPS:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVopsIndication()Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v0, v4}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVopsIndication(Lcom/sec/internal/constants/ims/os/VoPsIndication;)V

    move v4, v5

    goto :goto_9a

    :cond_99
    move v4, v6

    .line 96
    :goto_9a
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getIsEbSupported()Z

    move-result v9

    invoke-static {v9}, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->translateEmcbs(Z)Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v9

    .line 98
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getMobileDataNetworkType()I

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_ab

    goto :goto_b2

    :cond_ab
    if-nez v10, :cond_b0

    .line 104
    sget-object v9, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->UNKNOWN:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    goto :goto_b2

    .line 108
    :cond_b0
    sget-object v9, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    .line 111
    :goto_b2
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getEmcBsIndication()Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v12

    if-eq v12, v9, :cond_d9

    .line 112
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EmcBsIndi:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getEmcBsIndication()Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v0, v9}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEmcBsIndication(Lcom/sec/internal/constants/ims/os/EmcBsIndication;)V

    .line 116
    :cond_d9
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRegState()I

    move-result v9

    .line 117
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceRegState()I

    move-result v12

    if-eq v12, v9, :cond_105

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VoiceReg:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceRegState()I

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v0, v9}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVoiceRegState(I)V

    move v4, v5

    .line 123
    :cond_105
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceNetworkType()I

    move-result v9

    .line 124
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceNetworkType()I

    move-result v12

    if-eq v12, v9, :cond_131

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VoiceNet:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceNetworkType()I

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v0, v9}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVoiceNetworkType(I)V

    move v4, v5

    .line 130
    :cond_131
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->isPsOnlyReg()Z

    move-result v9

    .line 131
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPsOnlyReg()Z

    move-result v12

    if-eq v9, v12, :cond_15d

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PsOnly:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPsOnlyReg()Z

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v0, v9}, Lcom/sec/internal/constants/ims/os/NetworkState;->setPsOnlyReg(Z)V

    move v4, v5

    .line 137
    :cond_15d
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRoamingType()I

    move-result v9

    if-ne v9, v7, :cond_165

    move v7, v5

    goto :goto_166

    :cond_165
    move v7, v6

    :goto_166
    invoke-virtual {v0, v7}, Lcom/sec/internal/constants/ims/os/NetworkState;->setInternationalRoaming(Z)V

    .line 140
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRoaming()Z

    move-result v7

    .line 141
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataRoaming()Z

    move-result v9

    if-eq v7, v9, :cond_195

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataRoaming:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataRoaming()Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v0, v7}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataRoaming(Z)V

    move v4, v5

    .line 147
    :cond_195
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRoaming()Z

    move-result v7

    .line 148
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isVoiceRoaming()Z

    move-result v9

    if-eq v7, v9, :cond_1c1

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VoiceRoaming:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isVoiceRoaming()Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {v0, v7}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVoiceRoaming(Z)V

    move v4, v5

    .line 154
    :cond_1c1
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 155
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1f7

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1f7

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Operator:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {v0, v7}, Lcom/sec/internal/constants/ims/os/NetworkState;->setOperatorNumeric(Ljava/lang/String;)V

    move v4, v5

    .line 162
    :cond_1f7
    iget v7, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v9

    if-ne v7, v9, :cond_20b

    .line 163
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataConnected(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_20b

    move v7, v5

    goto :goto_20c

    :cond_20b
    move v7, v6

    .line 164
    :goto_20c
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataConnectedState()Z

    move-result v9

    if-eq v7, v9, :cond_234

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataConnState:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataConnectedState()Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {v0, v7}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataConnectionState(Z)V

    move v4, v5

    :cond_234
    const/16 v7, 0x13

    if-ne v10, v7, :cond_239

    move v10, v11

    .line 175
    :cond_239
    invoke-virtual {v0, v10}, Lcom/sec/internal/constants/ims/os/NetworkState;->setMobileDataNetworkType(I)V

    .line 176
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getMobileDataRegState()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/sec/internal/constants/ims/os/NetworkState;->setMobileDataRegState(I)V

    .line 178
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getMobileDataRegState()I

    move-result v0

    if-nez v0, :cond_269

    .line 179
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mMobileRadioConnected:Z

    if-nez v0, :cond_289

    .line 180
    iput-boolean v5, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mMobileRadioConnected:Z

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v0, v0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_257
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_289

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 182
    iget v6, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onMobileRadioConnected(I)V

    goto :goto_257

    .line 186
    :cond_269
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mMobileRadioConnected:Z

    if-eqz v0, :cond_289

    .line 187
    iput-boolean v6, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mMobileRadioConnected:Z

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v0, v0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_277
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_289

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 189
    iget v6, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onMobileRadioDisconnected(I)V

    goto :goto_277

    .line 194
    :cond_289
    sget-object v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onServiceStateChanged: state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "Changed="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    .line 195
    invoke-static {p1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-static {v0, v5, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iput-boolean v4, p1, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    .line 199
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataNetworkType()I

    move-result v0

    iget v2, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-virtual {p1, v0, v3, v4, v2}, Lcom/sec/internal/ims/core/PdnController;->notifyDataConnectionState(IIZI)V

    .line 201
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getSnapshotStatus()I

    move-result p1

    iget v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->notifySnapshotState(II)V

    .line 203
    iget-object p1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object p1

    if-eqz p1, :cond_2d2

    .line 205
    iget p0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-interface {p1, p0, v1}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->notifyServiceStateChanged(ILcom/sec/internal/helper/os/ServiceStateWrapper;)V

    :cond_2d2
    return-void
.end method
