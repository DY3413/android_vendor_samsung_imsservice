.class public Lcom/sec/internal/constants/ims/os/NetworkState;
.super Ljava/lang/Object;
.source "NetworkState.java"


# static fields
.field public static final IWLAN_AS_PHYSICAL_INTERFACE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkState"

.field public static final MOBILE_DATA_AS_PHYSICAL_INTERFACE:I = 0x2


# instance fields
.field private mCellIdentity:Landroid/telephony/CellIdentity;

.field private mCellInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDataConnectionState:Z

.field private mDataNetworkType:I

.field private mDataRegState:I

.field private mDataRoaming:Z

.field private mEmcbsIndication:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

.field private mEmergencyOnly:Z

.field private mEpdgAvailable:Z

.field private mEpdgPhysicalInterface:I

.field private mInternationalRoaming:Z

.field private mIsEmergencyEpdgConnected:Z

.field private mIsEpdgConnected:Z

.field private mIsPsOnlyReg:Z

.field private mLock:Ljava/lang/Object;

.field private mMobileDataNetworkType:I

.field private mMobileDataRegState:I

.field private mOperatorNumeric:Ljava/lang/String;

.field private mPendedEPDGWeakSignal:Z

.field private mPreciseDataConnectionState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/PreciseDataConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field private mSimSlot:I

.field private mSnapshotState:I

.field private mVoiceNetworkType:I

.field private mVoiceRegState:I

.field private mVoiceRoaming:Z

.field private mVopsIndication:Lcom/sec/internal/constants/ims/os/VoPsIndication;


