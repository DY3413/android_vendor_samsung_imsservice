.class public Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;
.super Landroid/os/Handler;
.source "NetAPIWorkingStatusController.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;
.implements Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;
    }
.end annotation


# static fields
.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final EVENT_AIRPLANEMODE_CHANGED:I = 0x8

.field private static final EVENT_CHANGE_MSG_APP_WORKING_STATUS:I = 0x3

.field private static final EVENT_CHANGE_OMANETAPI_WORKING_STATUS:I = 0x4

.field private static final EVENT_DELETE_ACCOUNT:I = 0x7

.field private static final EVENT_ENABLE_GBA_MODULE:I = 0xb

.field private static final EVENT_MESSAGE_APP_CHANGED:I = 0x1

.field private static final EVENT_NETWORK_CHANGE_DETECTED:I = 0x2

.field private static final EVENT_REGISTER_PHONE_LISTENER:I = 0x9

.field private static final EVENT_SIM_STATE_CHANGED:I = 0xa

.field private static final EVENT_STOP_ALL_TASK:I = 0x6


# instance fields
.field public TAG:Ljava/lang/String;

.field private mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

.field private mCloudMessageManagerHelper:Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

.field mContext:Landroid/content/Context;

.field private mDeviceConfigAdapter:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

.field private mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

.field private mHasNotifiedBufferDBProvisionSuccess:Z

.field private mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private mIsAirPlaneModeOn:Z

.field private mIsAmbsServiceStop:Z

.field private mIsCMNWorkingStarted:Z

.field private mIsCmsProfileEnabled:Z

.field private mIsDefaultMsgAppNative:Z

.field private mIsMsgAppForeground:Z

.field private mIsNetworkValid:Z

.field private mIsOMAAPIRunning:Z

.field private mIsProvisionSuccess:Z

.field private mIsServicePaused:Z

.field private mIsUserDeleteAccount:Z

.field private mIsUsingMobileHipri:Z

.field private mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

.field private mMobileNetworkCallback:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

.field private mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

.field private final mNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

.field private mPushNotiPaused:Z

.field private mServiceStateListener:Landroid/telephony/PhoneStateListener;

.field private mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field private mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

