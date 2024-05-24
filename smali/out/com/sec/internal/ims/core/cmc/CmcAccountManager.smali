.class public Lcom/sec/internal/ims/core/cmc/CmcAccountManager;
.super Ljava/lang/Object;
.source "CmcAccountManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
.implements Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;,
        Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;
    }
.end annotation


# static fields
.field private static final EVENT_CMC_DEVICE_CHANGED:I = 0x5

.field private static final EVENT_CMC_NW_PREF_CHANGED:I = 0x6

.field private static final EVENT_SA_REQUEST:I = 0x1

.field private static final EVENT_SA_REQUEST_EXPIRED:I = 0x7

.field private static final EVENT_SA_REQUEST_FAILED:I = 0x8

.field private static final EVENT_SA_UPDATE:I = 0x2

.field private static final EVENT_START_CMC_REGISTRATION:I = 0x3

.field private static final EVENT_STOP_CMC_REGISTRATION:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "CmcAccountManager"

.field private static mIsCmcServiceInstalled:Z = true


# instance fields
.field private mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

.field private mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

.field private mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

.field private mContext:Landroid/content/Context;

.field private mEmergencyNumberMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private final mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

.field private mIsCmcProfileAdded:Z

.field private mPhoneCount:I

.field private mProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mRegiEventNotifyHostInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mSABindRetryCount:I

.field private mSARequestRetryCount:I

.field private mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

.field private mSaToken:Ljava/lang/String;

