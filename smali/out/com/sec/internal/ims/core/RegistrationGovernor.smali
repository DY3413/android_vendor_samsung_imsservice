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
.field protected static final DEFAULT_RETRY_AFTER_MS:J = 0x3e8L

.field public static final PREFERED_IMPU_TYPE_ANY_FIRST:I = 0x0

.field public static final PREFERED_IMPU_TYPE_IMSI_BASED:I = 0x1

.field public static final RELEASE_AIRPLANEMODE_ON:I = 0x1

.field public static final RELEASE_ALWAYS:I = 0x0

.field public static final RELEASE_AUTOCONFIG_UPDATED:I = 0x7

.field public static final RELEASE_CMC_UPDATED:I = 0x8

.field public static final RELEASE_DETACH_WITH_REATTACH:I = 0xa

.field public static final RELEASE_LTE_NETWORK_IN_SERVICE:I = 0xc

.field public static final RELEASE_NETWORK_CHANGED:I = 0x6

.field public static final RELEASE_NO_ALTERNATIVE:I = 0xe

.field public static final RELEASE_NR_NETWORK_IN_SERVICE:I = 0xd

.field public static final RELEASE_PDN_DISCONNECTED:I = 0x5

.field public static final RELEASE_PLMN_CHANGED:I = 0x9

.field public static final RELEASE_ROAMING_CHANGED:I = 0xb

.field public static final RELEASE_SIM_REMOVED:I = 0x4

.field public static final RELEASE_WFC_TURNED_OFF:I = 0x3

.field public static final RELEASE_WIFI_TURNED_OFF:I = 0x2

.field public static final RETRY_AFTER_EPDGDEREGI_MS:J = 0x3e8L

.field public static final RETRY_AFTER_PDNLOST_MS:J = 0xbb8L

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

.field protected mRegBaseTimeMs:J

.field protected mRegMaxTimeMs:J

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
    .registers 5

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7530

    .line 54
    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegBaseTimeMs:J

    const-wide/32 v0, 0x1b7740

    .line 55
    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegMaxTimeMs:J

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 58
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsReadyToGetReattach:Z

    .line 67
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 74
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottledforImsNotAvailable:Z

    .line 75
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mDiscardCurrentNetwork:Z

    .line 76
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentPdnFailed:Z

    .line 77
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 78
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    .line 79
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurImpu:I

    .line 80
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    const/4 v1, 0x1

    .line 81
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIPsecAllow:Z

    .line 82
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mMoveToNextPcscfAfterTimerB:Z

    const-wide/16 v2, 0x0

    .line 83
    iput-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 84
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottleReason:I

    .line 85
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasVoLteCall:Z

    .line 86
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPse911Prohibited:Z

    const-wide/16 v2, -0x1

    .line 87
    iput-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnFailRetryTime:J

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
.method public addDelay(J)V
    .registers 4

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->addDelay(JI)V

    return-void
.end method

.method public addDelay(JI)V
    .registers 6

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 187
    iput p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottleReason:I

    return-void
.end method

.method public blockImmediatelyUpdateRegi()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public checkAcsPcscfListChange()V
    .registers 1

    .line 0
    return-void
.end method