# direct methods
.method public static synthetic $r8$lambda$Ai7d9qHAojY5vl2mdpa3L0f8_cs(Lcom/sec/internal/constants/ims/os/NetworkState;)Landroid/util/SparseArray;
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->lambda$setPreciseDataConnectionState$2()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mmVTc2rywU8FJRk9eAmWrLqz7E8(Landroid/telephony/CellInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->lambda$setAllCellInfo$0(Landroid/telephony/CellInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zwDSxjMcFCLdSb9o90mBwpV4VUE(ILandroid/util/SparseArray;)Landroid/telephony/PreciseDataConnectionState;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->lambda$getPreciseDataConnectionState$1(ILandroid/util/SparseArray;)Landroid/telephony/PreciseDataConnectionState;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mLock:Ljava/lang/Object;

    .line 59
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mSimSlot:I

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mDataNetworkType:I

    const/4 p1, 0x1

    .line 61
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mDataRegState:I

    .line 62
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mVoiceRegState:I

    .line 63
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mMobileDataRegState:I

    .line 64
    sget p1, Lcom/sec/ims/extensions/ServiceStateExt;->SNAPSHOT_STATUS_DEACTIVATED:I

    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mSnapshotState:I

    return-void
.end method

.method private static synthetic lambda$getPreciseDataConnectionState$1(ILandroid/util/SparseArray;)Landroid/telephony/PreciseDataConnectionState;
    .locals 0

    .line 275
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PreciseDataConnectionState;

    return-object p0
.end method

.method private static synthetic lambda$setAllCellInfo$0(Landroid/telephony/CellInfo;)Z
    .locals 0

    .line 149
    invoke-virtual {p0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$setPreciseDataConnectionState$2()Landroid/util/SparseArray;
    .locals 1

    .line 281
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mPreciseDataConnectionState:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public getAllCellInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mCellInfo:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mCellInfo:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 167
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCellIdentity()Landroid/telephony/CellIdentity;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mCellIdentity:Landroid/telephony/CellIdentity;

    return-object p0
.end method

.method public getDataNetworkType()I
    .locals 0

    .line 80
    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mDataNetworkType:I

    return p0
.end method

.method public getDataRegState()I
    .locals 0

    .line 108
    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mDataRegState:I

    return p0
.end method

.method public getEmcBsIndication()Lcom/sec/internal/constants/ims/os/EmcBsIndication;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mEmcbsIndication:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    return-object p0
.end method

.method public getEpdgPhysicalInterface()I
    .locals 0

    .line 88
    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mEpdgPhysicalInterface:I

    return p0
.end method

.method public getMobileDataNetworkType()I
    .locals 0

    .line 92
    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mMobileDataNetworkType:I

    return p0
.end method

.method public getMobileDataRegState()I
    .locals 0

    .line 96
    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mMobileDataRegState:I

    return p0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mOperatorNumeric:Ljava/lang/String;

    return-object p0
.end method

.method public getPreciseDataConnectionState(I)Landroid/telephony/PreciseDataConnectionState;
    .locals 1

    .line 275
    iget-object p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mPreciseDataConnectionState:Landroid/util/SparseArray;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/constants/ims/os/NetworkState$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PreciseDataConnectionState;

    return-object p0
.end method

.method public getSimSlot()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mSimSlot:I

    return p0
.end method

.method public getSnapshotState()I
    .locals 0

    .line 124
    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mSnapshotState:I

    return p0
.end method

.method public getVoiceNetworkType()I
    .locals 0

    .line 255
    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mVoiceNetworkType:I

    return p0
.end method

.method public getVoiceRegState()I
    .locals 0

    .line 116
    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mVoiceRegState:I

    return p0
.end method

.method public getVopsIndication()Lcom/sec/internal/constants/ims/os/VoPsIndication;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mVopsIndication:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    return-object p0
.end method

.method public isDataConnectedState()Z
    .locals 0

    .line 191
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mDataConnectionState:Z

    return p0
.end method

.method public isDataRoaming()Z
    .locals 0

    .line 187
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mDataRoaming:Z

    return p0
.end method

.method public isEmergencyEpdgConnected()Z
    .locals 0

    .line 247
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mIsEmergencyEpdgConnected:Z

    return p0
.end method

.method public isEmergencyOnly()Z
    .locals 0

    .line 215
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mEmergencyOnly:Z

    return p0
.end method

.method public isEpdgAVailable()Z
    .locals 0

    .line 239
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mEpdgAvailable:Z

    return p0
.end method

.method public isEpdgConnected()Z
    .locals 0

    .line 231
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mIsEpdgConnected:Z

    return p0
.end method

.method public isInternationalRoaming()Z
    .locals 0

    .line 271
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mInternationalRoaming:Z

    return p0
.end method

.method public isPendedEPDGWeakSignal()Z
    .locals 0

    .line 263
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mPendedEPDGWeakSignal:Z

    return p0
.end method

.method public isPsOnlyReg()Z
    .locals 0

    .line 223
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mIsPsOnlyReg:Z

    return p0
.end method

.method public isVoiceRoaming()Z
    .locals 0

    .line 199
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mVoiceRoaming:Z

    return p0
.end method

.method public setAllCellInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 149
    new-instance v0, Lcom/sec/internal/constants/ims/os/NetworkState$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/os/NetworkState$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 150
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->getAvailableCellInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 151
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    sget-object p0, Lcom/sec/internal/constants/ims/os/NetworkState;->LOG_TAG:Ljava/lang/String;

    const-string p1, "setAllCellInfo : There are no valid cellinfo !!!!"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 156
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/os/NetworkState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setAllCellInfo : Cleared by null set !!!!"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    iput-object p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mCellInfo:Ljava/util/List;

    .line 161
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setCellIdentity(Landroid/telephony/CellIdentity;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mCellIdentity:Landroid/telephony/CellIdentity;

    return-void
.end method

.method public setDataConnectionState(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mDataConnectionState:Z

    return-void
.end method

.method public setDataNetworkType(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mDataNetworkType:I

    return-void
.end method

.method public setDataRegState(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mDataRegState:I

    return-void
.end method

.method public setDataRoaming(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mDataRoaming:Z

    return-void
.end method

.method public setEmcBsIndication(Lcom/sec/internal/constants/ims/os/EmcBsIndication;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mEmcbsIndication:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    return-void
.end method

.method public setEmergencyEpdgConnected(Z)V
    .locals 0

    .line 243
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mIsEmergencyEpdgConnected:Z

    return-void
.end method

.method public setEmergencyOnly(Z)V
    .locals 0

    .line 211
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mEmergencyOnly:Z

    return-void
.end method

.method public setEpdgAvailable(Z)V
    .locals 0

    .line 235
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mEpdgAvailable:Z

    return-void
.end method

.method public setEpdgConnected(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mIsEpdgConnected:Z

    return-void
.end method

.method public setEpdgPhysicalInterface(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mEpdgPhysicalInterface:I

    return-void
.end method

.method public setInternationalRoaming(Z)V
    .locals 0

    .line 267
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mInternationalRoaming:Z

    return-void
.end method

.method public setMobileDataNetworkType(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mMobileDataNetworkType:I

    return-void
.end method

.method public setMobileDataRegState(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mMobileDataRegState:I

    return-void
.end method

.method public setOperatorNumeric(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mOperatorNumeric:Ljava/lang/String;

    return-void
.end method

.method public setPendedEpdgWeakSignal(Z)V
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mPendedEPDGWeakSignal:Z

    return-void
.end method

.method public setPreciseDataConnectionState(ILandroid/telephony/PreciseDataConnectionState;)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mPreciseDataConnectionState:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/constants/ims/os/NetworkState$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sec/internal/constants/ims/os/NetworkState$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/constants/ims/os/NetworkState;)V

    .line 280
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    .line 283
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setPsOnlyReg(Z)V
    .locals 0

    .line 219
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mIsPsOnlyReg:Z

    return-void
.end method

.method public setSnapshotState(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mSnapshotState:I

    return-void
.end method

.method public setVoiceNetworkType(I)V
    .locals 0

    .line 251
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mVoiceNetworkType:I

    return-void
.end method

.method public setVoiceRegState(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mVoiceRegState:I

    return-void
.end method

.method public setVoiceRoaming(Z)V
    .locals 0

    .line 195
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mVoiceRoaming:Z

    return-void
.end method

.method public setVopsIndication(Lcom/sec/internal/constants/ims/os/VoPsIndication;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/sec/internal/constants/ims/os/NetworkState;->mVopsIndication:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    return-void
.end method
