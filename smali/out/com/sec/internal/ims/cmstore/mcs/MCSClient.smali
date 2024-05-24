.class public Lcom/sec/internal/ims/cmstore/mcs/MCSClient;
.super Landroid/os/Handler;
.source "MCSClient.java"

# interfaces
.implements Lcom/sec/internal/ims/cmstore/MessageStoreClient;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mAppRequestHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/AppRequestHandler;

.field mBinder:Lcom/sec/ims/ICentralMsgStoreService$Stub;

.field private mBufferDBHandlingThread:Landroid/os/HandlerThread;

.field private mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

.field private mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

.field private final mCloudMessageService:Lcom/sec/internal/ims/cmstore/CloudMessageService;

.field private mCloudMessageStrategyManager:Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mHttpController:Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

.field public mIsProvisioned:Z

.field private mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

.field protected final mLock:Ljava/lang/Object;

.field private mMcsContactSync:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

.field private mMcsFcmPushNotificationListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mMcsProvisioningListener:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/ICentralMsgStoreServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNetAPIHandlingThread:Landroid/os/HandlerThread;

.field private mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

.field private mPhoneId:I

.field private mProvisionHandlingThread:Landroid/os/HandlerThread;

.field private mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

.field private mRetryMapAdapter:Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

.field private mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field private msc:Lcom/sec/internal/ims/cmstore/MessageStoreClient;