.method public checkEmergencyInProgress()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected checkEpdgEvent(I)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public checkProfileUpdateFromDM(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method protected checkRcsEvent(I)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public checkUnProcessedVoLTEState()V
    .registers 1

    .line 0
    return-void
.end method

.method protected checkVolteSetting(I)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public clear()V
    .registers 1

    .line 0
    return-void
.end method

.method public enableRcsOverIms(Lcom/sec/ims/settings/ImsProfile;)V
    .registers 2

    .line 0
    return-void
.end method

.method public finishOmadmProvisioningUpdate()V
    .registers 1

    .line 0
    return-void
.end method

.method protected getCallStatus()I
    .registers 1

    .line 264
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCallStatus:I

    return p0
.end method

.method public getDetailedDeRegiReason(I)I
    .registers 2

    .line 0
    const/16 p0, 0x20

    if-eq p1, p0, :cond_e

    const/16 p0, 0x21

    if-eq p1, p0, :cond_b

    const/16 p0, 0x2a

    return p0

    :cond_b
    const/16 p0, 0x51

    return p0

    :cond_e
    const/16 p0, 0x47

    return p0
.end method

.method public getFailureCount()I
    .registers 1

    .line 230
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    return p0
.end method

.method public getNextImpuType()I
    .registers 1

    .line 225
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurImpu:I

    return p0
.end method

.method public getP2pListSize(I)I
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getPcoType()Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
    .registers 1

    .line 245
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    return-object p0
.end method

.method public getPcscfOrdinal()I
    .registers 1

    .line 255
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    return p0
.end method

.method public getRetryTimeOnPdnFail()J
    .registers 3

    .line 260
    iget-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnFailRetryTime:J

    return-wide v0
.end method

.method public getThrottleState()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;
    .registers 6

    .line 209
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->IDLE:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    .line 210
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    if-eqz v1, :cond_9

    .line 211
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->PERMANENTLY_STOPPED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    goto :goto_15

    .line 212
    :cond_9
    iget-wide v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-lez p0, :cond_15

    .line 213
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->TEMPORARY_THROTTLED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    :cond_15
    :goto_15
    return-object v0
.end method

.method public getWFCSubscribeForbiddenCounter()I
    .registers 1

    .line 250
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mWFCSubscribeForbiddenCounter:I

    return p0
.end method

.method public handlePcscfRestoration(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public hasNetworkFailure()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public hasValidPcscfIpList()Z
    .registers 1

    .line 220
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    return p0
.end method

.method public isDelayedDeregisterTimerRunning()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isDeregisterOnLocationUpdate()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isExistRetryTimer()Z
    .registers 1

    .line 235
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRetryTimeout:Landroid/os/Message;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isIPSecAllow()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isMobilePreferredForRcs()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedDelayedDeregister()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isNonVoLteSimByPdnFail()Z
    .registers 1

    .line 146
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNonVoLTESimByPdnFail:Z

    return p0
.end method

.method public isOmadmConfigAvailable()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isPse911Prohibited()Z
    .registers 1

    .line 240
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPse911Prohibited:Z

    return p0
.end method

.method public isReadyToDualRegister(Z)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isReadyToGetReattach()Z
    .registers 1

    .line 495
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsReadyToGetReattach:Z

    return p0
.end method

.method public isThrottled()Z
    .registers 2

    .line 204
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->getThrottleState()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->IDLE:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    if-eq p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isThrottledforImsNotAvailable()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public makeThrottle()V
    .registers 2

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    return-void
.end method

.method public needImsNotAvailable()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public needPendingPdnConnected()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyLocationTimeout()V
    .registers 1

    .line 0
    return-void
.end method

.method public notifyReattachToRil()V
    .registers 1

    .line 0
    return-void
.end method

.method public notifyVoLteOnOffToRil(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public onConfigUpdated()V
    .registers 1

    .line 0
    return-void
.end method

.method public onContactActivated()V
    .registers 1

    .line 0
    return-void
.end method

.method public onDeregistrationDone(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public onEpdgDisconnected()V
    .registers 1

    .line 0
    return-void
.end method

.method public onLocalIpChanged()V
    .registers 1

    .line 0
    return-void
.end method

.method public onLocationCacheExpiry()V
    .registers 1

    .line 0
    return-void
.end method

.method public onLteDataNetworkModeSettingChanged(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public onPackageDataCleared(Landroid/net/Uri;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onPdnConnected()V
    .registers 5

    .line 469
    iget-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottleReason:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    const-wide/16 v0, 0x0

    .line 470
    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    const/4 v0, 0x0

    .line 471
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottleReason:I

    :cond_16
    return-void
.end method

.method public onPublishError(Lcom/sec/ims/util/SipError;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onRegEventContactUriNotification(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
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

    .line 0
    return-void
.end method

.method public onServiceStateDataChanged(ZZ)V
    .registers 3

    .line 0
    return-void
.end method

.method public onSrvccComplete()V
    .registers 1

    .line 0
    return-void
.end method

.method public onSubscribeError(ILcom/sec/ims/util/SipError;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onTelephonyCallStatusChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onUpdateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onUpdatedPcoInfo(II)Z
    .registers 3

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onVolteSettingChanged()V
    .registers 1

    .line 0
    return-void
.end method

.method public onWfcProfileChanged([B)V
    .registers 2

    .line 0
    return-void
.end method

.method public registerAllowedNetworkTypesListener()V
    .registers 1

    .line 0
    return-void
.end method

.method public requestLocation(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public resetAllPcscfChecked()V
    .registers 1

    .line 0
    return-void
.end method

.method public resetAllRetryFlow()V
    .registers 1

    .line 0
    return-void
.end method

.method public resetIPSecAllow()V
    .registers 1

    .line 0
    return-void
.end method

.method public resetPcoType()V
    .registers 2

    .line 176
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_POSTPAY:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    return-void
.end method

.method public resetPcscfList()V
    .registers 2

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    return-void
.end method

.method public resetPcscfPreference()V
    .registers 1

    .line 0
    return-void
.end method

.method public resetPdnFailureInfo()V
    .registers 2

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnRejectCounter:I

    return-void
.end method

.method public resetPermanentFailure()V
    .registers 2

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mDiscardCurrentNetwork:Z

    return-void
.end method

.method public retryDNSQuery()V
    .registers 1

    .line 0
    return-void
.end method

.method public runDelayedDeregister()V
    .registers 1

    .line 0
    return-void
.end method

.method protected setCallStatus(I)V
    .registers 2

    .line 196
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCallStatus:I

    return-void
.end method

.method public setNeedDelayedDeregister(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public setPcoType(Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    return-void
.end method

.method public setRetryTimeOnPdnFail(J)V
    .registers 3

    .line 192
    iput-wide p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnFailRetryTime:J

    return-void
.end method

.method public startOmadmProvisioningUpdate()V
    .registers 1

    .line 0
    return-void
.end method

.method public startTimsTimer(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public stopTimsTimer(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public throttleforImsNotAvailable()V
    .registers 2

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottledforImsNotAvailable:Z

    return-void
.end method

.method public unRegisterIntentReceiver()V
    .registers 1

    .line 0
    return-void
.end method
