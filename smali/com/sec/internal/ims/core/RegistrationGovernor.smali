.class public abstract Lcom/sec/internal/ims/core/RegistrationGovernor;
.super Ljava/lang/Object;
.source "RegistrationGovernor.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
    }
.end annotation


# static fields
.field protected static final DEFAULT_RETRY_AFTER:I = 0x1

.field public static final PREFERED_IMPU_TYPE_ANY_FIRST:I = 0x0

.field public static final PREFERED_IMPU_TYPE_IMSI_BASED:I = 0x1

.field public static final RELEASE_AIRPLANEMODE_ON:I = 0x1

.field public static final RELEASE_ALWAYS:I = 0x0

.field public static final RELEASE_AUTOCONFIG_UPDATED:I = 0x7

.field public static final RELEASE_CMC_UPDATED:I = 0x8

.field public static final RELEASE_DETACH_WITH_REATTACH:I = 0xa

.field public static final RELEASE_LTE_NETWORK_IN_SERVICE:I = 0xc

.field public static final RELEASE_NETWORK_CHANGED:I = 0x6

.field public static final RELEASE_NR_NETWORK_IN_SERVICE:I = 0xd

.field public static final RELEASE_PDN_DISCONNECTED:I = 0x5

.field public static final RELEASE_PLMN_CHANGED:I = 0x9

.field public static final RELEASE_ROAMING_CHANGED:I = 0xb

.field public static final RELEASE_SIM_REMOVED:I = 0x4

.field public static final RELEASE_WFC_TURNED_OFF:I = 0x3

.field public static final RELEASE_WIFI_TURNED_OFF:I = 0x2

.field public static final RETRY_AFTER_EPDGDEREGI:I = 0x1

.field public static final RETRY_AFTER_PDNLOST:I = 0x3

.field public static final RETRY_TO_NEXT_PCSCF:Ljava/lang/String; = "next_pcscf"

.field public static final RETRY_TO_SAME_PCSCF:Ljava/lang/String; = "same_pcscf"

.field public static final THROTTLE_AFTER_PDN_DISCONNECTED:I = 0x1

.field public static final THROTTLE_REASON_DEFAULT:I


# instance fields
.field protected mCallStatus:I

.field protected mCountry:Ljava/lang/String;

.field protected mCurImpu:I

.field protected mCurPcscfIpIdx:I

.field protected mDelayedDeregisterTimerRunning:Z

.field protected mDiscardCurrentNetwork:Z

.field protected mFailureCounter:I

.field protected mHandlePcscfOnAlternativeCall:Z

.field protected mHasPdnFailure:Z

.field protected mHasVoLteCall:Z

.field protected mIPsecAllow:Z

.field protected mIsPermanentPdnFailed:Z

.field protected mIsPermanentStopped:Z

.field protected mIsReadyToGetReattach:Z

.field protected mIsValid:Z

.field protected mMoveToNextPcscfAfterTimerB:Z

.field protected mNeedToCheckLocationSetting:Z

.field protected mNeedToCheckSrvcc:Z

.field protected mNonVoLTESimByPdnFail:Z

.field protected mNumOfPcscfIp:I

.field protected mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field protected mPcscfIpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPdnFailRetryTime:J

.field protected mPdnRejectCounter:I

.field protected mPhoneId:I

.field protected mPse911Prohibited:Z

.field protected mRegBaseTime:I

.field protected mRegMaxTime:I

.field protected mRegiAt:J

.field protected mRetryTimeout:Landroid/os/Message;

.field protected mSubscribeForbiddenCounter:I

.field protected mThrottleReason:I

.field protected mThrottledforImsNotAvailable:Z

.field protected mTimEshtablishTimeout:Lcom/sec/internal/helper/DelayedMessage;

.field protected mTimEshtablishTimeoutRCS:Lcom/sec/internal/helper/DelayedMessage;

.field protected mTimEshtablishTimeoutReason:Ljava/lang/String;

.field protected mUpsmEnabled:Z