.field private mSaUrl:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$monSaUpdated(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onSaUpdated()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monStartCmcRegistration(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onStartCmcRegistration()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monStopCmcRegistration(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onStopCmcRegistration()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartSAServiceInternal(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startSAServiceInternal(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 6

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    .line 77
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    const-string v0, ""

    .line 78
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRegiEventNotifyHostInfo:Ljava/util/List;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    .line 85
    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    .line 87
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    .line 88
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    const-string v0, "CmcAccountManager create"

    const-string v1, "CmcAccountManager"

    .line 113
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    .line 115
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    const/16 v2, 0x64

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 116
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    .line 117
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerFactory;->createCmcSettingManager(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    .line 118
    new-instance p1, Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0, p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    .line 119
    new-instance p1, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-direct {p1, p0, p2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;-><init>(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    .line 120
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcServiceInstalled()Z

    move-result p1

    sput-boolean p1, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcServiceInstalled:Z

    .line 121
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->initCmcFromPref()V

    return-void
.end method

.method private getCmcCallActivation(Ljava/lang/String;)Z
    .registers 2

    .line 643
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getCmcCallActivation(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getCmcInfo()Lcom/sec/internal/ims/core/cmc/CmcInfo;
    .registers 3

    .line 575
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfo;-><init>()V

    .line 577
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getCmcSupported()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mOobe:Z

    .line 578
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getOwnCmcActivation()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mActivation:Z

    .line 579
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    .line 580
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    .line 581
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getAccessTokenFromCmcPref()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mAccessToken:Ljava/lang/String;

    .line 582
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getLineId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    .line 583
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getPrimaryDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    .line 584
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getImpuFromLineId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineImpu:Ljava/lang/String;

    .line 585
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getPcscfAddressList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    .line 586
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mSaServerUrl:Ljava/lang/String;

    .line 587
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getLineSlotId()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    .line 588
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->hasSecondaryDevice()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mHasSd:Z

    .line 589
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getPreferredNetwork()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mNetworkPref:I

    .line 590
    iget-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCallAllowedSdByPd(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mCallforkingEnabled:Z

    .line 591
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isEmergencyCallSupported()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsEmergencyCallSupported:Z

    .line 592
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isSameWifiNetworkOnly()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsSameWiFiOnly:Z

    .line 593
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isDualCmc()Z

    move-result p0

    iput-boolean p0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsDualCmc:Z

    .line 595
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCmcInfo: LineId: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", PcscfAddrList: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CmcAccountManager"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getCmcPhoneId()I
    .registers 3

    .line 829
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_13

    :cond_e
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    goto :goto_17

    :cond_13
    :goto_13
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p0

    :goto_17
    return p0
.end method

.method private getCmcRelayType()Ljava/lang/String;
    .registers 1

    .line 485
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSupportSameWiFiOnly()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "priv-p2p"

    return-object p0

    :cond_9
    const-string p0, ""

    return-object p0
.end method

.method private getEmergencyCallNumberString()Ljava/lang/String;
    .registers 4

    .line 955
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSupportDualSimCMC()Z

    move-result v0

    const-string v1, "-"

    if-eqz v0, :cond_27

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getEmergencyCallNumberString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    .line 957
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getEmergencyCallNumberString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2f

    .line 959
    :cond_27
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getEmergencyCallNumberString(I)Ljava/lang/String;

    move-result-object p0

    .line 961
    :goto_2f
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_51

    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_53

    :cond_51
    :goto_51
    const-string p0, ""

    :goto_53
    return-object p0
.end method

.method private getEmergencyCallNumberString(I)Ljava/lang/String;
    .registers 6

    .line 966
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 969
    :cond_9
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getEmergencyNumberList()Ljava/util/Map;

    move-result-object p0

    const-string v0, "CmcAccountManager"

    if-eqz p0, :cond_85

    .line 970
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_85

    .line 974
    :cond_1e
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_7f

    .line 975
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_35

    goto :goto_7f

    .line 979
    :cond_35
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 980
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/emergency/EmergencyNumber;

    .line 981
    invoke-virtual {v3}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 983
    :cond_52
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result p0

    if-lez p0, :cond_5e

    const-string p0, ","

    .line 984
    invoke-static {p0, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 986
    :cond_5e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEmergencyCallNumberString: slot("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") ecall numbers result: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_7f
    :goto_7f
    const-string p0, "getEmergencyCallNumberString: ecall list empty"

    .line 976
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_85
    :goto_85
    const-string p0, "getEmergencyCallNumberString: ecall list map empty"

    .line 971
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getImpuFromLineId()Ljava/lang/String;
    .registers 3

    .line 647
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getLineImpu()Ljava/lang/String;

    move-result-object p0

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImpuFromLineId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcAccountManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_20

    const-string p0, ""

    :cond_20
    return-object p0
.end method

.method private getLineSlotId()I
    .registers 5

    .line 669
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getSelectedSimSlotsOnPd()Ljava/util/List;

    move-result-object p0

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLineSlotId: selectedSimSlotOnPd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcAccountManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p0, :cond_30

    .line 672
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_30

    .line 673
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 675
    :cond_30
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLineSlotId: lineSlotId: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getPrimaryDeviceId()Ljava/lang/String;
    .registers 5

    .line 654
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceIdList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 655
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_31

    .line 656
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 657
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceTypeWithDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 658
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-static {v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isPD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_33

    :cond_31
    const-string v1, ""

    .line 664
    :goto_33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPrimaryDeviceId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CmcAccountManager"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getProfile(I)Lcom/sec/ims/settings/ImsProfile;
    .registers 4

    .line 473
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/settings/ImsProfile;

    const-string p1, "CmcAccountManager"

    if-nez p0, :cond_17

    const-string p0, "mProfile is null"

    .line 475
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 479
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mProfile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private getSharedPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 797
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_b

    .line 798
    :cond_7
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_b
    return-object p2
.end method

.method private getSharedPreference()Landroid/content/SharedPreferences;
    .registers 4

    .line 793
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    const-string v1, "cmcaccount"

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private hasCallForkingService()Z
    .registers 2

    .line 606
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSdHasCallForkingService()Z

    move-result p0

    goto :goto_f

    :cond_b
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isPdHasCallForkingService()Z

    move-result p0

    :goto_f
    return p0
.end method

.method private initCmcFromPref()V
    .registers 3

    const-string v0, "accesstoken"

    .line 802
    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcConstants$SA;->TOKEN_DEFAULT:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getSharedPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    const-string/jumbo v0, "saurl"

    const-string/jumbo v1, "us-auth2.samsungosp.comus-aut"

    .line 803
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getSharedPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    const-string p0, "CmcAccountManager"

    const-string v0, "initCmcFromPref: "

    .line 804
    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initProfile()V
    .registers 12

    const-string v0, "initProfile: build ImsProfile for CMC"

    const-string v1, "CmcAccountManager"

    .line 434
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineImpu:Ljava/lang/String;

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "urn:duid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 439
    iget-object v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isPD(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    const-string v4, "SamsungCMC_PD"

    goto :goto_43

    :cond_41
    const-string v4, "SamsungCMC_SD"

    :goto_43
    const-string/jumbo v5, "sip:"

    .line 442
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_59

    const-string v5, ":"

    .line 443
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5a

    :cond_59
    move-object v5, v0

    :goto_5a
    const-string v7, "@"

    .line 448
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_91

    const/4 v8, 0x0

    .line 449
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 450
    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 451
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initProfile: password = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " / domain = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    :cond_91
    const-string v7, ""

    move-object v8, v5

    .line 454
    :goto_94
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/ims/settings/ImsProfile;

    .line 455
    invoke-virtual {v9, v4}, Lcom/sec/ims/settings/ImsProfile;->setName(Ljava/lang/String;)V

    const/16 v10, 0x1f40

    .line 456
    invoke-virtual {v9, v10}, Lcom/sec/ims/settings/ImsProfile;->setSipPort(I)V

    .line 457
    invoke-virtual {v9, v8}, Lcom/sec/ims/settings/ImsProfile;->setPassword(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v9, v7}, Lcom/sec/ims/settings/ImsProfile;->setDomain(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v9, v6}, Lcom/sec/ims/settings/ImsProfile;->setVceConfigEnabled(Z)V

    .line 460
    invoke-virtual {v9, v2}, Lcom/sec/ims/settings/ImsProfile;->setDuid(Ljava/lang/String;)V

    .line 461
    iget-object v10, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v10, v10, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/sec/ims/settings/ImsProfile;->setAccessToken(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v9, v3}, Lcom/sec/ims/settings/ImsProfile;->setPriDeviceIdWithURN(Ljava/lang/String;)V

    .line 463
    iget-object v10, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v10, v10, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/sec/ims/settings/ImsProfile;->setDisplayName(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v9, v5}, Lcom/sec/ims/settings/ImsProfile;->setImpi(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v9, v0}, Lcom/sec/ims/settings/ImsProfile;->setImpuList(Ljava/lang/String;)V

    .line 466
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 467
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-virtual {v9, v10}, Lcom/sec/ims/settings/ImsProfile;->setExtImpuList(Ljava/util/List;)V

    goto :goto_9e

    :cond_e1
    return-void
.end method

.method private isCallAllowedSdByPd(Ljava/lang/String;)Z
    .registers 2

    .line 639
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isCallAllowedSdByPd(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isCmcInfoEqual(Lcom/sec/internal/ims/core/cmc/CmcInfo;Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 550
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->values()[Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_f
    if-ge v4, v3, :cond_50

    aget-object v5, v2, v4

    .line 552
    invoke-virtual {p1, v5, p2}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->compare(Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z

    move-result v6

    if-nez v6, :cond_4d

    .line 553
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->isDumpPrintAvailable()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 555
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getValue(Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    const-string v6, ", "

    .line 557
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    iget-object v6, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->addChangedCmcInfo(Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;)V

    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 562
    :cond_50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_92

    .line 563
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->isFailed()Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 564
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string p1, "New valid CmcInfo "

    .line 565
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :cond_6e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isCmcInfoEqual: false - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CmcAccountManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setProfileUpdateReason(Ljava/lang/String;)V

    return v0

    :cond_92
    const/4 p0, 0x1

    return p0
.end method

.method private isCmcInfoValid(Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_6

    const-string v1, "OwnDeviceInfo null"

    goto :goto_31

    .line 527
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->values()[Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_c
    if-ge v3, v2, :cond_2f

    aget-object v4, v1, v3

    .line 528
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->checkValid(Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_2f
    const-string v1, ""

    .line 535
    :goto_31
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "CmcAccountManager"

    if-nez v2, :cond_53

    .line 536
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCmcInfoValid: fail - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setProfileUpdateReason(Ljava/lang/String;)V

    return v0

    .line 540
    :cond_53
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCmcInfoValid: true "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z
    .registers 2

    .line 992
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p0

    if-eqz p0, :cond_f

    const/4 p1, 0x7

    if-eq p0, p1, :cond_f

    const/16 p1, 0x8

    if-eq p0, p1, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method private isCmcRegistrationRequired()Z
    .registers 4

    .line 320
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcActivated()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CmcAccountManager"

    if-nez v0, :cond_f

    const-string p0, "isCmcRegistrationRequired: CMC not activated"

    .line 321
    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 325
    :cond_f
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->hasCallForkingService()Z

    move-result p0

    if-nez p0, :cond_1b

    const-string p0, "isCmcRegistrationRequired: CMC Call forking disabled"

    .line 326
    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1b
    const/4 p0, 0x1

    return p0
.end method

.method private isCmcServiceInstalled()Z
    .registers 4

    .line 1003
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.mdecservice"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1004
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "isCmcServiceInstalled: true"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_14} :catch_16

    const/4 p0, 0x1

    return p0

    .line 1007
    :catch_16
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isCmcServiceInstalled: false"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private isEmergencyNumberInternal(Ljava/lang/String;IZ)Z
    .registers 8

    .line 932
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSupportDualSimCMC()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_b

    :cond_7
    iget-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget p2, p2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    :goto_b
    const/4 v0, 0x0

    if-eqz p1, :cond_82

    .line 933
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_82

    .line 936
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmergencyNumberInternal: current emergencyNumbers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CmcAccountManager"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 939
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_65
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_82

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz p3, :cond_7b

    .line 941
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_65

    return v1

    .line 945
    :cond_7b
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_65

    return v1

    :cond_82
    :goto_82
    return v0
.end method

.method private isPdHasCallForkingService()Z
    .registers 2

    .line 610
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getPrimaryDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcCallActivation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 611
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isPdHasCallForkingService: PD CmcCallActivation false"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method private isReadyRegisterP2p()Z
    .registers 4

    const/4 v0, 0x0

    .line 351
    :try_start_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_28

    const-string v1, "com.samsung.android.mdecservice"

    const/16 v2, 0x80

    .line 353
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 355
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_28

    const-string v1, "d2d_trial"

    .line 357
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    move-exception p0

    const-string v1, "CmcAccountManager"

    .line 362
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return v0
.end method

.method private isSdHasCallForkingService()Z
    .registers 4

    .line 618
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 620
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isSdHasCallForkingService: deviceId is null"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v1

    .line 623
    :cond_11
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCallAllowedSdByPd(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 624
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isSdHasCallForkingService: isCallAllowedSdByPd false"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v1

    .line 627
    :cond_1f
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcCallActivation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 628
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isSdHasCallForkingService: Device CmcCallActivation false"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v1

    .line 631
    :cond_2d
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isPdHasCallForkingService()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 632
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isSdHasCallForkingService: PD CmcCallActivation false"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v1

    :cond_3b
    const/4 p0, 0x1

    return p0
.end method

.method private makeProfileMap()V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 136
    :goto_2
    iget v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v1, v2, :cond_90

    .line 137
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    const-string v3, "MDMN"

    invoke-static {v2, v3, v1}, Lcom/sec/ims/settings/ImsProfileLoader;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 139
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    .line 140
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SamsungCMC"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_2c

    :cond_2b
    const/4 v3, 0x0

    :goto_2c
    const-string v2, "CmcAccountManager"

    if-nez v3, :cond_45

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeProfileMap: No pre-defined profile slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    .line 151
    :cond_45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeProfileMap: CMC profile found slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v2

    if-eqz v2, :cond_83

    const/16 v2, 0xc

    const/16 v4, 0xe

    const/4 v5, 0x6

    const/4 v6, 0x5

    .line 153
    filled-new-array {v5, v6, v2, v4}, [I

    move-result-object v2

    .line 155
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const-string v5, "mmtel"

    .line 156
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v5, v0

    :goto_74
    const/4 v6, 0x4

    if-ge v5, v6, :cond_83

    .line 157
    aget v6, v2, v5

    .line 158
    invoke-virtual {v3, v6, v4}, Lcom/sec/ims/settings/ImsProfile;->setServiceSet(ILjava/util/Set;)V

    const/4 v7, 0x1

    .line 159
    invoke-virtual {v3, v6, v7}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_74

    .line 162
    :cond_83
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_90
    return-void
.end method

.method private needDeregiOnDeviceChange(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .registers 7

    .line 1013
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getChangedCmcInfoList()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_61

    .line 1014
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getChangedCmcInfoList()Ljava/util/Set;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->NETWORK_PREF:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "CmcAccountManager"

    if-eqz v0, :cond_2c

    .line 1015
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v0

    const/16 v4, 0x12

    if-ne v0, v4, :cond_2c

    const-string p0, "needDeregiOnDeviceChange: false with WiFi"

    .line 1016
    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1019
    :cond_2c
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getChangedCmcInfoList()Ljava/util/Set;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->ACCESS_TOKEN:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    .line 1020
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getChangedCmcInfoList()Ljava/util/Set;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->PCSCF_ADDR_LIST:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    :cond_48
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    .line 1021
    invoke-static {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result p0

    if-eqz p0, :cond_61

    const-string p0, "needDeregiOnDeviceChange: false: access token or pcscf update in call state"

    .line 1023
    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setHasPendingDeregister(Z)V

    return v2

    :cond_61
    return v1
.end method

.method private onSaUpdated()V
    .registers 4

    const-string v0, "onSaUpdated: "

    const-string v1, "CmcAccountManager"

    .line 777
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->updateCmcPref()V

    .line 779
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 784
    :cond_14
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    if-nez v0, :cond_1c

    .line 785
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startCmcRegistration()V

    goto :goto_24

    :cond_1c
    const-string v0, "onSaUpdated: notifyCmcDeviceChanged with access token"

    .line 787
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    :goto_24
    return-void
.end method

.method private onStartCmcRegistration()V
    .registers 7

    .line 273
    sget-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcServiceInstalled:Z

    if-nez v0, :cond_c

    .line 274
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "onStartCmcRegistration: Cmc service not installed"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void

    .line 277
    :cond_c
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    const-string v1, "CmcAccountManager"

    if-eqz v0, :cond_18

    const-string p0, "onStartCmcRegistration: Cmc Profile is already added"

    .line 278
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 281
    :cond_18
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcRegistrationRequired()Z

    move-result v0

    if-nez v0, :cond_24

    const-string p0, "onStartCmcRegistration: CMC registration is not required"

    .line 282
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 286
    :cond_24
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 287
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->isRunning()Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "Start VoLteService"

    .line 288
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->start()V

    .line 292
    :cond_3c
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->updateCmcProfile()V

    .line 293
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->isFailed()Z

    move-result v2

    if-eqz v2, :cond_4d

    const-string p0, "onStartCmcRegistration: updateCmcProfile failed"

    .line 294
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4d
    const/4 v2, 0x0

    move v3, v2

    .line 298
    :goto_4f
    iget v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v3, v4, :cond_62

    .line 299
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v4

    if-eqz v4, :cond_5f

    const-string p0, "onStartCmcRegistration: manual deregister is ongoing"

    .line 300
    invoke-static {v1, v3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 305
    :cond_62
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartCmcRegistration: registerProfile CMC: same WiFi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSupportSameWiFiOnly()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", ecall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isEmergencyCallSupported()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 305
    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 307
    :goto_88
    iget v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v2, v3, :cond_92

    .line 308
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->registerProfile(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    :cond_92
    const/4 v2, 0x1

    .line 310
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    if-eqz v0, :cond_bd

    const-string v2, "onStartCmcRegistration: update lineId and deviceId for p2p"

    .line 313
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "urn:duid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->setP2pServiceInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bd
    return-void
.end method

.method private onStopCmcRegistration()V
    .registers 5

    .line 369
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    const-string v1, "CmcAccountManager"

    if-nez v0, :cond_c

    const-string p0, "onStopCmcRegistration: no profile added"

    .line 370
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v0, 0x0

    move v2, v0

    .line 374
    :goto_e
    iget v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v2, v3, :cond_21

    .line 375
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v3

    if-nez v3, :cond_1e

    const-string p0, "onStopCmcRegistration: manual register is ongoing"

    .line 376
    invoke-static {v1, v2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 381
    :cond_21
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStopCmcRegistration: deregisterProfile: activation["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcActivated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "] isSD["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "] hasCallForking["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->hasCallForkingService()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 381
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 385
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isReadyRegisterP2p()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSdHasCallForkingService()Z

    move-result v1

    if-nez v1, :cond_6e

    .line 386
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->stopRegi()V

    .line 387
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    return-void

    :cond_6e
    move v1, v0

    .line 391
    :goto_6f
    iget v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v1, v2, :cond_87

    .line 392
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    if-eqz v2, :cond_84

    .line 394
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-interface {v3, v2, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(II)V

    :cond_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 397
    :cond_87
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    return-void
.end method

.method private registerProfile(I)V
    .registers 5

    .line 335
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isReadyRegisterP2p()Z

    move-result v0

    const-string v1, "CmcAccountManager"

    if-eqz v0, :cond_1c

    const-string/jumbo p1, "registerProfile: ready to D2D register"

    .line 336
    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->startRegi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 341
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerProfile("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    if-eqz p0, :cond_43

    .line 344
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I

    :cond_43
    return-void
.end method

.method private resetSARetryCount()V
    .registers 2

    const/4 v0, 0x0

    .line 1156
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    return-void
.end method

.method private startDelayedCmcRegistration(I)V
    .registers 4

    .line 172
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startSAServiceInternal(Z)V
    .registers 2

    .line 715
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->resetSARetryCount()V

    .line 716
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->connectToSamsungAccountService(Z)V

    return-void
.end method

.method private stopCmcRegistration()V
    .registers 2

    .line 176
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private updateCmcPref()V
    .registers 5

    .line 808
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CmcAccountManager"

    if-nez v0, :cond_f

    const-string/jumbo p0, "updateCmcPref: sp is null"

    .line 810
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 813
    :cond_f
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "accesstoken"

    .line 815
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "saurl"

    .line 816
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 817
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCmcPref: token: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", SaUrl: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateCmcProfile()V
    .registers 4

    .line 492
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    .line 493
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcInfo()Lcom/sec/internal/ims/core/cmc/CmcInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    .line 494
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->clearChangedCmcInfoList()V

    .line 496
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcInfoValid(Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 497
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCmcProfile: Invalid CmcInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getProfileUpdateReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 498
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->FAILED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setProfileUpdatedResult(Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;)V

    return-void

    .line 502
    :cond_3a
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcInfoEqual(Lcom/sec/internal/ims/core/cmc/CmcInfo;Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v0, "CmcAccountManager"

    const-string/jumbo v1, "updateCmcProfile: Same CmcInfo"

    .line 503
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->NOT_UPDATED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setProfileUpdatedResult(Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;)V

    return-void

    .line 508
    :cond_52
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->initProfile()V

    .line 509
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->setPcscfList()V

    .line 511
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCmcProfile: Update CmcInfo: Line["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v2, v2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    .line 512
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getProfileUpdateReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 511
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 513
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->UPDATED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setProfileUpdatedResult(Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;)V

    return-void
.end method


# virtual methods
.method public dump()V
    .registers 1

    .line 1160
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    return-void
.end method

.method public getAccessTokenFromCmcPref()Ljava/lang/String;
    .registers 3

    const-string v0, "accesstoken"

    .line 823
    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcConstants$SA;->TOKEN_DEFAULT:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getSharedPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccessTokenFromCmcPref: token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcAccountManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getCmcRegiConfigForUserAgent()Landroid/os/Bundle;
    .registers 6

    .line 855
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 856
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mSaServerUrl:Ljava/lang/String;

    .line 857
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRelayType()Ljava/lang/String;

    move-result-object v2

    .line 858
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getEmergencyCallNumberString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, "saServerUrl"

    .line 859
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "relayType"

    .line 860
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "eCallNum"

    .line 861
    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCmcRegiConfigForUserAgent: SA url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", relayType: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ecallnumlist: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CmcAccountManager"

    .line 863
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .registers 5

    .line 834
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 835
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    const-string p0, "CmcAccountManager"

    const-string v0, "getCmcRegisterTask: rtl is null"

    .line 837
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 840
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 841
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-eqz v2, :cond_17

    return-object v0

    :cond_2e
    return-object v1
.end method

.method public getCurrentLineOwnerDeviceId()Ljava/lang/String;
    .registers 1

    .line 686
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentLineSlotIndex()I
    .registers 1

    .line 681
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    return p0
.end method

.method public getRegiEventNotifyHostInfo()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 768
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRegiEventNotifyHostInfo:Ljava/util/List;

    return-object p0
.end method

.method public handleSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V
    .registers 7

    .line 1118
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1120
    iget v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    const-string v1, "CmcAccountManager"

    const/4 v2, 0x3

    if-le v0, v2, :cond_2a

    .line 1122
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleSARequestFailed: ignore fail: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->description()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1126
    :cond_2a
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSARequestFailed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->description()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", retry("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1130
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->NOT_LOGGED_IN:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    if-eq p1, v0, :cond_9d

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->RESIGN_REQUIRED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    if-eq p1, v0, :cond_9d

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->OTHERS:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    if-ne p1, v0, :cond_68

    goto :goto_9d

    .line 1135
    :cond_68
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->NETWORK_UNAVAILABLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    if-ne p1, v0, :cond_8d

    .line 1137
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object p1

    if-eqz p1, :cond_8a

    .line 1138
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v0

    if-eqz v0, :cond_8a

    const-string v0, "handleSARequestFailed: release throttle"

    .line 1139
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->releaseThrottleByCmc(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1142
    :cond_8a
    iput v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    goto :goto_a4

    .line 1143
    :cond_8d
    iget p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    if-ge p1, v2, :cond_97

    .line 1145
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->tryGetAccessToken()V

    goto :goto_a4

    :cond_97
    const-string p1, "handleSARequestFailed: max count"

    .line 1147
    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a4

    :cond_9d
    :goto_9d
    const-string p1, "handleSARequestFailed: stop requesting"

    .line 1133
    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    iput v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    .line 1150
    :goto_a4
    iget p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    if-ne p1, v2, :cond_ad

    .line 1151
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->disconnectToSamsungAccountService()V

    :cond_ad
    return-void
.end method

.method public hasSecondaryDevice()Z
    .registers 3

    .line 691
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    .line 692
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceIdList()Ljava/util/List;

    move-result-object p0

    .line 693
    invoke-static {v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isPD(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    if-eqz p0, :cond_24

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-gt p0, v1, :cond_24

    const-string p0, "CmcAccountManager"

    const-string v0, "hasSecondaryDevice : no SD with current PD"

    .line 694
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_24
    return v1
.end method

.method public initSequentially()V
    .registers 3

    .line 126
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->init()V

    .line 128
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->makeProfileMap()V

    .line 129
    sget-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcServiceInstalled:Z

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isWifiOnlyModel()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "CmcAccountManager"

    const-string v1, "initSequentially: start cmc registration for wifi only model"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 131
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startDelayedCmcRegistration(I)V

    :cond_23
    return-void
.end method

.method public isCmcActivated()Z
    .registers 1

    .line 602
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getOwnCmcActivation()Z

    move-result p0

    return p0
.end method

.method public isCmcEnabled()Z
    .registers 4

    .line 739
    sget-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcServiceInstalled:Z

    const-string v1, "CmcAccountManager"

    if-nez v0, :cond_d

    const-string p0, "isCmcEnabled: Not installed "

    .line 740
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 743
    :cond_d
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcActivated()Z

    move-result p0

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCmcEnabled: CmcActivated: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public isCmcProfileAdded()Z
    .registers 1

    .line 518
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    return p0
.end method

.method public isEmergencyCallSupported()Z
    .registers 3

    const-string v0, "persist.cmc.enable_cmc30"

    const-string v1, ""

    .line 889
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 890
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x1

    return p0

    .line 893
    :cond_12
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isEmergencyCallSupported()Z

    move-result p0

    return p0
.end method

.method public isEmergencyNumber(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x1

    .line 919
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isEmergencyNumberInternal(Ljava/lang/String;IZ)Z

    move-result p0

    .line 920
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isEmergencyNumber: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", number: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CmcAccountManager"

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public isPotentialEmergencyNumber(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x0

    .line 926
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isEmergencyNumberInternal(Ljava/lang/String;IZ)Z

    move-result p0

    .line 927
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isPotentialEmergencyNumber: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", number: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CmcAccountManager"

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public isProfileUpdateFailed()Z
    .registers 1

    .line 850
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->isFailed()Z

    move-result p0

    return p0
.end method

.method public isSecondaryDevice()Z
    .registers 5

    .line 750
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    const/4 v0, 0x0

    const-string v1, "CmcAccountManager"

    if-nez p0, :cond_d

    const-string p0, "isSecondaryDevice : cmcsetting is null"

    .line 751
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 754
    :cond_d
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isSD(Ljava/lang/String;)Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_1e

    const-string p0, "isSecondaryDevice: by cmcsetting"

    .line 755
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1e
    const-string/jumbo p0, "ro.cmc.device_type"

    const-string v3, ""

    .line 758
    invoke-static {p0, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 759
    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isSD(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_33

    const-string p0, "isSecondaryDevice: by prop"

    .line 760
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_33
    return v0
.end method

.method public isSupportDualSimCMC()Z
    .registers 3

    const-string v0, "persist.cmc.enable_dualsim_cmc"

    const-string v1, ""

    .line 879
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 880
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x1

    return p0

    .line 883
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportDualSimCMC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-boolean v1, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsDualCmc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcAccountManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsDualCmc:Z

    return p0
.end method

.method public isSupportSameWiFiOnly()Z
    .registers 3

    const-string v0, "persist.cmc.enable_cmc30"

    const-string v1, ""

    .line 870
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 871
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x1

    return p0

    .line 874
    :cond_12
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isSameWifiNetworkOnly()Z

    move-result p0

    return p0
.end method

.method public isWifiOnly()Z
    .registers 2

    .line 702
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mNetworkPref:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public notifyCmcDeviceChanged()V
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 184
    :cond_a
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyCmcNwPrefChanged()V
    .registers 5

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    :cond_e
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onChangedSamsungAccountInfo(Ljava/lang/String;)V
    .registers 6

    .line 720
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcProfileAdded()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 721
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->isSAServiceIdle()Z

    move-result v0

    const-string v1, "CmcAccountManager"

    if-nez v0, :cond_16

    const-string p0, "onChangedSamsungAccountInfo: SA service not IDLE state"

    .line 722
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 725
    :cond_16
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 726
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string p0, "onChangedSamsungAccountInfo: CmcTask is NOT REGISTERED or IDLE state"

    .line 727
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 730
    :cond_34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getAccessTokenFromCmcPref()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    const-string p1, "onChangedSamsungAccountInfo: startSAService"

    .line 731
    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 732
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startSAService(Z)V

    :cond_4d
    return-void
.end method

.method protected onCmcDeviceChanged()V
    .registers 12

    .line 195
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    const-string v1, "CmcAccountManager"

    if-nez v0, :cond_e

    const-string p0, "onCmcDeviceChanged: RegistrationManagerBase is null"

    .line 197
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    const/4 v2, 0x0

    move v3, v2

    .line 201
    :goto_10
    iget v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v3, v4, :cond_2b

    .line 202
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 203
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_28

    const-string p0, "onCmcDeviceChanged: deregistering"

    .line 204
    invoke-static {v1, v3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 209
    :cond_2b
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcPhoneId()I

    move-result v3

    .line 211
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v4

    if-eqz v4, :cond_122

    .line 213
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->updateCmcProfile()V

    .line 214
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcRegistrationRequired()Z

    move-result v5

    if-nez v5, :cond_47

    const-string v0, "onCmcDeviceChanged: stopCmcRegistration"

    .line 215
    invoke-static {v1, v3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 216
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->stopCmcRegistration()V

    return-void

    .line 218
    :cond_47
    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->isNotUpdated()Z

    move-result v5

    if-eqz v5, :cond_55

    const-string p0, "onCmcDeviceChanged: Not updated"

    .line 219
    invoke-static {v1, v3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 223
    :cond_55
    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v5, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->releaseThrottleByCmc(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 227
    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v5, v5, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isPD(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_71

    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->isUpdated()Z

    move-result v5

    if-eqz v5, :cond_71

    .line 228
    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v5, v5, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    goto :goto_72

    :cond_71
    move v5, v3

    .line 231
    :goto_72
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v6, v7}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 232
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->needDeregiOnDeviceChange(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v6

    if-eqz v6, :cond_ec

    const-string v6, "CMC profile updated"

    .line 234
    invoke-interface {v4, v6}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    const/16 v7, 0x1d

    .line 235
    invoke-interface {v4, v7}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    if-eq v5, v3, :cond_94

    const/4 v7, 0x1

    goto :goto_95

    :cond_94
    move v7, v2

    .line 238
    :goto_95
    iget-object v8, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCmcDeviceChanged: deregister slot["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] local: "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 239
    invoke-interface {v0, v4, v7, v2, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_ec

    .line 241
    :cond_b7
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v2, v6}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 242
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCmcDeviceChanged: stopPdn slot["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 243
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v2

    invoke-interface {v0, v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 244
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v4, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 247
    :cond_ec
    :goto_ec
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v2

    if-eqz v2, :cond_11c

    const-string v3, "onCmcDeviceChanged: update lineId and deviceId for p2p"

    .line 249
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "urn:duid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    invoke-interface {v2, v1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->setP2pServiceInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11c
    const-wide/16 v1, 0x1f4

    .line 254
    invoke-interface {v0, v5, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegsiter(IJ)V

    goto :goto_12a

    :cond_122
    const-string v0, "onCmcDeviceChanged: startCmcRegistration"

    .line 256
    invoke-static {v1, v3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startCmcRegistration()V

    :goto_12a
    return-void
.end method

.method public onSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V
    .registers 3

    .line 1114
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSARequested()V
    .registers 4

    .line 1090
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onSARequested: expire 31 secs"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1091
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v0, 0x7

    const-wide/16 v1, 0x7918

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onSAServiceBindResult(ZZ)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 1071
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "onSAServiceBindResult: success"

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1072
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    return-void

    .line 1077
    :cond_d
    iget p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    const/4 v1, 0x5

    if-ge p1, v1, :cond_56

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 1078
    iput p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    .line 1079
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSAServiceBindResult: retry ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") after "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "secs"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1081
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5f

    .line 1083
    :cond_56
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "onSAServiceBindResult: retry over"

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1084
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    :goto_5f
    return-void
.end method

.method public onSAUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1096
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onSAUpdated"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1097
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1098
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1099
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->disconnectToSamsungAccountService()V

    .line 1101
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "CmcAccountManager"

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->isLocalCachedAccessTokenRequestState()Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "Same updated token with the previous one. Set force update"

    .line 1102
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setForceUpdate()V

    .line 1106
    :cond_35
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    .line 1107
    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    .line 1108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSAUpdated: Url: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " token: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSimRefresh(I)V
    .registers 5

    .line 262
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimRefresh("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 263
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    if-eqz v0, :cond_44

    .line 264
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 265
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSimRefresh: RegisterTask is already in the slot ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CmcAccountManager"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 268
    :cond_41
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->registerProfile(I)V

    :cond_44
    return-void
.end method

.method public setEmergencyNumbers(Ljava/lang/String;)V
    .registers 10

    .line 898
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "CmcAccountManager"

    if-eqz v0, :cond_f

    const-string/jumbo p0, "setEmergencyNumbers: no numbers"

    .line 899
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 902
    :cond_f
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "\""

    const-string v2, ""

    .line 903
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    .line 904
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "\\,"

    if-eqz v3, :cond_5e

    .line 905
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 906
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    filled-new-array {v0, v3}, [I

    move-result-object v0

    const/4 v3, 0x0

    :goto_37
    const/4 v5, 0x2

    if-ge v3, v5, :cond_73

    .line 907
    aget v5, v0, v3

    .line 908
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_49

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_4a

    :cond_49
    move-object v6, v2

    .line 909
    :goto_4a
    iget-object v7, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 912
    :cond_5e
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v2, v2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    :cond_73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setEmergencyNumbers: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPcscfList()V
    .registers 10

    .line 401
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    const-string v1, "CmcAccountManager"

    if-eqz v0, :cond_bd

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_bd

    .line 406
    :cond_10
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string/jumbo p0, "setPcscfList: mProfileMap is empty"

    .line 407
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 411
    :cond_1f
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    .line 413
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v4, 0x1f40

    move v5, v4

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ":"

    .line 416
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_64

    .line 417
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    .line 418
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_65

    :cond_64
    move v7, v4

    :goto_65
    const-string v6, "(pcscf = "

    .line 422
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / port = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_34

    .line 425
    :cond_7f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pcscfList size["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    .line 428
    invoke-virtual {v0, v2}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 429
    invoke-virtual {v0, v5}, Lcom/sec/ims/settings/ImsProfile;->setSipPort(I)V

    goto :goto_a9

    :cond_bc
    return-void

    :cond_bd
    :goto_bd
    const-string/jumbo p0, "setPcscfList: PcscfAddrList is empty"

    .line 402
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRegiEventNotifyHostInfo(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 773
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRegiEventNotifyHostInfo:Ljava/util/List;

    return-void
.end method

.method public startCmcRegistration()V
    .registers 2

    .line 168
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startSAService(Z)V
    .registers 6

    .line 708
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 709
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSAService: request SA, isLocal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 710
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2d
    return-void
.end method