.field private final mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method static bridge synthetic -$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsUsingMobileHipri(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mbindToNetwork(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;Landroid/net/Network;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->bindToNetwork(Landroid/net/Network;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetNetworkStatus(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setNetworkStatus(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldEnableOMANetAPIWorking(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->shouldEnableOMANetAPIWorking()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)V
    .locals 10

    move-object v7, p0

    move-object v8, p2

    .line 131
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    const-class v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    .line 86
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsOMAAPIRunning:Z

    .line 87
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsMsgAppForeground:Z

    .line 88
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mPushNotiPaused:Z

    const/4 v1, 0x1

    .line 89
    iput-boolean v1, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    .line 90
    iput-boolean v1, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    .line 91
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    .line 92
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    .line 93
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    .line 94
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 95
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    .line 96
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mHasNotifiedBufferDBProvisionSuccess:Z

    .line 97
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    .line 98
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAmbsServiceStop:Z

    const/4 v0, 0x0

    .line 112
    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mMobileNetworkCallback:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

    .line 113
    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mServiceStateListener:Landroid/telephony/PhoneStateListener;

    .line 115
    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    .line 1163
    new-instance v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$4;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$4;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V

    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 132
    iput-object v8, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 133
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    move-object v0, p5

    .line 135
    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-object v0, p3

    .line 136
    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    move-object v0, p4

    .line 137
    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 138
    new-instance v6, Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    invoke-direct {v6}, Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;-><init>()V

    iput-object v6, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCloudMessageManagerHelper:Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    move-object/from16 v0, p6

    .line 139
    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    .line 141
    new-instance v9, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    iget-object v4, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    iget-object v5, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object v9, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    .line 143
    new-instance v5, Lcom/sec/internal/ims/cmstore/LineManager;

    invoke-direct {v5, p0}, Lcom/sec/internal/ims/cmstore/LineManager;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;)V

    iput-object v5, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    .line 144
    new-instance v9, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    iget-object v2, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v4, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    iget-object v6, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCloudMessageManagerHelper:Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    move-object v0, v9

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/ims/cmstore/LineManager;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object v9, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    .line 145
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    iget-object v1, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCloudMessageManagerHelper:Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    move-object v3, p1

    invoke-direct {v0, p1, v1, v9, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    .line 146
    new-instance v0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    iget-object v1, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCloudMessageManagerHelper:Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    invoke-direct {v0, p2, v1}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mDeviceConfigAdapter:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    .line 147
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasUserDeleteAccount()Z

    move-result v0

    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    .line 148
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAMBSStopService()Z

    move-result v0

    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAmbsServiceStop:Z

    .line 149
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAMBSPauseService()Z

    move-result v0

    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    .line 150
    new-instance v0, Ljava/net/CookieManager;

    new-instance v1, Lcom/sec/internal/ims/cmstore/PersistentHttpCookieStore;

    iget-object v2, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/PersistentHttpCookieStore;-><init>(Landroid/content/Context;)V

    sget-object v2, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    .line 152
    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 157
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->registerDefaultSmsPackageChangeReceiver(Landroid/content/Context;)V

    .line 158
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->registerAirplaneMode(Landroid/content/Context;)V

    return-void
.end method

.method private bindToNetwork(Landroid/net/Network;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "bind current process to default network type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1049
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    move-result p1

    .line 1050
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1052
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p1
.end method

.method private checkingWifiGoodOrNot(Landroid/net/Network;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 1059
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string p1, "Wifi network instance is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1063
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/CheckCaptivePortal;->isGoodWifi(Landroid/net/Network;)Z

    move-result p0

    return p0
.end method

.method private clearData()V
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearAll()V

    .line 904
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resetServiceState()V

    .line 905
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Ljava/net/CookieStore;->removeAll()Z

    .line 906
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->clearRetryHistory()V

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 910
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->clearRetryHistory()V

    .line 912
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onCleanBufferDbRequired()V

    .line 913
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->clearOmaRetryData()V

    const/4 v0, 0x0

    .line 914
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mHasNotifiedBufferDBProvisionSuccess:Z

    return-void
.end method

.method private createPhoneServiceListener()V
    .locals 1

    .line 291
    new-instance v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$3;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mServiceStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method private enableGbaModule()V
    .locals 1

    .line 1237
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;->getInstance(Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    return-void
.end method

.method private handleEventMessageAppChanged()V
    .locals 4

    .line 305
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    .line 306
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-nez v0, :cond_0

    .line 307
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v0, "handleEventMessageAppChanged: not enabled"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    .line 311
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->isDefaultMessageAppInUse(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    .line 313
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isGoForwardSyncSupported()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 316
    :cond_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    if-nez v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "handleEventMessageAppChanged: native message app not default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNativeMsgAppIsDefault(Z)V

    .line 319
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->deleteNotificationSubscriptionResource()V

    .line 321
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->pauseProvsioningApi()V

    goto :goto_0

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "handleEventMessageAppChanged native message app default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNativeMsgAppIsDefault(Z)V

    .line 325
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resumeProvsioningApi()V

    .line 326
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v2, "notify buffer DB"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    sget-object v2, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->DEFAULT_MSGAPP_CHGTO_NATIVE:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 330
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 331
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->shouldEnableOMANetAPIWorking()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v2, "handleEventMessageAppChanged: default msg app, resume cms api working"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private initDeviceID()V
    .locals 1

    .line 1228
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getImei(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveDeviceId(Ljava/lang/String;)V

    return-void
.end method

.method private initSimInfo()V
    .locals 6

    .line 215
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isSimChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearAll()V

    .line 217
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resetServiceState()V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->convertPhoneNumberToUserAct(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getNativeLine()Ljava/lang/String;

    move-result-object v0

    const-string v2, "from DB == "

    goto :goto_0

    :cond_1
    const-string v2, "== "

    .line 226
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Provision not required"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveSimImsi(Ljava/lang/String;)V

    .line 228
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    return-void
.end method

.method private logCurrentWorkingStatus()V
    .locals 3

    .line 996
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logCurrentWorkingStatus:  mIsUsingMobileHipri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsAmbsRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsOMAAPIRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsMsgAppForeground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsMsgAppForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsNetworkValid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsCmsProfileEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsDefaultMsgAppNative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsUserDeleteAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsAirPlaneModeOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsCMNWorkingStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsProvisionSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mHasNotifiedBufferDBProvisionSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mHasNotifiedBufferDBProvisionSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsAmbsServiceStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAmbsServiceStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsServicePaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private pauseCMNWorking()V
    .locals 10

    .line 528
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "pause cloud message NetAPI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    new-instance v9, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsMsgAppForeground:Z

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    iget-boolean v4, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsOMAAPIRunning:Z

    iget-boolean v5, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    iget-boolean v6, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    iget-boolean v7, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    iget-boolean v8, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;-><init>(ZZZZZZZ)V

    .line 530
    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->pausewithStatusParam(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    return-void
.end method

.method private pauseProvsioningApi()V
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "pauseProvisioningApi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->pause()V

    return-void
.end method

.method private registerAirplaneMode(Landroid/content/Context;)V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    if-eqz v0, :cond_1

    .line 256
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    goto :goto_1

    .line 258
    :cond_1
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    .line 260
    :goto_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    .line 261
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 262
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 263
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    new-instance v1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$2;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V

    .line 277
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerDefaultSmsPackageChangeReceiver(Landroid/content/Context;)V
    .locals 2

    .line 232
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    .line 233
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    new-instance v1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$1;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V

    .line 249
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerNetworkCallBack(ILandroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 2

    .line 1096
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 1098
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1099
    invoke-virtual {v0, p1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1101
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 1102
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1104
    invoke-virtual {p0, p1, p2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private registerNetworkStateListener()V
    .locals 3

    .line 1136
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "registerNetworkStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 1139
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/4 v1, 0x0

    .line 1140
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1142
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 1143
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1146
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1148
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "registerPhoneStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->createPhoneServiceListener()V

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mServiceStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private resumeCMNWorking()V
    .locals 10

    .line 554
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "resume cloud message NetAPI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    new-instance v9, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsMsgAppForeground:Z

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    iget-boolean v4, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsOMAAPIRunning:Z

    iget-boolean v5, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    iget-boolean v6, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    iget-boolean v7, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    iget-boolean v8, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;-><init>(ZZZZZZZ)V

    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumewithStatusParam(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    return-void
.end method

.method private resumeProvsioningApi()V
    .locals 2

    .line 571
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "resumeProvisioningApi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isProvisionRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->resume()V

    :cond_0
    return-void
.end method

.method private setConfigParam()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isGbaSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 199
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->clearRetryHistory()V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isDeviceConfigUsed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mDeviceConfigAdapter:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->getDeviceConfig()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 206
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mDeviceConfigAdapter:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->registerDeviceConfigUpdatedReceiver(Landroid/content/Context;)V

    goto :goto_1

    .line 208
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mDeviceConfigAdapter:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->parseDeviceConfig()V

    .line 210
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device config exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private setNetworkStatus(Z)V
    .locals 1

    .line 587
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 588
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string p1, "mIsCmsProfileEnabled: false"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 591
    :cond_0
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    if-eqz p1, :cond_1

    .line 592
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    if-eqz p1, :cond_1

    .line 593
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resumeProvsioningApi()V

    goto :goto_0

    .line 595
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->pauseProvsioningApi()V

    .line 597
    :goto_0
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 598
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 599
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->startCMNWorking()V

    :cond_2
    return-void
.end method

.method private setNotiPauseState(Z)V
    .locals 3

    .line 516
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNotiPauseState, currenty Paused:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mPushNotiPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " newState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mPushNotiPaused:Z

    return-void
.end method

.method private shouldEnableOMANetAPIWorking()Z
    .locals 7

    .line 521
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    iget-boolean v4, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    iget-boolean v5, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    iget-boolean v6, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    .line 522
    invoke-interface/range {v1 .. v6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldEnableNetAPIWorking(ZZZZZ)Z

    move-result p0

    return p0
.end method

.method private startCMNWorking()V
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start cloud message NetAPI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->start()V

    return-void
.end method

.method private startCMNWorkingResetBox()V
    .locals 2

    .line 549
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start cloud message NetAPI: resetBox"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->start_resetBox()V

    return-void
.end method

.method private startMobileHipri()V
    .locals 2

    .line 1085
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startMobileHipri"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    if-eqz v0, :cond_0

    .line 1087
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v0, "mobile network is in using"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mMobileNetworkCallback:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

    if-nez v0, :cond_1

    .line 1089
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "register mobile network callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    new-instance v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mMobileNetworkCallback:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

    const/4 v1, 0x0

    .line 1091
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->registerNetworkCallBack(ILandroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startProvsioningApi()V
    .locals 0

    .line 562
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->start()V

    return-void
.end method

.method private stopCMNWorking()V
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop cloud message NetAPI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 538
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 539
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    .line 540
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->stop()V

    return-void
.end method

.method private stopMobileHipri()V
    .locals 3

    .line 1067
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mMobileNetworkCallback:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1070
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mMobileNetworkCallback:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1071
    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mMobileNetworkCallback:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

    .line 1072
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v2, "Mobile network callback unregistered"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->bindToNetwork(Landroid/net/Network;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1079
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    const-string/jumbo v0, "successfully"

    goto :goto_0

    :cond_1
    const-string v0, "failed"

    .line 1081
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopMobileHipri, bind to default network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unregisterNetworkStateListener()V
    .locals 2

    .line 1153
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterNetworkStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1157
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1159
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getCmsIsAccountServicePause()Z
    .locals 0

    .line 986
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    return p0
.end method

.method public getCmsIsAccountServiceStop()Z
    .locals 0

    .line 982
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAmbsServiceStop:Z

    return p0
.end method

.method public getCmsProfileEnabled()Z
    .locals 0

    .line 974
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    return p0
.end method

.method public handleLargeDataPolling()V
    .locals 0

    .line 1209
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->handleLargeDataPolling()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 346
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 347
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_c

    .line 508
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->enableGbaModule()V

    goto/16 :goto_c

    .line 498
    :pswitch_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    .line 499
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sim state changed, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    const/4 v0, 0x5

    if-ne v0, p1, :cond_18

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 501
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isSimChanged(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 502
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isCtnChangedByNetwork(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 503
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v0, "ctn changed, restart service"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onRestartService()V

    goto/16 :goto_c

    .line 495
    :pswitch_3
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->registerPhoneStateListener(Landroid/content/Context;)V

    goto/16 :goto_c

    .line 481
    :pswitch_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isAirplaneModeChangeHandled()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 482
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    if-eqz v2, :cond_1

    .line 485
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setNetworkStatus(Z)V

    .line 486
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    goto/16 :goto_c

    .line 488
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "airplane mode changed, mIsAirPlaneModeOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resetChannelState()V

    const/4 p1, 0x2

    .line 490
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_c

    .line 470
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    .line 471
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    .line 472
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    if-eqz p1, :cond_2

    .line 473
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopCMNWorking()V

    goto/16 :goto_c

    .line 475
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->shouldEnableOMANetAPIWorking()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 476
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    goto/16 :goto_c

    .line 467
    :pswitch_6
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopCMNWorking()V

    goto/16 :goto_c

    .line 452
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 453
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 454
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string p1, "isCmsProfileActive: false"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 458
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsOMAAPIRunning:Z

    .line 459
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resumeCMNWorking()V

    goto/16 :goto_c

    .line 462
    :cond_4
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsOMAAPIRunning:Z

    .line 463
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->pauseCMNWorking()V

    goto/16 :goto_c

    .line 356
    :pswitch_8
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    .line 357
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsMsgAppForeground:Z

    if-nez p1, :cond_5

    .line 359
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    goto :goto_1

    .line 363
    :cond_5
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setNotiPauseState(Z)V

    .line 365
    :goto_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->shouldEnableOMANetAPIWorking()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 366
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    goto/16 :goto_c

    :pswitch_9
    const/4 p1, 0x0

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 375
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    if-eqz v4, :cond_d

    move v5, v3

    move v6, v5

    move v7, v6

    .line 377
    :goto_2
    array-length v8, v4

    if-ge v5, v8, :cond_e

    .line 378
    aget-object v8, v4, v5

    if-nez v8, :cond_6

    goto/16 :goto_5

    .line 381
    :cond_6
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v8

    if-nez v8, :cond_7

    goto/16 :goto_5

    .line 385
    :cond_7
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-ne v9, v2, :cond_9

    .line 386
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_8

    move p1, v2

    goto :goto_3

    :cond_8
    move p1, v3

    .line 387
    :goto_3
    aget-object v6, v4, v5

    move-object v12, v6

    move v6, p1

    move-object p1, v12

    goto :goto_4

    .line 388
    :cond_9
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-nez v9, :cond_b

    .line 389
    aget-object v9, v4, v5

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v9

    if-eqz v9, :cond_b

    const/16 v10, 0xc

    .line 390
    invoke-virtual {v9, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 391
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_a

    move v7, v2

    goto :goto_4

    :cond_a
    move v7, v3

    .line 395
    :cond_b
    :goto_4
    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Network info: type["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "], typeName["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "], isAvailable["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, "], isConnected["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 395
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_c

    if-eqz v7, :cond_c

    .line 400
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v4, "Wifi and Mobile are both connected, no need to continue scan"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_d
    move v6, v3

    move v7, v6

    .line 406
    :cond_e
    :goto_6
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    goto :goto_7

    :cond_f
    move v0, v3

    :goto_7
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    const-string v1, "is using MOBILE_HIPRI, will change to default network"

    if-eqz v6, :cond_12

    .line 409
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    const-string v4, "https"

    invoke-interface {v0, v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->setProtocol(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 411
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    .line 412
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isCaptivePortalCheckSupported()Z

    move-result v0

    .line 413
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WiFi connected, needToCheckCaptive value: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_13

    .line 416
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->checkingWifiGoodOrNot(Landroid/net/Network;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 417
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    if-eqz p1, :cond_10

    .line 418
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopMobileHipri()V

    :cond_10
    const-string p1, "Good Wifi"

    goto :goto_8

    .line 423
    :cond_11
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->startMobileHipri()V

    const-string p1, "Bad Wifi"

    .line 425
    :goto_8
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_12
    if-eqz v7, :cond_13

    if-nez v0, :cond_13

    .line 428
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    const-string v0, "http"

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->setProtocol(Ljava/lang/String;)V

    .line 429
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v0, "WiFi not connected, but Mobile is connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    if-eqz p1, :cond_13

    .line 431
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopMobileHipri()V

    :cond_13
    :goto_9
    if-nez v7, :cond_15

    if-eqz v6, :cond_14

    goto :goto_a

    :cond_14
    move p1, v3

    goto :goto_b

    :cond_15
    :goto_a
    move p1, v2

    .line 436
    :goto_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network available: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    if-eqz v0, :cond_16

    if-nez p1, :cond_16

    .line 438
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "no available network, reset channel state."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resetChannelState()V

    .line 441
    :cond_16
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setNetworkStatus(Z)V

    if-eqz p1, :cond_17

    .line 443
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->shouldEnableOMANetAPIWorking()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 444
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "shouldEnableOMANetAPIWorking: true"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    goto :goto_c

    .line 448
    :cond_17
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    goto :goto_c

    .line 353
    :pswitch_a
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->handleEventMessageAppChanged()V

    :cond_18
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public hideIndicator()V
    .locals 2

    .line 1189
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "hideIndicator()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    return-void
.end method

.method public init()V
    .locals 3

    .line 168
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->initDeviceID()V

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->createStrategy()V

    .line 170
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isGbaSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    .line 171
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isSupportAtt72HoursRule()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    .line 174
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isProvisionRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->startProvsioningApi()V

    goto :goto_0

    .line 179
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->initSimInfo()V

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setVVMSyncState(Z)V

    .line 183
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setConfigParam()V

    .line 184
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->registerNetworkStateListener()V

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 187
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 189
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 190
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p0

    const-string v0, "https"

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->setProtocol(Ljava/lang/String;)V

    goto :goto_1

    .line 191
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_4

    .line 192
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p0

    const-string v0, "http"

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->setProtocol(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public isCmsProfileActive()Z
    .locals 1

    .line 978
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAmbsServiceStop:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNativeMsgAppDefault()Z
    .locals 0

    .line 341
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    return p0
.end method

.method public isNormalVVMSyncing()Z
    .locals 0

    .line 1246
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->getSyncState()Z

    move-result p0

    return p0
.end method

.method public isPushNotiProcessPaused()Z
    .locals 0

    .line 1213
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mPushNotiPaused:Z

    return p0
.end method

.method public isSimChanged()Z
    .locals 2

    .line 1179
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "isSimChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v0

    .line 1181
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getSimImsi()Ljava/lang/String;

    move-result-object v1

    .line 1182
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1185
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isSimOrCtnChanged(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result p0

    return p0
.end method

.method public notifyLoadLineStatus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1013
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isMultiLineSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1021
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1022
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onChannelStateReset()V
    .locals 2

    .line 898
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "onChannelStateReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resetChannelState()V

    return-void
.end method

.method public onCleanBufferDbRequired()V
    .locals 3

    .line 652
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "onCleanBufferDbRequired"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    sget-object v1, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->BUFFERDB_CLEAN:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 655
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method public onCloudSyncWorkingStopped()V
    .locals 0

    .line 828
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->clearData()V

    .line 829
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopCMNWorking()V

    return-void
.end method

.method public onDeviceFlagUpdateSchedulerStarted()V
    .locals 0

    return-void
.end method

.method public onDeviceSITRefreshed(Ljava/lang/String;)V
    .locals 0

    .line 1028
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->onLineSITRefreshed(Ljava/lang/String;)V

    return-void
.end method

.method public onInitialDBCopyDone()V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "onInitialDBCopyDone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isMultiLineSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/LineManager;->initLineStatus()V

    goto :goto_0

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/LineManager;->addLine(Ljava/lang/String;)V

    .line 676
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    .line 677
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 678
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 679
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->startCMNWorking()V

    :cond_1
    return-void
.end method

.method public onInitialDBSyncCompleted()V
    .locals 1

    .line 663
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_CREATE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    return-void
.end method

.method public onMailBoxMigrationReset()V
    .locals 3

    .line 1217
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    sget-object v1, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->MAILBOX_MIGRATION_RESET:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1219
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method public onMailBoxResetBufferDbDone()V
    .locals 2

    .line 685
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "onMailBoxResetBufferDbDone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isMultiLineSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/LineManager;->initLineStatus()V

    goto :goto_0

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/LineManager;->addLine(Ljava/lang/String;)V

    .line 692
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->deleteNotificationSubscriptionResource()V

    .line 693
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    .line 694
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    if-eqz v0, :cond_1

    .line 695
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 696
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->startCMNWorkingResetBox()V

    .line 698
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->shouldEnableOMANetAPIWorking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 699
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    :cond_2
    return-void
.end method

.method public onNetworkChangeDetected()V
    .locals 4

    .line 919
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "onNetworkChangeDetected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isCaptivePortalCheckSupported()Z

    move-result v0

    .line 922
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 923
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 925
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkChangeDetected: CmsProfileEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " or captive portal:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onOmaFailExceedMaxCount()V
    .locals 2

    .line 1033
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "onOmaFailExceedMaxCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isTokenRequestedFromProvision()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1036
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    .line 1037
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    .line 1038
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onOmaFailExceedMaxCount()V

    :cond_0
    return-void
.end method

.method public onOmaProvisionFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V
    .locals 5

    .line 782
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOmaProvisionFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isTokenRequestedFromProvision()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 785
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    .line 786
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    .line 787
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQ_SESSION_GEN will be triggered in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x3e8

    div-long v3, p2, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    const-string v3, "non_pop_up"

    invoke-interface {v0, v2, v3, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 791
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->updateDelay(IJ)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 795
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 796
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "msisdn : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 800
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, v1, :cond_3

    .line 801
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 806
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "line: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildRefreshSitUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 811
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    .line 812
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getLastFailedApi()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 813
    const-class p2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    .line 814
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsMsgAppForeground:Z

    if-nez p1, :cond_3

    .line 816
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string p2, "LargeDataPolling failed while app was in background. Stop all futher pushed notification"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setNotiPauseState(Z)V

    :cond_3
    return-void
.end method

.method public onProvisionSuccess()V
    .locals 3

    const/4 v0, 0x1

    .line 628
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    .line 629
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    .line 630
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->shouldEnableOMANetAPIWorking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    .line 635
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isProvisionRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 636
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    if-nez v1, :cond_1

    .line 637
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 638
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->startCMNWorking()V

    .line 641
    :cond_1
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mHasNotifiedBufferDBProvisionSuccess:Z

    if-nez v1, :cond_2

    .line 642
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mHasNotifiedBufferDBProvisionSuccess:Z

    .line 643
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    sget-object v1, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->PROVISION_SUCCESS:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 645
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    :cond_2
    return-void
.end method

.method public onRestartService()V
    .locals 1

    const/4 v0, 0x1

    .line 840
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onRestartService(Z)V

    return-void
.end method

.method public onRestartService(Z)V
    .locals 3

    .line 845
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAmbsServiceStop:Z

    if-eqz v0, :cond_0

    .line 846
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string p1, "AMBS service is suspended, do not process Restart Service"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entry restartService: userOptin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 851
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    .line 852
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->clearData()V

    .line 853
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopCMNWorking()V

    .line 855
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isGbaSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 856
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->initSimInfo()V

    .line 857
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setConfigParam()V

    :cond_1
    if-nez p1, :cond_3

    .line 860
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "Internal Restart case"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    if-eqz p1, :cond_2

    .line 862
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    .line 863
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAMBSPauseService(Z)V

    :cond_2
    const/4 p1, 0x1

    .line 865
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setCmsProfileEnabled(Z)V

    .line 866
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->INTERNAL_RESTART:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto :goto_0

    .line 868
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v0, "Restart case optin"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->RESTART_SERVICE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 872
    :goto_0
    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    sget-object v0, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->RESTART_SERVICE:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 874
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 875
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->initDeviceID()V

    return-void
.end method

.method public onUIButtonProceed(ILjava/lang/String;)Z
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isUIButtonUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "UI button is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onUIButtonProceed(ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 709
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string p1, "UI button call is disabled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onUserDeleteAccount(Z)V
    .locals 3

    .line 834
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserDeleteAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onVVMNormalSyncComplete(Z)V
    .locals 0

    .line 1224
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->setSyncState(Z)V

    return-void
.end method

.method public onWipeOutResetSyncHandler()V
    .locals 0

    .line 744
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopCMNWorking()V

    return-void
.end method

.method public pauseService()V
    .locals 2

    .line 880
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "Entry pauseService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 881
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    const/4 v1, 0x0

    .line 882
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    .line 883
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAMBSPauseService(Z)V

    .line 884
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->pauseService()V

    return-void
.end method

.method public registerForUpdateFromCloud(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->registerForUpdateFromCloud(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 120
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->registerForUpdateFromCloud(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForUpdateOfWorkingStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 125
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public removeUpdateSubscriptionChannelEvent()V
    .locals 2

    .line 1204
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "removeUpdateSubscriptionChannelEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->removeUpdateSubscriptionChannelEvent()V

    return-void
.end method

.method public resetAdapter(Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V
    .locals 1

    .line 162
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 163
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    iput-object p1, v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 164
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resetChannelScheduler()V

    return-void
.end method

.method public resetDataReceiver()V
    .locals 0

    .line 1250
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->resetDataReceiver()V

    return-void
.end method

.method public resetServiceState()V
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAMBSStopService()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAmbsServiceStop:Z

    .line 992
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAMBSPauseService()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    return-void
.end method

.method public sendAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;Z)V
    .locals 3

    .line 716
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendAppSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isFullSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isValidOMARequestUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;Z)V

    :cond_0
    return-void
.end method

.method public sendDeviceInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 3

    .line 730
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDeviceInitialSyncDownload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isValidOMARequestUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_0
    return-void
.end method

.method public sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 6

    .line 749
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDeviceNormalDownload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 751
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    if-eqz p1, :cond_1

    .line 752
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isValidOMARequestUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 753
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 754
    iget v4, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v5, 0x14

    if-ne v4, v5, :cond_0

    .line 755
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 757
    :cond_0
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 762
    :cond_1
    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 763
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 766
    :cond_2
    iget-object p1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 767
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendVvmUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_3
    return-void
.end method

.method public sendDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 4

    .line 606
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDeviceUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    if-eqz p1, :cond_3

    .line 608
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 609
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isValidOMARequestUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 610
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 611
    iget v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v2, 0x13

    const/16 v3, 0x12

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 621
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    :cond_1
    :goto_0
    if-ne v1, v3, :cond_2

    .line 614
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 615
    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 616
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 618
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendVvmUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public sendDeviceUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 3

    .line 773
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDeviceUpload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 774
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isValidOMARequestUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_0
    return-void
.end method

.method public sendGetVVMQuotaInfo(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 3

    .line 738
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendGetVVMQuotaInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->getVvmQuota(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    return-void
.end method

.method public setCmsProfileEnabled(Z)V
    .locals 3

    .line 931
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCmsProfileEnabled: mIsCmsProfileEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Value :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    .line 937
    :cond_0
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-eqz p1, :cond_1

    .line 940
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onNetworkChangeDetected()V

    .line 941
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->init()V

    .line 942
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->isDefaultMessageAppInUse(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    .line 943
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNativeMsgAppIsDefault(Z)V

    .line 945
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    if-nez p1, :cond_2

    .line 946
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v0, "setCmsProfileEnabled: non-default app: pause provisioning"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->pauseProvsioningApi()V

    goto :goto_0

    .line 950
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->unregisterNetworkStateListener()V

    .line 951
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopCMNWorking()V

    .line 952
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->pauseProvsioningApi()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setImpuFromImsRegistration(Ljava/lang/String;)V
    .locals 3

    .line 957
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImpuFromImsRegistration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", shouldPersistImsRegNum value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 958
    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldPersistImsRegNum()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 957
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldPersistImsRegNum()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 964
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xc

    if-le v0, v2, :cond_1

    goto :goto_0

    .line 967
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xb

    if-lt v0, v2, :cond_2

    .line 968
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 970
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setMsgAppForegroundStatus(Z)V
    .locals 1

    .line 578
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setOMANetAPIWorkingStatus(Z)V
    .locals 1

    .line 582
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setVVMSyncState(Z)V
    .locals 0

    .line 1241
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->setSyncState(Z)V

    return-void
.end method

.method public stopAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V
    .locals 3

    .line 724
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendAppSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->stopAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V

    return-void
.end method

.method public stopService()V
    .locals 2

    .line 889
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->stop()V

    const/4 v0, 0x1

    .line 890
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    .line 891
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopCMNWorking()V

    .line 892
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAMBSStopService(Z)V

    .line 893
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAmbsServiceStop:Z

    return-void
.end method

.method public updateDelayedSubscriptionChannel()V
    .locals 2

    .line 1199
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateDelayedSubscriptionChannel()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->updateDelayedSubscriptionChannel()V

    return-void
.end method

.method public updateSubscriptionChannel()V
    .locals 2

    .line 1194
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateSubscriptionChannel()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->updateSubscriptionChannel()V

    return-void
.end method

.method public vvmNormalSyncRequest()V
    .locals 2

    .line 1232
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "vvmNormalSyncRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->normalSyncRequest()V

    return-void
.end method