.field protected mWFCSubscribeForbiddenCounter:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 53
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegBaseTime:I

    const/16 v0, 0x708

    .line 54
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegMaxTime:I

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 57
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsReadyToGetReattach:Z

    .line 66
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 73
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottledforImsNotAvailable:Z

    .line 74
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mDiscardCurrentNetwork:Z

    .line 75
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentPdnFailed:Z

    .line 76
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 77
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    .line 78
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurImpu:I

    .line 79
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    const/4 v1, 0x1

    .line 80
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIPsecAllow:Z

    .line 81
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mMoveToNextPcscfAfterTimerB:Z

    const-wide/16 v2, 0x0

    .line 82
    iput-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 83
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottleReason:I

    .line 84
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasVoLteCall:Z

    .line 85
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPse911Prohibited:Z

    const-wide/16 v2, -0x1

    .line 86
    iput-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnFailRetryTime:J

    .line 87
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasPdnFailure:Z

    .line 88
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mSubscribeForbiddenCounter:I

    .line 89
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mWFCSubscribeForbiddenCounter:I

    .line 90
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNonVoLTESimByPdnFail:Z

    .line 91
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnRejectCounter:I

    .line 92
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mDelayedDeregisterTimerRunning:Z

    .line 93
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNeedToCheckSrvcc:Z

    .line 94
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHandlePcscfOnAlternativeCall:Z

    .line 95
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mUpsmEnabled:Z

    .line 96
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCallStatus:I

    .line 97
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNeedToCheckLocationSetting:Z

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcscfIpList:Ljava/util/List;

    .line 102
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRetryTimeout:Landroid/os/Message;

    .line 103
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mTimEshtablishTimeout:Lcom/sec/internal/helper/DelayedMessage;

    .line 104
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mTimEshtablishTimeoutRCS:Lcom/sec/internal/helper/DelayedMessage;

    .line 105
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mTimEshtablishTimeoutReason:Ljava/lang/String;

    .line 106
    sget-object v1, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_POSTPAY:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 107
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCountry:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addDelay(I)V
    .locals 1

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->addDelay(II)V

    return-void
.end method

.method public addDelay(II)V
    .locals 4

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 193
    iput p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottleReason:I

    return-void
.end method

.method public checkAcsPcscfListChange()V
    .locals 0

    return-void
.end method