# direct methods
.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppRequestHandler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/AppRequestHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mAppRequestHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/AppRequestHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMcsContactSync(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsContactSync:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProvisionWorkflow(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmsc(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->msc:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartProvisioning(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->startProvisioning()V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageService;)V
    .registers 6

    .line 511
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 64
    const-class v0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    .line 70
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    .line 71
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mAppRequestHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/AppRequestHandler;

    .line 78
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 79
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsProvisioningListener:Landroid/os/RemoteCallbackList;

    .line 80
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 82
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mIsProvisioned:Z

    .line 83
    iput v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsFcmPushNotificationListener:Ljava/util/ArrayList;

    .line 86
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mRetryMapAdapter:Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    .line 89
    new-instance v0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;-><init>(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mBinder:Lcom/sec/ims/ICentralMsgStoreService$Stub;

    .line 512
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mContext:Landroid/content/Context;

    .line 513
    iput p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    .line 514
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 515
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessageService:Lcom/sec/internal/ims/cmstore/CloudMessageService;

    .line 516
    iput-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->msc:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-void
.end method

.method private getDefaultNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 2

    .line 677
    new-instance v0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$2;-><init>(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)V

    return-object v0
.end method

.method private initializeRetryAdapter()V
    .registers 4

    .line 520
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v2, "initializeRetryAdapter "

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mRetryMapAdapter:Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    if-nez v0, :cond_14

    .line 522
    new-instance v0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mRetryMapAdapter:Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    .line 524
    :cond_14
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mRetryMapAdapter:Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->initRetryMapAdapter(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    return-void
.end method

.method private initializeSimInfo()V
    .registers 4

    .line 601
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    .line 603
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveSimImsi(Ljava/lang/String;)V

    .line 604
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    return-void
.end method

.method private registerDefaultNetworkCallback()V
    .registers 5

    .line 693
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_23

    .line 694
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_23

    .line 696
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string/jumbo v3, "registerDefaultNetworkCallback"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 697
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getDefaultNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 698
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_23
    return-void
.end method

.method private startProvisioning()V
    .registers 4

    .line 558
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string/jumbo v2, "startProvisioning"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 559
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->isRcsRegistered()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 560
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v1, "not RCS ready"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 564
    :cond_1a
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 565
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v2, "not network connection"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 566
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->registerDefaultNetworkCallback()V

    return-void

    .line 570
    :cond_2f
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isDefaultMessageAppInUse(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 571
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v1, "not samsung msg app"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 575
    :cond_41
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getRegCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->isRegistrationCodeInvalid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 576
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string/jumbo v2, "registration code is expired, remove it"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveRegCode(Ljava/lang/String;)V

    .line 579
    :cond_5e
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->unregisterNetworkCallback()V

    const/4 v0, 0x0

    .line 580
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private unregisterNetworkCallback()V
    .registers 5

    .line 704
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_22

    .line 705
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_22

    .line 707
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string/jumbo v3, "unregisterNetworkCallback"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 708
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 709
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_22
    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/Binder;
    .registers 1

    .line 799
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mBinder:Lcom/sec/ims/ICentralMsgStoreService$Stub;

    return-object p0
.end method

.method public getClientID()I
    .registers 1

    .line 789
    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    return p0
.end method

.method public getCloudMessageBufferSchedulingHandler()Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;
    .registers 1

    .line 872
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    return-object p0
.end method

.method public getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;
    .registers 1

    .line 857
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessageStrategyManager:Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 794
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentIMSI()Ljava/lang/String;
    .registers 1

    .line 862
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;
    .registers 1

    .line 818
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mHttpController:Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    return-object p0
.end method

.method public declared-synchronized getMcsFcmPushNotificationListener()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 529
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsFcmPushNotificationListener:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
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

    .line 778
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsProvisioningListener:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;
    .registers 1

    .line 886
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mRetryMapAdapter:Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    return-object p0
.end method

.method public bridge synthetic getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;
    .registers 1

    .line 62
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object p0

    return-object p0
.end method

.method public getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;
    .registers 1

    .line 867
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    return-object p0
.end method

.method public getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;
    .registers 1

    .line 804
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    return-object p0
.end method

.method public getProvisionStatus()Z
    .registers 1

    .line 720
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mIsProvisioned:Z

    return p0
.end method

.method public getProvisionWorkFlow()Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;
    .registers 1

    .line 808
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    return-object p0
.end method

.method public getRcsConfigurationValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 782
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "root/*"

    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getConfigData(Landroid/content/Context;Ljava/lang/String;I)Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;

    move-result-object v0

    .line 783
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfigurationValue: key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, ""

    .line 784
    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .registers 1

    .line 877
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 609
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 610
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_f6

    goto/16 :goto_f5

    .line 669
    :pswitch_21
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v0, "HANDLE_MCS_PROVISION_COMPLETED"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_f5

    .line 663
    :pswitch_2c
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v1, "HANDLE_MCS_PROVISION_DEREGISTER"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 664
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    if-eqz p0, :cond_f5

    .line 665
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->disableMCS()V

    goto/16 :goto_f5

    .line 657
    :pswitch_3e
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v1, "HANDLE_MCS_PROVISION_GET_ACCOUNT"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 658
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    if-eqz p0, :cond_f5

    .line 659
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->getAccount()V

    goto/16 :goto_f5

    .line 651
    :pswitch_50
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v2, "HANDLE_MCS_PROVISION_UPDATE_ACCOUNT"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 652
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    if-eqz p0, :cond_f5

    .line 653
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->updateAccountInfo(Ljava/lang/String;)V

    goto/16 :goto_f5

    .line 645
    :pswitch_66
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v1, "HANDLE_MCS_PROVISION_RE_AUTHENTICATION"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 646
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    if-eqz p0, :cond_f5

    .line 647
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->requestMcsReAuthentication()V

    goto/16 :goto_f5

    .line 637
    :pswitch_78
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v2, "HANDLE_MCS_PROVISION_GET_SD"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    if-eqz v0, :cond_f5

    .line 639
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "getAll"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 640
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 641
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->getSd(Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_f5

    .line 631
    :pswitch_a3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v2, "HANDLE_MCS_PROVISION_MANAGE_SD"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 632
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    if-eqz p0, :cond_f5

    .line 633
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->manageSd(ILjava/lang/String;)V

    goto :goto_f5

    .line 621
    :pswitch_ba
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v2, "HANDLE_MCS_PROVISION_START"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 623
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_ca

    .line 624
    check-cast p1, Ljava/lang/String;

    goto :goto_cb

    :cond_ca
    const/4 p1, 0x0

    .line 626
    :goto_cb
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    if-eqz p0, :cond_f5

    .line 627
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->startProvisioning(Ljava/lang/String;)V

    goto :goto_f5

    .line 612
    :pswitch_d3
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v1, "HANDLE_MCS_PROVISION_INIT"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 613
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->initializeSimInfo()V

    .line 614
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result p1

    if-nez p1, :cond_f1

    .line 615
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v0, "Do not start for not MCS user"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_f1
    const/4 p1, 0x1

    .line 618
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_f5
    :goto_f5
    return-void

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_d3
        :pswitch_ba
        :pswitch_a3
        :pswitch_78
        :pswitch_66
        :pswitch_50
        :pswitch_3e
        :pswitch_2c
        :pswitch_21
    .end packed-switch
.end method

.method public isRcsRegistered()Z
    .registers 8

    .line 586
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/McsConstants$Uris;->RCS_REGISTRATION_STATUS_URI:Landroid/net/Uri;

    .line 587
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 588
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v0, "registration_status"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    .line 591
    :try_start_39
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 592
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_44

    goto :goto_4f

    :catchall_44
    move-exception p0

    .line 588
    :try_start_45
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4d
    throw p0

    :cond_4e
    move v2, v1

    :goto_4f
    if-eqz v0, :cond_54

    .line 595
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 596
    :cond_54
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRcsRegistered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    if-ne v2, p0, :cond_70

    move v1, p0

    :cond_70
    return v1
.end method

.method public notifyAppCloudDeleteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 0
    return-void
.end method

.method public notifyAppInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;Z)V
    .registers 9

    .line 905
    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAppInitialSyncStatus, apptype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msgType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SyncStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string p5, "MessageApp"

    .line 908
    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 909
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0, p3, p2, p4}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;)V

    :cond_35
    return-void
.end method

.method public notifyAppNetworkOperationResult(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public notifyAppOperationResult(Ljava/lang/String;I)V
    .registers 6

    .line 920
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v2, "notifyAppOperationResult"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 921
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->notifyAppOperationResult(Ljava/lang/String;I)V

    return-void
.end method

.method public notifyAppUIScreen(ILjava/lang/String;I)V
    .registers 4

    .line 0
    return-void
.end method

.method public notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    .line 891
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCloudMessageUpdate, apptype: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " msgType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rowIDs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MessageApp"

    .line 893
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 894
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageApp(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_35
    return-void
.end method

.method public onCreate(Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)V
    .registers 10

    .line 823
    new-instance p1, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    .line 824
    new-instance p1, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    .line 825
    new-instance p1, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessageStrategyManager:Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    .line 827
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "cloud message service buffer DB thread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mBufferDBHandlingThread:Landroid/os/HandlerThread;

    .line 828
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "cloud message service NetAPI thread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mNetAPIHandlingThread:Landroid/os/HandlerThread;

    .line 829
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "cloud message service Provision thread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionHandlingThread:Landroid/os/HandlerThread;

    .line 830
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mBufferDBHandlingThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 831
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mNetAPIHandlingThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 832
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionHandlingThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 834
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mBufferDBHandlingThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 835
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mNetAPIHandlingThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 836
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionHandlingThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    .line 837
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->initializeRetryAdapter()V

    .line 838
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->createBufferDBInstance(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 839
    new-instance v0, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    invoke-direct {v0, v2, v3}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mHttpController:Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    .line 840
    new-instance v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-direct {v0, p1, p0, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    .line 841
    new-instance p1, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-direct {p1, p2, p0, p0, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Landroid/os/Handler;Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    .line 842
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->registerCentralMsgStoreServiceListener()V

    .line 843
    new-instance p1, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    invoke-direct {p1, p0, p2, v0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;-><init>(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsContactSync:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    .line 844
    new-instance p1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    move-object v2, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Z)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    .line 846
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/AppRequestHandler;

    invoke-direct {p1, p0, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/AppRequestHandler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mAppRequestHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/AppRequestHandler;

    .line 847
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->startProvisioning()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 0
    return-void
.end method

.method public registerCmsProvisioningListener(Lcom/sec/ims/ICentralMsgStoreServiceListener;Z)V
    .registers 9

    if-nez p1, :cond_c

    .line 725
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string p2, "listener: null"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 728
    :cond_c
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    :try_start_f
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsProvisioningListener:Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_31

    .line 730
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 731
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsProvisioningListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_31
    if-eqz p2, :cond_70

    .line 735
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result p2
    :try_end_39
    .catchall {:try_start_f .. :try_end_39} :catchall_72

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3f

    const/16 p2, 0x64

    goto :goto_41

    :cond_3f
    const/16 p2, 0xc8

    .line 738
    :goto_41
    :try_start_41
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcast : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 739
    invoke-interface {p1, p2, v1}, Lcom/sec/ims/ICentralMsgStoreServiceListener;->onCmsRegistrationCompleted(II)V

    .line 740
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsAlias()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mConsentContext:Ljava/lang/String;

    invoke-interface {p1, v1, p0, p2}, Lcom/sec/ims/ICentralMsgStoreServiceListener;->onCmsAccountInfoDelivered(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_6b} :catch_6c
    .catchall {:try_start_41 .. :try_end_6b} :catchall_72

    goto :goto_70

    :catch_6c
    move-exception p0

    .line 742
    :try_start_6d
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 745
    :cond_70
    :goto_70
    monitor-exit v0

    return-void

    :catchall_72
    move-exception p0

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_72

    throw p0
.end method

.method public requestMcsAccessToken(Z)Z
    .registers 6

    .line 763
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestMcsAccessToken: forceRefresh = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const/4 v1, 0x0

    if-nez v0, :cond_29

    .line 766
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string/jumbo v0, "requestMcsAccessToken: workflow is null"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    :cond_29
    if-nez p1, :cond_33

    .line 770
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->isValidAccessToken()Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_33

    :cond_32
    return v1

    .line 771
    :cond_33
    :goto_33
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->requestMcsAccessToken()V

    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized setMcsFcmPushNotificationListener(Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;)V
    .registers 6

    monitor-enter p0

    .line 534
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMcsFcmPushNotificationListener: listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_22

    .line 536
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsFcmPushNotificationListener:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_27

    .line 538
    :cond_22
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsFcmPushNotificationListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 540
    :goto_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProvisionStatus(Z)V
    .registers 5

    .line 715
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProvisionStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mIsProvisioned:Z

    return-void
.end method

.method public showInitsyncIndicator(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public unregisterCmsProvisioningListener(Lcom/sec/ims/ICentralMsgStoreServiceListener;)V
    .registers 7

    if-nez p1, :cond_c

    .line 750
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v0, "listener: null"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 754
    :cond_c
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 755
    :try_start_f
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsProvisioningListener:Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_31

    .line 756
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregister listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 757
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsProvisioningListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 759
    :cond_31
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_f .. :try_end_35} :catchall_33

    throw p0
.end method

.method public updateDelay(IJ)Z
    .registers 8

    .line 553
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " delayed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 554
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method

.method public updateEvent(I)V
    .registers 2

    .line 544
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
