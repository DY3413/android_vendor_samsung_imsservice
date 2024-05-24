.class public Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;
.super Ljava/lang/Object;
.source "AMBSClient.java"

# interfaces
.implements Lcom/sec/internal/ims/cmstore/MessageStoreClient;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private final LOG_TAG_CN:Ljava/lang/String;

.field mBinder:Lcom/sec/ims/ICentralMsgStoreService$Stub;

.field private mBufferDBHandlingThread:Landroid/os/HandlerThread;

.field private mCentralMsgStoreWrapper:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

.field private mClientID:I

.field private mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

.field private mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

.field private final mCloudMessageService:Lcom/sec/internal/ims/cmstore/CloudMessageService;

.field private mCloudMessageStrategyManager:Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

.field private mContext:Landroid/content/Context;

.field mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

.field private mHttpController:Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

.field private mNetAPIHandlingThread:Landroid/os/HandlerThread;

.field private mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateManager:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

.field private mRetryMapAdapter:Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;

.field private mRetryStackAdapter:Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

.field private mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field private mSlotID:I

.field private msc:Lcom/sec/internal/ims/cmstore/MessageStoreClient;


# direct methods
.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmJanskyTranslation(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlotID(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mSlotID:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmsc(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->msc:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->isValidAppType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misValidSim(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->isValidSim()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->logInvalidAppType()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetParams(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Lcom/sec/internal/constants/Mno;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->resetParams(Lcom/sec/internal/constants/Mno;)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageService;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .registers 7

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->LOG_TAG:Ljava/lang/String;

    .line 70
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->LOG_TAG_CN:Ljava/lang/String;

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mClientID:I

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mContext:Landroid/content/Context;

    .line 73
    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    .line 74
    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    .line 76
    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->msc:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 84
    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mRetryStackAdapter:Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    .line 85
    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mRetryMapAdapter:Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;

    .line 87
    iput v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mSlotID:I

    .line 89
    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;-><init>(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mBinder:Lcom/sec/ims/ICentralMsgStoreService$Stub;

    .line 573
    iput p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mClientID:I

    .line 574
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mContext:Landroid/content/Context;

    .line 575
    iput p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mSlotID:I

    .line 576
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mCloudMessageService:Lcom/sec/internal/ims/cmstore/CloudMessageService;

    .line 577
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 578
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mClientID:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->LOG_TAG:Ljava/lang/String;

    .line 579
    iput-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->msc:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-void
.end method

.method private isValidAppType(Ljava/lang/String;)Z
    .registers 3

    const-string p0, "MessageApp"

    .line 886
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_a

    return v0

    :cond_a
    const-string p0, "VVMDATA"

    .line 888
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    return v0

    :cond_13
    const-string p0, "RCSDATA"

    .line 891
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isValidSim()Z
    .registers 3

    .line 877
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 878
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 879
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->LOG_TAG:Ljava/lang/String;

    const-string v0, "This is not ATT sim card"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method private logInvalidAppType()V
    .registers 2

    .line 606
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->LOG_TAG:Ljava/lang/String;

    const-string v0, "invalid apptype "

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetParams(Lcom/sec/internal/constants/Mno;)V
    .registers 3

    .line 927
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    .line 928
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mRetryStackAdapter:Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    .line 929
    new-instance p1, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mRetryMapAdapter:Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;

    .line 930
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->initRetryMapAdapter(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 931
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    new-instance p1, Lcom/sec/internal/ims/cmstore/RetryMapAdapterHelper;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/RetryMapAdapterHelper;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resetAdapter(Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V

    goto :goto_43

    .line 933
    :cond_20
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mRetryMapAdapter:Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;

    .line 934
    new-instance p1, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mRetryStackAdapter:Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    .line 935
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->initRetryStackAdapter(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 936
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mCloudMessageService:Lcom/sec/internal/ims/cmstore/CloudMessageService;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getClientID()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getAMBSPhaseVersion(I)I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setAmbsPhaseVersion(I)V

    .line 937
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    new-instance p1, Lcom/sec/internal/ims/cmstore/RetryStackAdapterHelper;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/RetryStackAdapterHelper;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resetAdapter(Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V

    :goto_43
    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/Binder;
    .registers 1

    .line 621
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mBinder:Lcom/sec/ims/ICentralMsgStoreService$Stub;

    return-object p0
.end method

.method public getClientID()I
    .registers 1

    .line 611
    iget p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mClientID:I

    return p0
.end method

.method public getCloudMessageBufferSchedulingHandler()Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;
    .registers 1

    .line 911
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    return-object p0
.end method

.method public getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;
    .registers 1

    .line 825
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mCloudMessageStrategyManager:Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 616
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentIMSI()Ljava/lang/String;
    .registers 1

    .line 631
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;
    .registers 1

    .line 646
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mHttpController:Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    return-object p0
.end method

.method public getMcsFcmPushNotificationListener()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMcsProvisioningListener()Landroid/os/RemoteCallbackList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/ICentralMsgStoreServiceListener;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;
    .registers 1

    .line 906
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    return-object p0
.end method

.method public getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;
    .registers 1

    .line 626
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    return-object p0
.end method

.method public getProvisionStatus()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getProvisionWorkFlow()Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;
    .registers 1

    .line 641
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mRetryMapAdapter:Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;

    return-object p0
.end method

.method public getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;
    .registers 1

    .line 636
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mRetryStackAdapter:Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    return-object p0
.end method

.method public getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .registers 1

    .line 916
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    return-object p0
.end method

.method public getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 922
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.imsservice.sip.signalling.READ_PERMISSION"

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleVVMOn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const-string v0, "VVMDATA"

    .line 743
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ee

    const-string p1, "PROFILE"

    .line 744
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ee

    .line 746
    :try_start_10
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 747
    :goto_16
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-ge p2, p3, :cond_ee

    .line 748
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "id"

    .line 749
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    .line 750
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mSlotID:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryVvmProfileBufferDB: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->debugLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.cmstore/vvmprofile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    iget v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mSlotID:I

    if-nez v1, :cond_50

    const-string v1, ""

    goto :goto_52

    :cond_50
    const-string v1, "/slot2"

    :goto_52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 751
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 753
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 754
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    .line 753
    invoke-static {v0, p3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_73} :catch_ea

    if-eqz p3, :cond_e1

    .line 755
    :try_start_75
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e1

    const-string/jumbo v0, "vvmon"

    .line 756
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8d

    .line 760
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveLastVVMStatus(Ljava/lang/String;)V

    :cond_8d
    const-string/jumbo v1, "true"

    .line 763
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cb

    const-string v0, "profile_changetype"

    .line 764
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 765
    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v1

    if-ne v1, v0, :cond_bf

    const-string/jumbo v0, "uploadstatus"

    .line 766
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 767
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->SUCCESS:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->getId()I

    move-result v1

    if-ne v0, v1, :cond_e1

    .line 768
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->registerMWI()V

    goto :goto_e1

    .line 770
    :cond_bf
    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->FULLPROFILE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v1

    if-ne v1, v0, :cond_e1

    .line 771
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->registerMWI()V

    goto :goto_e1

    :cond_cb
    const-string v1, "false"

    .line 773
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 774
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->unregisterMWI()V
    :try_end_d6
    .catchall {:try_start_75 .. :try_end_d6} :catchall_d7

    goto :goto_e1

    :catchall_d7
    move-exception p0

    .line 753
    :try_start_d8
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_dc

    goto :goto_e0

    :catchall_dc
    move-exception p1

    :try_start_dd
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e0
    throw p0

    :cond_e1
    :goto_e1
    if-eqz p3, :cond_e6

    .line 777
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_e6
    .catch Lorg/json/JSONException; {:try_start_dd .. :try_end_e6} :catch_ea

    :cond_e6
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_16

    :catch_ea
    move-exception p0

    .line 780
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_ee
    return-void
.end method

.method public isRcsRegistered()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyAppCloudDeleteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 866
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mSlotID:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAppCloudDeleteFail, type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " msgtype: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " bufferId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->debugLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MessageApp"

    .line 869
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 870
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppCloudDeleteFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :cond_36
    const-string v0, "VVMDATA"

    .line 871
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 872
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyVVMAppCloudDeleteFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    :goto_43
    return-void
.end method

.method public notifyAppInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;Z)V
    .registers 10

    .line 838
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->LOG_TAG_CN:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mSlotID:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAppInitialSyncStatus, apptype: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " msgType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " SyncStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MessageApp"

    .line 841
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 842
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0, p3, p2, p4}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;)V

    goto :goto_43

    :cond_36
    const-string v0, "VVMDATA"

    .line 844
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 845
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0, p3, p2, p4, p5}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyVVMAppInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;Z)V

    :cond_43
    :goto_43
    return-void
.end method

.method public notifyAppNetworkOperationResult(Z)V
    .registers 2

    .line 597
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->notifyAppNetworkOperationResult(Z)V

    return-void
.end method

.method public notifyAppOperationResult(Ljava/lang/String;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public notifyAppUIScreen(ILjava/lang/String;I)V
    .registers 7

    .line 829
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAppUIScreen, screenName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppUI(ILjava/lang/String;I)V

    return-void
.end method

.method public notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .line 855
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCloudMessageUpdate, apptype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msgType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rowIDs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->handleVVMOn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MessageApp"

    .line 858
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 859
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageApp(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_44

    :cond_37
    const-string p4, "VVMDATA"

    .line 860
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 861
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyVVMApp(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public onCreate(Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)V
    .registers 13

    .line 688
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cloud message service buffer DB thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mBufferDBHandlingThread:Landroid/os/HandlerThread;

    .line 689
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cloud message service NetAPI thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mNetAPIHandlingThread:Landroid/os/HandlerThread;

    .line 690
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mBufferDBHandlingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 691
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mNetAPIHandlingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 693
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mBufferDBHandlingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 694
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mNetAPIHandlingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 695
    iget v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mSlotID:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 697
    new-instance v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    .line 698
    new-instance v0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mCloudMessageStrategyManager:Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    .line 699
    new-instance v0, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mSlotID:I

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mHttpController:Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    .line 701
    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;-><init>(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 714
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getClientID()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 716
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Carrier: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_7c
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->createBufferDBInstance(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 720
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 721
    new-instance v0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mRetryStackAdapter:Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    .line 722
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->initRetryStackAdapter(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 723
    new-instance v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    new-instance v7, Lcom/sec/internal/ims/cmstore/RetryStackAdapterHelper;

    invoke-direct {v7}, Lcom/sec/internal/ims/cmstore/RetryStackAdapterHelper;-><init>()V

    move-object v3, v0

    move-object v5, p0

    move-object v6, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v3 .. v9}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    goto :goto_be

    .line 726
    :cond_a3
    new-instance v0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mRetryMapAdapter:Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;

    .line 727
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->initRetryMapAdapter(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 728
    new-instance v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    new-instance v7, Lcom/sec/internal/ims/cmstore/RetryMapAdapterHelper;

    invoke-direct {v7}, Lcom/sec/internal/ims/cmstore/RetryMapAdapterHelper;-><init>()V

    move-object v3, v0

    move-object v5, p0

    move-object v6, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v3 .. v9}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    .line 731
    :goto_be
    new-instance p1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v3, p0

    move-object v5, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Z)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    .line 734
    new-instance p1, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    .line 736
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->registerMWIWithLastVVMStatus()V

    .line 738
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->resyncPendingMsg()V

    .line 739
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mCentralMsgStoreWrapper:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-static {p1, p2, p0}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->getInstance(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->initDebugInfo()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 0
    return-void
.end method

.method public registerCmsProvisioningListener(Lcom/sec/ims/ICentralMsgStoreServiceListener;Z)V
    .registers 3

    .line 0
    return-void
.end method

.method public registerMWI()V
    .registers 5

    .line 801
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerMWI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mPhoneStateManager:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    if-eqz v0, :cond_2e

    .line 803
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->LOG_TAG_CN:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mSlotID:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to unregister for slot : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mSlotID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mPhoneStateManager:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mSlotID:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->unRegisterListener(I)V

    goto :goto_38

    .line 806
    :cond_2e
    new-instance v0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mPhoneStateManager:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    .line 809
    :goto_38
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mPhoneStateManager:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mSlotID:I

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->registerListener(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public registerMWIWithLastVVMStatus()V
    .registers 6

    .line 786
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getLastVVMStatus()Ljava/lang/String;

    move-result-object v0

    .line 787
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->LOG_TAG_CN:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mSlotID:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registering MWI with VVM profile and vvm_Status :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "true"

    .line 789
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 790
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->registerMWI()V

    :cond_2a
    return-void
.end method

.method public setMcsFcmPushNotificationListener(Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setProvisionStatus(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public showInitsyncIndicator(Z)V
    .registers 3

    .line 897
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getIsInitSyncIndicatorRequired()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 898
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mCloudMessageService:Lcom/sec/internal/ims/cmstore/CloudMessageService;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mClientID:I

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->showInitsyncIndicator(ZI)V

    goto :goto_1e

    .line 900
    :cond_16
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "showInitsyncIndicator: not supported"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return-void
.end method

.method public unregisterCmsProvisioningListener(Lcom/sec/ims/ICentralMsgStoreServiceListener;)V
    .registers 2

    .line 0
    return-void
.end method

.method public unregisterMWI()V
    .registers 5

    .line 813
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->LOG_TAG_CN:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mSlotID:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterMWI for slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mSlotID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mPhoneStateManager:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    if-eqz v0, :cond_24

    .line 815
    iget p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->mSlotID:I

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->unRegisterListener(I)V

    :cond_24
    return-void
.end method

.method public updateDelay(IJ)Z
    .registers 4

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public updateEvent(I)V
    .registers 2

    .line 0
    return-void
.end method
