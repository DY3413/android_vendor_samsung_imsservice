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
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onSaUpdated()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monStartCmcRegistration(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onStartCmcRegistration()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monStopCmcRegistration(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onStopCmcRegistration()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartSAServiceInternal(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startSAServiceInternal(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    .line 76
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    const-string v0, ""

    .line 77
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRegiEventNotifyHostInfo:Ljava/util/List;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    .line 84
    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    .line 86
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    .line 87
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    const-string v0, "CmcAccountManager"

    const-string v1, "CmcAccountManager create"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    .line 114
    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    const/16 v2, 0x64

    invoke-direct {v1, p1, v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 115
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    .line 116
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerFactory;->createCmcSettingManager(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    .line 117
    new-instance p1, Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0, p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    .line 118
    new-instance p1, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-direct {p1, p0, p2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;-><init>(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    .line 119
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcServiceInstalled()Z

    move-result p1

    sput-boolean p1, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcServiceInstalled:Z

    .line 120
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->initCmcFromPref()V

    return-void
.end method

.method private getCmcCallActivation(Ljava/lang/String;)Z
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getCmcCallActivation(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getCmcInfo()Lcom/sec/internal/ims/core/cmc/CmcInfo;
    .locals 2

    .line 569
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfo;-><init>()V

    .line 571
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getCmcSupported()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mOobe:Z

    .line 572
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getOwnCmcActivation()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mActivation:Z

    .line 573
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    .line 574
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    .line 575
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getAccessTokenFromCmcPref()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mAccessToken:Ljava/lang/String;

    .line 576
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getLineId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    .line 577
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getPrimaryDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    .line 578
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getImpuFromLineId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineImpu:Ljava/lang/String;

    .line 579
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getPcscfAddressList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    .line 580
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mSaServerUrl:Ljava/lang/String;

    .line 581
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getActiveSimSlot()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    .line 582
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->hasSecondaryDevice()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mHasSd:Z

    .line 583
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getPreferredNetwork()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mNetworkPref:I

    .line 584
    iget-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCallAllowedSdByPd(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mCallforkingEnabled:Z

    .line 585
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isEmergencyCallSupported()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsEmergencyCallSupported:Z

    .line 586
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isSameWifiNetworkOnly()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsSameWiFiOnly:Z

    .line 587
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isDualCmc()Z

    move-result p0

    iput-boolean p0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsDualCmc:Z

    .line 589
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
    .locals 2

    .line 812
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p0

    :goto_1
    return p0
.end method

.method private getCmcRelayType()Ljava/lang/String;
    .locals 0

    .line 480
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSupportSameWiFiOnly()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "priv-p2p"

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private getEmergencyCallNumberString()Ljava/lang/String;
    .locals 3

    .line 938
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSupportDualSimCMC()Z

    move-result v0

    const-string v1, "-"

    if-eqz v0, :cond_0

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getEmergencyCallNumberString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    .line 940
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getEmergencyCallNumberString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getEmergencyCallNumberString(I)Ljava/lang/String;

    move-result-object p0

    .line 944
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    :goto_1
    const-string p0, ""

    :goto_2
    return-object p0
.end method

.method private getEmergencyCallNumberString(I)Ljava/lang/String;
    .locals 4

    .line 949
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 952
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getEmergencyNumberList()Ljava/util/Map;

    move-result-object p0

    const-string v0, "CmcAccountManager"

    if-eqz p0, :cond_6

    .line 953
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 957
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_5

    .line 958
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 962
    :cond_2
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 963
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/emergency/EmergencyNumber;

    .line 964
    invoke-virtual {v3}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 966
    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result p0

    if-lez p0, :cond_4

    const-string p0, ","

    .line 967
    invoke-static {p0, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 969
    :cond_4
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

    :cond_5
    :goto_1
    const-string p0, "getEmergencyCallNumberString: ecall list empty"

    .line 959
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_6
    :goto_2
    const-string p0, "getEmergencyCallNumberString: ecall list map empty"

    .line 954
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getImpuFromLineId()Ljava/lang/String;
    .locals 2

    .line 641
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getLineImpu()Ljava/lang/String;

    move-result-object p0

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImpuFromLineId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcAccountManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private getPrimaryDeviceId()Ljava/lang/String;
    .locals 4

    .line 648
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceIdList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 649
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 650
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 651
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceTypeWithDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 652
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isPD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 658
    :goto_0
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
    .locals 2

    .line 468
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/settings/ImsProfile;

    const-string p1, "CmcAccountManager"

    if-nez p0, :cond_0

    const-string p0, "mProfile is null"

    .line 470
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 474
    :cond_0
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
    .locals 0

    .line 780
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 781
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method private getSharedPreference()Landroid/content/SharedPreferences;
    .locals 3

    .line 776
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    const-string v1, "cmcaccount"

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private hasCallForkingService()Z
    .locals 1

    .line 600
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSdHasCallForkingService()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isPdHasCallForkingService()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private initCmcFromPref()V
    .locals 2

    .line 785
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcConstants$SA;->TOKEN_DEFAULT:Ljava/lang/String;

    const-string v1, "accesstoken"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getSharedPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    const-string v0, "saurl"

    const-string/jumbo v1, "us-auth2.samsungosp.comus-aut"

    .line 786
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getSharedPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    const-string p0, "CmcAccountManager"

    const-string v0, "initCmcFromPref: "

    .line 787
    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initProfile()V
    .locals 11

    const-string v0, "CmcAccountManager"

    const-string v1, "initProfile: build ImsProfile for CMC"

    .line 429
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineImpu:Ljava/lang/String;

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "urn:duid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 434
    iget-object v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isPD(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SamsungCMC_PD"

    goto :goto_0

    :cond_0
    const-string v4, "SamsungCMC_SD"

    :goto_0
    const-string/jumbo v5, "sip:"

    .line 437
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    const-string v5, ":"

    .line 438
    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v1

    :goto_1
    const-string v7, "@"

    .line 443
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_2

    const/4 v8, 0x0

    .line 444
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 445
    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 446
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

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v7, ""

    move-object v8, v5

    .line 449
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/ims/settings/ImsProfile;

    .line 450
    invoke-virtual {v9, v4}, Lcom/sec/ims/settings/ImsProfile;->setName(Ljava/lang/String;)V

    const/16 v10, 0x1f40

    .line 451
    invoke-virtual {v9, v10}, Lcom/sec/ims/settings/ImsProfile;->setSipPort(I)V

    .line 452
    invoke-virtual {v9, v8}, Lcom/sec/ims/settings/ImsProfile;->setPassword(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v9, v7}, Lcom/sec/ims/settings/ImsProfile;->setDomain(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v9, v6}, Lcom/sec/ims/settings/ImsProfile;->setVceConfigEnabled(Z)V

    .line 455
    invoke-virtual {v9, v2}, Lcom/sec/ims/settings/ImsProfile;->setDuid(Ljava/lang/String;)V

    .line 456
    iget-object v10, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v10, v10, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/sec/ims/settings/ImsProfile;->setAccessToken(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v9, v3}, Lcom/sec/ims/settings/ImsProfile;->setPriDeviceIdWithURN(Ljava/lang/String;)V

    .line 458
    iget-object v10, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v10, v10, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/sec/ims/settings/ImsProfile;->setDisplayName(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v9, v5}, Lcom/sec/ims/settings/ImsProfile;->setImpi(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v9, v1}, Lcom/sec/ims/settings/ImsProfile;->setImpuList(Ljava/lang/String;)V

    .line 461
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 462
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-virtual {v9, v10}, Lcom/sec/ims/settings/ImsProfile;->setExtImpuList(Ljava/util/List;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private isCallAllowedSdByPd(Ljava/lang/String;)Z
    .locals 0

    .line 633
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isCallAllowedSdByPd(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isCmcInfoEqual(Lcom/sec/internal/ims/core/cmc/CmcInfo;Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 545
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getInfoNameSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 547
    invoke-virtual {p1, v3, p2}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->compareWithName(Ljava/lang/String;Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 548
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-static {v3}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->isDumpPrintAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 550
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getValueWithName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "],"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->addChangedCmcInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 557
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->isFailed()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 558
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string p1, "New valid CmcInfo "

    .line 559
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :cond_4
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

    .line 562
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setProfileUpdateReason(Ljava/lang/String;)V

    return v0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private isCmcInfoValid(Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "OwnDeviceInfo null"

    goto :goto_0

    .line 522
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getInfoNameSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 523
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->checkValidWithName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 530
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "CmcAccountManager"

    if-nez v1, :cond_3

    .line 531
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCmcInfoValid: fail - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setProfileUpdateReason(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 535
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCmcInfoValid: true "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    .line 975
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x7

    if-eq p0, p1, :cond_0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isCmcRegistrationRequired()Z
    .locals 3

    .line 315
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcActivated()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CmcAccountManager"

    if-nez v0, :cond_0

    const-string p0, "isCmcRegistrationRequired: CMC not activated"

    .line 316
    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 320
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->hasCallForkingService()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "isCmcRegistrationRequired: CMC Call forking disabled"

    .line 321
    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isCmcServiceInstalled()Z
    .locals 3

    .line 986
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.mdecservice"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 987
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "isCmcServiceInstalled: true"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 990
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isCmcServiceInstalled: false"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private isEmergencyNumberInternal(Ljava/lang/String;IZ)Z
    .locals 4

    .line 915
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSupportDualSimCMC()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget p2, p2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 916
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 919
    :cond_1
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

    .line 920
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 922
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    .line 924
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v1

    .line 928
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method private isPdHasCallForkingService()Z
    .locals 1

    .line 604
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getPrimaryDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcCallActivation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isPdHasCallForkingService: PD CmcCallActivation false"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isReadyRegisterP2p()Z
    .locals 3

    const/4 v0, 0x0

    .line 346
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "com.samsung.android.mdecservice"

    const/16 v2, 0x80

    .line 348
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 350
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v1, "d2d_trial"

    .line 352
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 357
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CmcAccountManager"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private isSdHasCallForkingService()Z
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 614
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isSdHasCallForkingService: deviceId is null"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v1

    .line 617
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCallAllowedSdByPd(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 618
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isSdHasCallForkingService: isCallAllowedSdByPd false"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v1

    .line 621
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcCallActivation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 622
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isSdHasCallForkingService: Device CmcCallActivation false"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v1

    .line 625
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isPdHasCallForkingService()Z

    move-result v0

    if-nez v0, :cond_3

    .line 626
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isSdHasCallForkingService: PD CmcCallActivation false"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private makeProfileMap()V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    .line 135
    :goto_0
    iget v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v1, v2, :cond_4

    .line 136
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    const-string v3, "MDMN"

    invoke-static {v2, v3, v1}, Lcom/sec/ims/settings/ImsProfileLoader;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 138
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/settings/ImsProfile;

    .line 139
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SamsungCMC"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, v4

    :cond_1
    const-string v2, "CmcAccountManager"

    if-nez v3, :cond_2

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeProfileMap: No pre-defined profile slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 150
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeProfileMap: CMC profile found slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    new-array v4, v2, [I

    .line 152
    fill-array-data v4, :array_0

    .line 154
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const-string v6, "mmtel"

    .line 155
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v6, v0

    :goto_1
    if-ge v6, v2, :cond_3

    .line 156
    aget v7, v4, v6

    .line 157
    invoke-virtual {v3, v7, v5}, Lcom/sec/ims/settings/ImsProfile;->setServiceSet(ILjava/util/Set;)V

    const/4 v8, 0x1

    .line 158
    invoke-virtual {v3, v7, v8}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 161
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void

    :array_0
    .array-data 4
        0x6
        0x5
        0xc
        0xe
    .end array-data
.end method

.method private needDeregiOnDeviceChange(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 5

    .line 996
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getChangedCmcInfoList()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 997
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getChangedCmcInfoList()Ljava/util/Set;

    move-result-object v0

    const-string v2, "network_pref"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "CmcAccountManager"

    if-eqz v0, :cond_0

    .line 998
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v0

    const/16 v4, 0x12

    if-ne v0, v4, :cond_0

    const-string p0, "needDeregiOnDeviceChange: false with WiFi"

    .line 999
    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getChangedCmcInfoList()Ljava/util/Set;

    move-result-object v0

    const-string v4, "access_token"

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    .line 1003
    invoke-static {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "needDeregiOnDeviceChange: false: access token update in call state"

    .line 1005
    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setHasPendingDeregister(Z)V

    return v2

    :cond_1
    return v1
.end method

.method private onSaUpdated()V
    .locals 3

    const-string v0, "CmcAccountManager"

    const-string v1, "onSaUpdated: "

    .line 760
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->updateCmcPref()V

    .line 762
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 767
    :cond_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    if-nez v1, :cond_1

    .line 768
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startCmcRegistration()V

    goto :goto_0

    :cond_1
    const-string v1, "onSaUpdated: notifyCmcDeviceChanged with access token"

    .line 770
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    :goto_0
    return-void
.end method

.method private onStartCmcRegistration()V
    .locals 6

    .line 268
    sget-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcServiceInstalled:Z

    if-nez v0, :cond_0

    .line 269
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "onStartCmcRegistration: Cmc service not installed"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void

    .line 272
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    const-string v1, "CmcAccountManager"

    if-eqz v0, :cond_1

    const-string p0, "onStartCmcRegistration: Cmc Profile is already added"

    .line 273
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 276
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcRegistrationRequired()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "onStartCmcRegistration: CMC registration is not required"

    .line 277
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 281
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 282
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->isRunning()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Start VoLteService"

    .line 283
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->start()V

    .line 287
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->updateCmcProfile()V

    .line 288
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->isFailed()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p0, "onStartCmcRegistration: updateCmcProfile failed"

    .line 289
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v2, 0x0

    move v3, v2

    .line 293
    :goto_0
    iget v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v3, v4, :cond_6

    .line 294
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string p0, "onStartCmcRegistration: manual deregister is ongoing"

    .line 295
    invoke-static {v1, v3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 300
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartCmcRegistration: registerProfile CMC: same WiFi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
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

    .line 300
    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 302
    :goto_1
    iget v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v2, v3, :cond_7

    .line 303
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->registerProfile(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    .line 305
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    if-eqz v0, :cond_8

    const-string v2, "onStartCmcRegistration: update lineId and deviceId for p2p"

    .line 308
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "urn:duid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->setP2pServiceInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private onStopCmcRegistration()V
    .locals 4

    .line 364
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    const-string v1, "CmcAccountManager"

    if-nez v0, :cond_0

    const-string p0, "onStopCmcRegistration: no profile added"

    .line 365
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 369
    :goto_0
    iget v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v2, v3, :cond_2

    .line 370
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v3

    if-nez v3, :cond_1

    const-string p0, "onStopCmcRegistration: manual register is ongoing"

    .line 371
    invoke-static {v1, v2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStopCmcRegistration: deregisterProfile: activation["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
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

    .line 378
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->hasCallForkingService()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 376
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isReadyRegisterP2p()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSdHasCallForkingService()Z

    move-result v1

    if-nez v1, :cond_3

    .line 381
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->stopRegi()V

    .line 382
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    return-void

    :cond_3
    move v1, v0

    .line 386
    :goto_1
    iget v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v1, v2, :cond_5

    .line 387
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 389
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-interface {v3, v2, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(II)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 392
    :cond_5
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    return-void
.end method

.method private registerProfile(I)V
    .locals 3

    .line 330
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isReadyRegisterP2p()Z

    move-result v0

    const-string v1, "CmcAccountManager"

    if-eqz v0, :cond_0

    const-string p1, "registerProfile: ready to D2D register"

    .line 331
    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->startRegi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerProfile("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 339
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I

    :cond_1
    return-void
.end method

.method private resetSARetryCount()V
    .locals 1

    const/4 v0, 0x0

    .line 1138
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    return-void
.end method

.method private startDelayedCmcRegistration(I)V
    .locals 2

    .line 171
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startSAServiceInternal(Z)V
    .locals 0

    .line 698
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->resetSARetryCount()V

    .line 699
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->connectToSamsungAccountService(Z)V

    return-void
.end method

.method private stopCmcRegistration()V
    .locals 1

    .line 175
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private updateCmcPref()V
    .locals 4

    .line 791
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CmcAccountManager"

    if-nez v0, :cond_0

    const-string/jumbo p0, "updateCmcPref: sp is null"

    .line 793
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 796
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 798
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    const-string v3, "accesstoken"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 799
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    const-string v3, "saurl"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 800
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 802
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
    .locals 3

    .line 487
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    .line 488
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcInfo()Lcom/sec/internal/ims/core/cmc/CmcInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    .line 489
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->clearChangedCmcInfoList()V

    .line 491
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcInfoValid(Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
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

    .line 493
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->FAILED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setProfileUpdatedResult(Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;)V

    return-void

    .line 497
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcInfoEqual(Lcom/sec/internal/ims/core/cmc/CmcInfo;Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CmcAccountManager"

    const-string/jumbo v1, "updateCmcProfile: Same CmcInfo"

    .line 498
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->NOT_UPDATED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setProfileUpdatedResult(Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;)V

    return-void

    .line 503
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->initProfile()V

    .line 504
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->setPcscfList()V

    .line 506
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

    .line 507
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getProfileUpdateReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 508
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->UPDATED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setProfileUpdatedResult(Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;)V

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 0

    .line 1142
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    return-void
.end method

.method public getAccessTokenFromCmcPref()Ljava/lang/String;
    .locals 2

    .line 806
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcConstants$SA;->TOKEN_DEFAULT:Ljava/lang/String;

    const-string v1, "accesstoken"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getSharedPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 807
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
    .locals 5

    .line 838
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 839
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mSaServerUrl:Ljava/lang/String;

    .line 840
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRelayType()Ljava/lang/String;

    move-result-object v2

    .line 841
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getEmergencyCallNumberString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "saServerUrl"

    .line 842
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "relayType"

    .line 843
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "eCallNum"

    .line 844
    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
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

    .line 847
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CmcAccountManager"

    .line 846
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .locals 3

    .line 817
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 818
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "CmcAccountManager"

    const-string v0, "getCmcRegisterTask: rtl is null"

    .line 820
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 823
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 824
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_2
    return-object v1
.end method

.method public getCurrentLineOwnerDeviceId()Ljava/lang/String;
    .locals 0

    .line 669
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentLineSlotIndex()I
    .locals 0

    .line 664
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    return p0
.end method

.method public getRegiEventNotifyHostInfo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 751
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRegiEventNotifyHostInfo:Ljava/util/List;

    return-object p0
.end method

.method public handleSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V
    .locals 5

    .line 1100
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1102
    iget v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    const-string v1, "CmcAccountManager"

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    .line 1104
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

    .line 1108
    :cond_0
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

    .line 1112
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->NOT_LOGGED_IN:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->RESIGN_REQUIRED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->OTHERS:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 1117
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->NETWORK_UNAVAILABLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    if-ne p1, v0, :cond_3

    .line 1119
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1120
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "handleSARequestFailed: release throttle"

    .line 1121
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->releaseThrottleByCmc(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1124
    :cond_2
    iput v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    goto :goto_1

    .line 1125
    :cond_3
    iget p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    if-ge p1, v2, :cond_4

    .line 1127
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->tryGetAccessToken()V

    goto :goto_1

    :cond_4
    const-string p1, "handleSARequestFailed: max count"

    .line 1129
    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_0
    const-string p1, "handleSARequestFailed: stop requesting"

    .line 1115
    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    iput v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    .line 1132
    :goto_1
    iget p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    if-ne p1, v2, :cond_6

    .line 1133
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->disconnectToSamsungAccountService()V

    :cond_6
    return-void
.end method

.method public hasSecondaryDevice()Z
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    .line 675
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceIdList()Ljava/util/List;

    move-result-object p0

    .line 676
    invoke-static {v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isPD(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-gt p0, v1, :cond_0

    const-string p0, "CmcAccountManager"

    const-string v0, "hasSecondaryDevice : no SD with current PD"

    .line 677
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method public initSequentially()V
    .locals 2

    .line 125
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->init()V

    .line 127
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->makeProfileMap()V

    .line 128
    sget-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcServiceInstalled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isWifiOnlyModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CmcAccountManager"

    const-string v1, "initSequentially: start cmc registration for wifi only model"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 130
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startDelayedCmcRegistration(I)V

    :cond_0
    return-void
.end method

.method public isCmcActivated()Z
    .locals 0

    .line 596
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getOwnCmcActivation()Z

    move-result p0

    return p0
.end method

.method public isCmcEnabled()Z
    .locals 3

    .line 722
    sget-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcServiceInstalled:Z

    const-string v1, "CmcAccountManager"

    if-nez v0, :cond_0

    const-string p0, "isCmcEnabled: Not installed "

    .line 723
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 726
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcActivated()Z

    move-result p0

    .line 727
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
    .locals 0

    .line 513
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    return p0
.end method

.method public isEmergencyCallSupported()Z
    .locals 2

    const-string v0, "persist.cmc.enable_cmc30"

    const-string v1, ""

    .line 872
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 873
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 876
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isEmergencyCallSupported()Z

    move-result p0

    return p0
.end method

.method public isEmergencyNumber(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x1

    .line 902
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isEmergencyNumberInternal(Ljava/lang/String;IZ)Z

    move-result p0

    .line 903
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
    .locals 1

    const/4 v0, 0x0

    .line 909
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isEmergencyNumberInternal(Ljava/lang/String;IZ)Z

    move-result p0

    .line 910
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
    .locals 0

    .line 833
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->isFailed()Z

    move-result p0

    return p0
.end method

.method public isSecondaryDevice()Z
    .locals 4

    .line 733
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    const/4 v0, 0x0

    const-string v1, "CmcAccountManager"

    if-nez p0, :cond_0

    const-string p0, "isSecondaryDevice : cmcsetting is null"

    .line 734
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 737
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isSD(Ljava/lang/String;)Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    const-string p0, "isSecondaryDevice: by cmcsetting"

    .line 738
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    const-string p0, "ro.cmc.device_type"

    const-string v3, ""

    .line 741
    invoke-static {p0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 742
    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isSD(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "isSecondaryDevice: by prop"

    .line 743
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    return v0
.end method

.method public isSupportDualSimCMC()Z
    .locals 2

    const-string v0, "persist.cmc.enable_dualsim_cmc"

    const-string v1, ""

    .line 862
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 863
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 866
    :cond_0
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

    .line 867
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsDualCmc:Z

    return p0
.end method

.method public isSupportSameWiFiOnly()Z
    .locals 2

    const-string v0, "persist.cmc.enable_cmc30"

    const-string v1, ""

    .line 853
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 854
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 857
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isSameWifiNetworkOnly()Z

    move-result p0

    return p0
.end method

.method public isWifiOnly()Z
    .locals 1

    .line 685
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mNetworkPref:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyCmcDeviceChanged()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 183
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyCmcNwPrefChanged()V
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onChangedSamsungAccountInfo(Ljava/lang/String;)V
    .locals 6

    .line 703
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcProfileAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 704
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->isSAServiceIdle()Z

    move-result v0

    const-string v1, "CmcAccountManager"

    if-nez v0, :cond_0

    const-string p0, "onChangedSamsungAccountInfo: SA service not IDLE state"

    .line 705
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 708
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x0

    .line 709
    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v3, v4

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v4, v3, v2

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "onChangedSamsungAccountInfo: CmcTask is NOT REGISTERED or IDLE state"

    .line 710
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 713
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getAccessTokenFromCmcPref()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "onChangedSamsungAccountInfo: startSAService"

    .line 714
    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startSAService(Z)V

    :cond_2
    return-void
.end method

.method protected onCmcDeviceChanged()V
    .locals 11

    .line 194
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    const-string v1, "CmcAccountManager"

    if-nez v0, :cond_0

    const-string p0, "onCmcDeviceChanged: RegistrationManagerBase is null"

    .line 196
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 200
    :goto_0
    iget v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v3, v4, :cond_2

    .line 201
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 202
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_1

    const-string p0, "onCmcDeviceChanged: deregistering"

    .line 203
    invoke-static {v1, v3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcPhoneId()I

    move-result v3

    .line 210
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 212
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->updateCmcProfile()V

    .line 213
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcRegistrationRequired()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v0, "onCmcDeviceChanged: stopCmcRegistration"

    .line 214
    invoke-static {v1, v3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->stopCmcRegistration()V

    return-void

    .line 217
    :cond_3
    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->isNotUpdated()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string p0, "onCmcDeviceChanged: Not updated"

    .line 218
    invoke-static {v1, v3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 222
    :cond_4
    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v5, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->releaseThrottleByCmc(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 226
    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v5, v5, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isPD(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->isUpdated()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 227
    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v5, v5, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    goto :goto_1

    :cond_5
    move v5, v3

    :goto_1
    const/4 v6, 0x2

    new-array v7, v6, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 230
    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v7, v2

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-interface {v4, v7}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 231
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->needDeregiOnDeviceChange(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "CMC profile updated"

    .line 233
    invoke-interface {v4, v6}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    const/16 v7, 0x1d

    .line 234
    invoke-interface {v4, v7}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    if-eq v5, v3, :cond_6

    goto :goto_2

    :cond_6
    move v9, v2

    .line 237
    :goto_2
    iget-object v7, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCmcDeviceChanged: deregister slot["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] local: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 238
    invoke-interface {v0, v4, v9, v2, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_3

    :cond_7
    new-array v6, v6, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 240
    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v6, v2

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v2, v6, v9

    invoke-interface {v4, v6}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 241
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

    .line 242
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v2

    invoke-interface {v0, v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 243
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v4, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 246
    :cond_8
    :goto_3
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v3, "onCmcDeviceChanged: update lineId and deviceId for p2p"

    .line 248
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "urn:duid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    invoke-interface {v2, v1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->setP2pServiceInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-wide/16 v1, 0x1f4

    .line 253
    invoke-interface {v0, v5, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegsiter(IJ)V

    goto :goto_4

    :cond_a
    const-string v0, "onCmcDeviceChanged: startCmcRegistration"

    .line 255
    invoke-static {v1, v3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startCmcRegistration()V

    :goto_4
    return-void
.end method

.method public onSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V
    .locals 1

    .line 1096
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSARequested()V
    .locals 3

    .line 1072
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onSARequested: expire 31 secs"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1073
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v0, 0x7

    const-wide/16 v1, 0x7918

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onSAServiceBindResult(ZZ)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1053
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "onSAServiceBindResult: success"

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1054
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    return-void

    .line 1059
    :cond_0
    iget p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    const/4 v1, 0x5

    if-ge p1, v1, :cond_1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 1060
    iput p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    .line 1061
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

    const-string v1, "secs"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1063
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1065
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "onSAServiceBindResult: retry over"

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1066
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    :goto_0
    return-void
.end method

.method public onSAUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1078
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onSAUpdated"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1080
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1081
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->disconnectToSamsungAccountService()V

    .line 1083
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "CmcAccountManager"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->isLocalCachedAccessTokenRequestState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Same updated token with the previous one. Set force update"

    .line 1084
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setForceUpdate()V

    .line 1088
    :cond_0
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    .line 1089
    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    .line 1090
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

    .line 1091
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSimRefresh(I)V
    .locals 3

    .line 261
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

    .line 262
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->registerProfile(I)V

    :cond_0
    return-void
.end method

.method public setEmergencyNumbers(Ljava/lang/String;)V
    .locals 9

    .line 881
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "CmcAccountManager"

    if-eqz v0, :cond_0

    const-string p0, "setEmergencyNumbers: no numbers"

    .line 882
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "\""

    const-string v2, ""

    .line 886
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    .line 887
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "\\,"

    if-eqz v3, :cond_2

    .line 888
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 889
    sget v5, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    const/4 v6, 0x0

    aput v5, v3, v6

    sget v5, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    const/4 v7, 0x1

    aput v5, v3, v7

    :goto_0
    if-ge v6, v0, :cond_3

    .line 890
    aget v5, v3, v6

    .line 891
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v7, v2

    .line 892
    :goto_1
    iget-object v8, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v8, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 895
    :cond_2
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

    .line 897
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setEmergencyNumbers: "

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
    .locals 9

    .line 396
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    const-string v1, "CmcAccountManager"

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p0, "setPcscfList: mProfileMap is empty"

    .line 402
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    .line 408
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v4, 0x1f40

    move v5, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ":"

    .line 411
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_2

    .line 412
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

    .line 413
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    move v7, v4

    :goto_1
    const-string v6, "(pcscf = "

    .line 417
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / port = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_0

    .line 420
    :cond_3
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

    .line 422
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    .line 423
    invoke-virtual {v0, v2}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 424
    invoke-virtual {v0, v5}, Lcom/sec/ims/settings/ImsProfile;->setSipPort(I)V

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    :goto_3
    const-string/jumbo p0, "setPcscfList: PcscfAddrList is empty"

    .line 397
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRegiEventNotifyHostInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 756
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRegiEventNotifyHostInfo:Ljava/util/List;

    return-void
.end method

.method public startCmcRegistration()V
    .locals 1

    .line 167
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startSAService(Z)V
    .locals 4

    .line 691
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSAService: request SA, isLocal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 693
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