.method public checkEmergencyInProgress()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected checkEpdgEvent(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public checkProfileUpdateFromDM(Z)V
    .locals 0

    return-void
.end method

.method protected checkRcsEvent(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public checkUnProcessedVoLTEState()V
    .locals 0

    return-void
.end method

.method protected checkVolteSetting(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public enableRcsOverIms(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 0

    return-void
.end method

.method public finishOmadmProvisioningUpdate()V
    .locals 0

    return-void
.end method

.method protected getCallStatus()I
    .locals 0

    .line 270
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCallStatus:I

    return p0
.end method

.method public getDetailedDeRegiReason(I)I
    .locals 0

    const/16 p0, 0x20

    if-eq p1, p0, :cond_1

    const/16 p0, 0x21

    if-eq p1, p0, :cond_0

    const/16 p0, 0x2a

    return p0

    :cond_0
    const/16 p0, 0x51

    return p0

    :cond_1
    const/16 p0, 0x47

    return p0
.end method

.method public getFailureCount()I
    .locals 0

    .line 236
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    return p0
.end method

.method public getNextImpuType()I
    .locals 0

    .line 231
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurImpu:I

    return p0
.end method

.method public getP2pListSize(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPcoType()Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    return-object p0
.end method

.method public getPcscfOrdinal()I
    .locals 0

    .line 261
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    return p0
.end method

.method public getRetryTimeOnPdnFail()J
    .locals 2

    .line 266
    iget-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnFailRetryTime:J

    return-wide v0
.end method

.method public getThrottleState()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;
    .locals 5

    .line 215
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->IDLE:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    .line 216
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    if-eqz v1, :cond_0

    .line 217
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->PERMANENTLY_STOPPED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    goto :goto_0

    .line 218
    :cond_0
    iget-wide v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-lez p0, :cond_1

    .line 219
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->TEMPORARY_THROTTLED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getWFCSubscribeForbiddenCounter()I
    .locals 0

    .line 256
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mWFCSubscribeForbiddenCounter:I

    return p0
.end method

.method public hasNetworkFailure()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasPdnFailure()Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasPdnFailure:Z

    return p0
.end method

.method public hasValidPcscfIpList()Z
    .locals 0

    .line 226
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    return p0
.end method

.method public isDelayedDeregisterTimerRunning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDeregisterOnLocationUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isExistRetryTimer()Z
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRetryTimeout:Landroid/os/Message;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIPSecAllow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isMobilePreferredForRcs()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedDelayedDeregister()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNonVoLteSimByPdnFail()Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNonVoLTESimByPdnFail:Z

    return p0
.end method

.method public isOmadmConfigAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPse911Prohibited()Z
    .locals 0

    .line 246
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPse911Prohibited:Z

    return p0
.end method

.method public isReadyToDualRegister(Z)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isReadyToGetReattach()Z
    .locals 0

    .line 505
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsReadyToGetReattach:Z

    return p0
.end method

.method public isThrottled()Z
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->getThrottleState()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->IDLE:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isThrottledforImsNotAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public makeThrottle()V
    .locals 1

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    return-void
.end method

.method public needImsNotAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needPendingPdnConnected()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyLocationTimeout()V
    .locals 0

    return-void
.end method

.method public notifyReattachToRil()V
    .locals 0

    return-void
.end method

.method public notifyVoLteOnOffToRil(Z)V
    .locals 0

    return-void
.end method

.method public onConfigUpdated()V
    .locals 0

    return-void
.end method

.method public onContactActivated()V
    .locals 0

    return-void
.end method

.method public onDeregistrationDone(Z)V
    .locals 0

    return-void
.end method

.method public onLocalIpChanged()V
    .locals 0

    return-void
.end method

.method public onLocationCacheExpiry()V
    .locals 0

    return-void
.end method

.method public onLteDataNetworkModeSettingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPackageDataCleared(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onPdnConnected()V
    .locals 4

    .line 479
    iget-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottleReason:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    .line 480
    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    const/4 v0, 0x0

    .line 481
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottleReason:I

    :cond_0
    return-void
.end method

.method public onPublishError(Lcom/sec/ims/util/SipError;)V
    .locals 0

    return-void
.end method

.method public onRegEventContactUriNotification(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onRoamingDataChanged(Z)V
    .locals 0

    return-void
.end method

.method public onServiceStateDataChanged(ZZ)V
    .locals 0

    return-void
.end method

.method public onSrvccComplete()V
    .locals 0

    return-void
.end method

.method public onSubscribeError(ILcom/sec/ims/util/SipError;)V
    .locals 0

    return-void
.end method

.method public onTelephonyCallStatusChanged(I)V
    .locals 0

    return-void
.end method

.method public onUpdateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onUpdatedPcoInfo(II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onVolteSettingChanged()V
    .locals 0

    return-void
.end method

.method public onWfcProfileChanged([B)V
    .locals 0

    return-void
.end method

.method public registerAllowedNetworkTypesListener()V
    .locals 0

    return-void
.end method

.method public requestLocation(I)V
    .locals 0

    return-void
.end method

.method public resetAllPcscfChecked()V
    .locals 0

    return-void
.end method

.method public resetAllRetryFlow()V
    .locals 0

    return-void
.end method

.method public resetIPSecAllow()V
    .locals 0

    return-void
.end method

.method public resetPcoType()V
    .locals 1

    .line 182
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_POSTPAY:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    return-void
.end method

.method public resetPcscfList()V
    .locals 1

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    return-void
.end method

.method public resetPcscfPreference()V
    .locals 0

    return-void
.end method

.method public resetPdnFailureInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnRejectCounter:I

    .line 143
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasPdnFailure:Z

    return-void
.end method

.method public resetPermanentFailure()V
    .locals 1

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mDiscardCurrentNetwork:Z

    return-void
.end method

.method public retryDNSQuery()V
    .locals 0

    return-void
.end method

.method public runDelayedDeregister()V
    .locals 0

    return-void
.end method

.method protected setCallStatus(I)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCallStatus:I

    return-void
.end method

.method public setNeedDelayedDeregister(Z)V
    .locals 0

    return-void
.end method

.method public setPcoType(Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    return-void
.end method

.method public setRetryTimeOnPdnFail(J)V
    .locals 0

    .line 198
    iput-wide p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnFailRetryTime:J

    return-void
.end method

.method public startOmadmProvisioningUpdate()V
    .locals 0

    return-void
.end method

.method public startTimsTimer(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public stopTimsTimer(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public throttleforImsNotAvailable()V
    .locals 1

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottledforImsNotAvailable:Z

    return-void
.end method

.method public unRegisterIntentReceiver()V
    .locals 0

    return-void
.end method
