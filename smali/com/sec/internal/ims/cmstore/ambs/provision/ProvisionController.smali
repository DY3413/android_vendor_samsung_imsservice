.class public Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;
.super Landroid/os/Handler;
.source "ProvisionController.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;


# static fields
.field protected static final EVENT_PAUSE:I = 0x6

.field protected static final EVENT_PAUSE_SERVICE:I = 0x8

.field protected static final EVENT_PROVISIONAPI_FAIL:I = 0x4

.field protected static final EVENT_PROVISIONAPI_SUCCESS:I = 0x3

.field protected static final EVENT_PROVISION_API:I = 0x1

.field protected static final EVENT_RESUME:I = 0x5

.field protected static final EVENT_STOP:I = 0x7

.field protected static final EVENT_UI_ACTIONS:I = 0x2


# instance fields
.field private final DELAY:J

.field private final INTERNAL_WAITING:J

.field public TAG:Ljava/lang/String;

.field private final mAmbsPhoneStateListener:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

.field private final mContext:Landroid/content/Context;

.field private mDataSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

.field private mFactoryResetReceiver:Landroid/content/BroadcastReceiver;

.field private mHasUserDeleteAccount:Z

.field private mHasUserOptedIn:Z

.field private final mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field public mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

.field private final mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

.field private mIfSteadyState:Z

.field private mIsInternalRestart:Z

.field private mLastSavedMessageIdAfterStop:I

.field private mLastScreenUserStopBackup:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field private mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field private mNetworkChangeReceiver:Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;

.field private mNewUserOptInCase:I

.field private mPaused:Z

.field private mSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

.field private mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field private final mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;


# direct methods
.method static bridge synthetic -$$Nest$mfactoryReset(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->factoryReset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreadNcHost(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->readNcHost()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mreadNmsHost(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->readNmsHost()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 3

    .line 98
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    const-class p2, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x1388

    .line 79
    iput-wide v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->INTERNAL_WAITING:J

    const-wide/16 v0, 0x2710

    .line 80
    iput-wide v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->DELAY:J

    const/4 p2, -0x1

    .line 86
    iput p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 89
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    .line 90
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    .line 91
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    .line 94
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIsInternalRestart:Z

    .line 256
    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;-><init>(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mFactoryResetReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    .line 102
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    .line 103
    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    .line 104
    new-instance p3, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    iget-object p4, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p4

    invoke-direct {p3, p4, p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;-><init>(ILcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mAmbsPhoneStateListener:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    .line 105
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 106
    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 108
    iput p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 109
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 110
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->initPrefenceValues()V

    .line 111
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerFactoryResetReceiver()V

    .line 112
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAMBSPauseService()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerDataSmsReceiver()V

    :cond_0
    return-void
.end method

.method private displayOptIn(I)V
    .locals 4

    .line 1102
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 1103
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasShownPopupOptIn()Z

    move-result v0

    .line 1104
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayOptIn: hasShownPopUpOptIn? : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mHasUserOptedIn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1108
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isOOBE(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1115
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p1, "handlerUIonSuccessProvisionAPI: !isOOBE && UserHasOptedIn - impossible here"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1109
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    const-string v2, "pop_up"

    invoke-interface {v0, p1, v2, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 1112
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfHasShownPopupOptIn(Z)V

    .line 1113
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto :goto_2

    .line 1120
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isOOBE(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez v0, :cond_3

    goto :goto_1

    .line 1123
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p1, "handlerUIonSuccessProvisionAPI: !OOBE && UserOptedIn"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1121
    :cond_4
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    :goto_2
    return-void
.end method

.method private factoryReset()V
    .locals 4

    .line 271
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "Factory reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAMBSStopService(Z)V

    .line 274
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->RestartMenu_Enable_PrmptMsg15:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    const-string v3, "non_pop_up"

    invoke-interface {v0, v2, v3, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg9:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    invoke-interface {v0, v2, v3, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 278
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "factoryReset Done"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleInternalRestart(Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;)V
    .locals 3

    .line 1012
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "handleInternalRestart, restart without optin ui"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1013
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIsInternalRestart:Z

    .line 1014
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerUIonSuccessProvisionAPI: User has NOT opted in: isOOBE?: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 1019
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isOOBE(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " hasUserOptedIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1017
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    const-string v1, "HAP.REQACCOUNT.GET_TC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1023
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/UIEventParam;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-direct {p1, v0, v2}, Lcom/sec/internal/ims/cmstore/params/UIEventParam;-><init>(Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1025
    :cond_1
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    const-string v0, "HAP.REQACCOUNT.EXIST_USER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1026
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/UIEventParam;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-direct {p1, v0, v2}, Lcom/sec/internal/ims/cmstore/params/UIEventParam;-><init>(Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;Ljava/lang/String;)V

    .line 1027
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1029
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p1, "illegal returned callflow name"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private handleProvisionErr()V
    .locals 3

    .line 1389
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleProvisionErr, TBS Case:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTbs()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTbs()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1391
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1392
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    const-string v2, "pop_up"

    .line 1391
    invoke-interface {p0, v0, v2, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto :goto_0

    .line 1395
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserTbsRquired(Z)V

    :goto_0
    return-void
.end method

.method private handleProvisionEvent(Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V
    .locals 7

    .line 535
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleProvisionEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mHasUserOptedIn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIfSteadyState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isAMBSActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->isAMBSActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 535
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_DELETE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 538
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->RESTART_SERVICE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 539
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->INTERNAL_RESTART:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 542
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage stop! Pending Message is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 545
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$3;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "No more chance. Show error screen"

    const/4 v1, -0x1

    const-string v2, "non_pop_up"

    const/4 v3, 0x1

    const-string v4, "pop_up"

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 964
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onMailBoxMigrationReset()V

    goto/16 :goto_5

    .line 935
    :pswitch_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getIsUserInputCtn()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 936
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "Wrong CTN, clear user input"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearInvalidUserCtn()V

    .line 940
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isZCodeMax2Tries()Z

    move-result p1

    if-nez p1, :cond_2

    .line 941
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "isZCodeMax2Tries: false"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->increazeZCodeCounter()V

    .line 943
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto :goto_0

    .line 945
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isZCodeMax2Tries: true, mHasUserOptedIn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeZCodeCounter()V

    .line 947
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-eqz p1, :cond_3

    .line 948
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AuthenticationError_ErrMsg2:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 949
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 948
    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 951
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 952
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto :goto_0

    .line 955
    :cond_3
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 956
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 960
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterSmsReceiver()V

    .line 961
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->stopPhoneStateListener()V

    goto/16 :goto_5

    .line 932
    :pswitch_3
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->updateDelay(IJ)Z

    goto/16 :goto_5

    .line 906
    :pswitch_4
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIsInternalRestart:Z

    .line 907
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-eqz p1, :cond_4

    .line 908
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 910
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->RestartMenu_Enable_PrmptMsg15:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-interface {p1, v0, v2, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 912
    iput-boolean v5, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 915
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->stopProvisioningAPIs()V

    .line 919
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "Provisioning Api\'s"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIsInternalRestart:Z

    if-nez p1, :cond_5

    .line 921
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 923
    :cond_5
    iput v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 924
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerNetworkChangeReceiver()V

    .line 925
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerDataSmsReceiver()V

    .line 926
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 927
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-interface {p1, v0, v2, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 929
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->initPrefenceValues()V

    goto/16 :goto_5

    .line 878
    :pswitch_6
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object p1

    .line 879
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getSimImsi()Ljava/lang/String;

    move-result-object v0

    .line 880
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasUserOptedIn()Z

    move-result v2

    .line 881
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 882
    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getIsUserInputCtn()Z

    move-result v4

    .line 883
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onCloudSyncWorkingStopped()V

    .line 884
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v6, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onUserDeleteAccount(Z)V

    .line 885
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->stopProvisioningAPIs()V

    .line 889
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfHasShownPopupOptIn(Z)V

    .line 890
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveSimImsi(Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    .line 892
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 893
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->clearRetryHistory()V

    .line 894
    iput v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 895
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DELETE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 896
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 897
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->initPrefenceValues()V

    if-eqz v2, :cond_2c

    .line 902
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerDataSmsReceiver()V

    goto/16 :goto_5

    .line 869
    :pswitch_7
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    if-eqz p1, :cond_6

    .line 870
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserDeleteAccount(Z)V

    .line 871
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p1, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onUserDeleteAccount(Z)V

    .line 873
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->StopBackupError_ErrMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 875
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastScreenUserStopBackup:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    .line 850
    :pswitch_8
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isHUI6014Err()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 851
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfHUI6014Err(Z)V

    .line 853
    :cond_7
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez p1, :cond_8

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v0, :cond_8

    .line 854
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 855
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    :cond_8
    if-eqz p1, :cond_9

    .line 856
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez p1, :cond_9

    .line 857
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 858
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 857
    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 860
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 861
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    .line 863
    :cond_9
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 864
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    .line 863
    invoke-interface {p0, p1, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto/16 :goto_5

    .line 820
    :pswitch_9
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isNoMoreChanceUserInputNumber()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 821
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "max 2 tries reached"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeUserInputNumberCount()V

    .line 823
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->clearRetryHistory()V

    .line 824
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_a
    move v3, v5

    .line 827
    :goto_1
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez p1, :cond_b

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v0, :cond_b

    .line 828
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 829
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    :cond_b
    if-eqz p1, :cond_d

    .line 830
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez p1, :cond_d

    .line 831
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AuthenticationError_ErrMsg2:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 832
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 831
    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 834
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    if-eqz v3, :cond_c

    .line 836
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->MsisdnEntry_ErrMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 837
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 836
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    .line 839
    :cond_c
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    .line 843
    :cond_d
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->EVENT_AUTH_ZCODE_TIMEOUT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 844
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 845
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    .line 844
    invoke-interface {p0, p1, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto/16 :goto_5

    .line 797
    :pswitch_a
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez p1, :cond_f

    .line 798
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez p1, :cond_e

    .line 799
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 800
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    .line 803
    :cond_e
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handleProvisionErr()V

    goto/16 :goto_5

    .line 806
    :cond_f
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez p1, :cond_10

    .line 807
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ProvisioningError_ErrMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 808
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 807
    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 810
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 811
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    .line 814
    :cond_10
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handleProvisionErr()V

    goto/16 :goto_5

    .line 781
    :pswitch_b
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez p1, :cond_11

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v0, :cond_11

    .line 782
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 783
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    :cond_11
    if-eqz p1, :cond_12

    .line 784
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez p1, :cond_12

    .line 785
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ProvisioningBlockedError_ErrMsg8:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 786
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 785
    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 788
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 789
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    .line 791
    :cond_12
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 792
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    .line 791
    invoke-interface {p0, p1, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto/16 :goto_5

    .line 766
    :pswitch_c
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getIsUserInputCtn()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 769
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearInvalidUserCtn()V

    .line 771
    :cond_13
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isNoMoreChanceUserInputNumber()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 772
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->AUTH_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_5

    .line 776
    :cond_14
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "user still has a chance to input the number"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->MsisdnEntry_ErrMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    .line 749
    :pswitch_d
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getIsUserInputCtn()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 750
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_INPUT_CTN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_5

    .line 752
    :cond_15
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->readAndSaveSimInformation(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 753
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isZCodeMax2Tries()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 754
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->AUTH_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 756
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeZCodeCounter()V

    goto/16 :goto_5

    .line 758
    :cond_16
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->increazeZCodeCounter()V

    .line 759
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_AUTH_ZCODE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_5

    .line 733
    :pswitch_e
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez p1, :cond_17

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v0, :cond_17

    .line 734
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 735
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    :cond_17
    if-eqz p1, :cond_18

    .line 736
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez p1, :cond_18

    .line 737
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->EligibilityError_ErrMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 738
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 737
    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 740
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 741
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    .line 743
    :cond_18
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 744
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    .line 743
    invoke-interface {p0, p1, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto/16 :goto_5

    .line 729
    :pswitch_f
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 730
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onProvisionReady()V

    goto/16 :goto_5

    .line 724
    :pswitch_10
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_5

    .line 718
    :pswitch_11
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez p1, :cond_19

    .line 719
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveIfSteadyState(Z)V

    .line 721
    :cond_19
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_5

    .line 711
    :pswitch_12
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserDeleteAccount(Z)V

    .line 712
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onUserDeleteAccount(Z)V

    .line 713
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_5

    .line 707
    :pswitch_13
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_5

    .line 703
    :pswitch_14
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_5

    .line 699
    :pswitch_15
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_5

    .line 696
    :pswitch_16
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_5

    .line 687
    :pswitch_17
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 688
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->readNcNmsHost()V

    .line 689
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->initSharedPreference()V

    .line 691
    :cond_1a
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onChannelStateReset()V

    .line 692
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_5

    .line 678
    :pswitch_18
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->EVENT_AUTH_ZCODE_TIMEOUT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 679
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object p1

    .line 680
    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 681
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterSmsReceiver()V

    .line 682
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->stopPhoneStateListener()V

    .line 683
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_5

    .line 647
    :pswitch_19
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->EVENT_AUTH_ZCODE_TIMEOUT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 648
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object v0

    .line 649
    invoke-virtual {p0, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 651
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v0

    .line 652
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->convertPhoneNumberToUserAct(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 654
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 655
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "empty CTN, phone number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 658
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getNativeLine()Ljava/lang/String;

    move-result-object v1

    .line 659
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone number from DB == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_1b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    goto :goto_2

    .line 664
    :cond_1c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 665
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "Phone number was changed!!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->needToHandleSimSwap()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 667
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onRestartService()V

    :cond_1d
    return-void

    .line 672
    :cond_1e
    :goto_2
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerSmsReceiver()V

    .line 673
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    const-wide/32 v0, 0xdbba0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->updateDelay(IJ)Z

    .line 675
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_5

    .line 644
    :pswitch_1a
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->startPhoneStateListener()V

    goto/16 :goto_5

    .line 628
    :pswitch_1b
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->readAndSaveSimInformation(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 629
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    .line 630
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object p1

    .line 629
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 631
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "empty CTN"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->MsisdnEntry_ErrMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 633
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 632
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    .line 639
    :cond_1f
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "CTN was successfully read"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHECK_PHONE_STATE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_5

    .line 547
    :pswitch_1c
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerNetworkChangeReceiver()V

    .line 548
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerDataSmsReceiver()V

    .line 549
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 550
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerConfigurationObserver()V

    .line 552
    :cond_20
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isSimOrCtnChanged(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result p1

    if-nez p1, :cond_2b

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 553
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isOOBE(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result p1

    if-nez p1, :cond_2b

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 554
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    .line 555
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object p1

    .line 554
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto/16 :goto_4

    .line 562
    :cond_21
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAppVer(Ljava/lang/String;)V

    .line 565
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasShownPopupOptIn()Z

    move-result p1

    if-eqz p1, :cond_23

    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez p1, :cond_23

    .line 567
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has shown popup before, will not bother user and server, non_popup screen : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    if-eqz p1, :cond_22

    .line 572
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto :goto_3

    .line 574
    :cond_22
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    :goto_3
    return-void

    .line 580
    :cond_23
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->isRetryTimesFinished(Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 581
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "isRetryTimesFinished"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    if-eqz p1, :cond_24

    .line 584
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    :cond_24
    return-void

    .line 589
    :cond_25
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 591
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "retryLastApi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    instance-of p1, p1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

    if-eqz p1, :cond_26

    .line 593
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "in order to Auth Z code, register sms receiver"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerSmsReceiver()V

    .line 596
    :cond_26
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    invoke-virtual {p1, p0, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->retryLastApi(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Z

    .line 599
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    if-eqz p1, :cond_27

    .line 600
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    :cond_27
    return-void

    .line 605
    :cond_28
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAtsToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 606
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    return-void

    .line 610
    :cond_29
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getValidPAT()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 613
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-interface {p1, v0, v2, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 615
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    return-void

    .line 619
    :cond_2a
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getValidPAT()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2c

    .line 620
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "PAT VALID"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onProvisionReady()V

    return-void

    .line 556
    :cond_2b
    :goto_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "isSimOrCtnChanged || OOBE || empty CTN"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->startOOBE()V

    .line 558
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAppVer(Ljava/lang/String;)V

    :cond_2c
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleUIEvent(Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;Ljava/lang/String;)V
    .locals 6

    .line 410
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUIEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " messge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result v0

    if-nez p1, :cond_0

    .line 413
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p1, "screenName is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 416
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$3;->$SwitchMap$com$sec$internal$constants$ims$cmstore$ATTConstants$AttAmbsUIScreenNames:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "SteadyStateError - retry api"

    const/4 v3, 0x1

    const-string v4, "non_pop_up"

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 525
    :pswitch_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastScreenUserStopBackup:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    if-eqz p1, :cond_a

    .line 526
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_1

    .line 510
    :pswitch_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg11:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 512
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->increaseUserInputNumberCount()V

    .line 513
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 514
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 515
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1, p2, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    .line 516
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHECK_PHONE_STATE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onFixedFlow(I)V

    goto/16 :goto_1

    .line 518
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p2, "phone number null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg9:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p2

    invoke-interface {p1, p2, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 521
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_INPUT_CTN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_1

    .line 491
    :pswitch_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    .line 492
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p2

    invoke-interface {p1, p2, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 494
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    .line 495
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 497
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    invoke-virtual {p2, p1, p0, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V

    .line 500
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    return-void

    .line 503
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p2, "retry stack is empty"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 507
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->clearRetryHistory()V

    goto/16 :goto_1

    .line 465
    :pswitch_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    .line 466
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p2

    invoke-interface {p1, p2, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 468
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    .line 469
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isLastAPIRequestCreateAccount()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 470
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p2, "HUIToken 6014 case"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->clearRetryHistory()V

    .line 472
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_1

    .line 474
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    .line 475
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 477
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    invoke-virtual {p2, p1, p0, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V

    .line 480
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    return-void

    .line 483
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p2, "last api is null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 486
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->clearRetryHistory()V

    goto/16 :goto_1

    .line 460
    :pswitch_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p2

    invoke-interface {p1, p2, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 462
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_DELETE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_1

    :pswitch_5
    if-nez v0, :cond_5

    .line 448
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterDataSmsReceiver()V

    .line 450
    :cond_5
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 451
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 452
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    .line 453
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p2

    invoke-interface {p1, p2, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 455
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_1

    :pswitch_6
    if-nez v0, :cond_6

    .line 419
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterDataSmsReceiver()V

    .line 422
    :cond_6
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 423
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    .line 424
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg11:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p2

    invoke-interface {p1, p2, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 427
    iget p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNewUserOptInCase:I

    .line 428
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newUserOptInCase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p2

    if-ne p1, p2, :cond_8

    .line 430
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 431
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAtsToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 432
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto :goto_0

    .line 434
    :cond_7
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 436
    :goto_0
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    goto :goto_1

    .line 437
    :cond_8
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DELETE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p2

    if-ne p1, p2, :cond_9

    .line 438
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 439
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto :goto_1

    .line 441
    :cond_9
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 442
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_GET_TC:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    :cond_a
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handlerUIonFailedProvisionAPI(Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;)V
    .locals 2

    .line 1143
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlerUIonFailedProvisionAPI: all failed APIs should go here. param: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handlerUIonSuccessProvisionAPI(Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;)V
    .locals 6

    .line 1035
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerUIonSuccessProvisionAPI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->getApiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1037
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIsInternalRestart:Z

    if-eqz v0, :cond_0

    .line 1038
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handleInternalRestart(Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;)V

    .line 1040
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    const-string v2, "HAP.REQACCOUNT.GET_TC"

    const-string v3, "HAP.REQACCOUNT.EXIST_USER"

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 1062
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlerUIonSuccessProvisionAPI: User has NOT opted in: isOOBE?: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 1064
    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isOOBE(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " hasUserOptedIn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1062
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1067
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1068
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    .line 1067
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 1069
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->displayOptIn(I)V

    goto/16 :goto_1

    .line 1070
    :cond_2
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    .line 1071
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1072
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1073
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    .line 1072
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 1074
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->displayOptIn(I)V

    goto/16 :goto_1

    .line 1075
    :cond_3
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    const-string v2, "HAP.REQACCOUNT.BINARY_SMS_PROVISIONED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1076
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1077
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    .line 1076
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 1078
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfHasShownPopupOptIn(Z)V

    .line 1079
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->displayOptIn(I)V

    goto/16 :goto_1

    .line 1080
    :cond_4
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    const-string v2, "HAP.REQACCOUNT.GET_TBS_TC"

    .line 1081
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1082
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserTbsRquired(Z)V

    .line 1083
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWithTerms_PrmptMsg3:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1084
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    .line 1083
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 1085
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->displayOptIn(I)V

    goto/16 :goto_1

    .line 1087
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "illegal returned callflow name"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1041
    :cond_6
    :goto_0
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    .line 1042
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1043
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "handlerUIonSuccessProvisionAPI: HAPPY_PATH_REQ_ACCOUNT_EXIST_USER"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto :goto_1

    .line 1045
    :cond_7
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    .line 1046
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1047
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "handlerUIonSuccessProvisionAPI: NEW_USER"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isHUI6014Err()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1049
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "handlerUIonSuccessProvisionAPI: SOC removal"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onCloudSyncWorkingStopped()V

    .line 1051
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DELETE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 1052
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto :goto_1

    .line 1055
    :cond_8
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_GET_TC:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto :goto_1

    .line 1058
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "handlerUIonSuccessProvisionAPI: TBS_TC"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 1092
    :cond_a
    :goto_1
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->getApiName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1093
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "handlerUIonSuccessProvisionAPI: RequestHUIToken API success"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    if-nez p1, :cond_b

    .line 1096
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    :cond_b
    return-void
.end method

.method private initPrefenceValues()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNewUserOptInCase()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNewUserOptInCase:I

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->ifSteadyState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasUserOptedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 123
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getLastScreen()I

    move-result v0

    .line 122
    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 125
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getLastScreenUserStopBackup()I

    move-result v0

    .line 124
    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastScreenUserStopBackup:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasUserDeleteAccount()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    return-void
.end method

.method private initSharedPreference()V
    .locals 2

    .line 1372
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 1373
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    const-string v0, ""

    .line 1374
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelResURL(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelURL(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMACallBackURL(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1377
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelCreateTime(J)V

    .line 1378
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelLifeTime(J)V

    .line 1379
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearOMASubscriptionChannelDuration()V

    .line 1380
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearOMASubscriptionTime()V

    return-void
.end method

.method private isAMBSActive()Z
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAMBSStopService()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAMBSPauseService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 325
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAMBSActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static isBase64(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)?$"

    .line 136
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private logCurrentWorkingStatus()V
    .locals 3

    .line 1208
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logCurrentWorkingStatus: [mLastSavedMessageIdAfterStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mNewUserOptInCase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNewUserOptInCase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIfSteadyState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mHasUserOptedIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mLastUIScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mLastScreenUserStopBackup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastScreenUserStopBackup:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mHasUserDeleteAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyMsgAppNonPopup(II)V
    .locals 4

    .line 1154
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen to display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWithTerms_PrmptMsg3:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1156
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1157
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1158
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 1160
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    .line 1161
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg9:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    const-string v2, "non_pop_up"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    if-lez p2, :cond_2

    .line 1164
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, p1, v2, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto :goto_0

    .line 1166
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, p1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private onProvisionAPIFail(Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;)V
    .locals 8

    .line 1129
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProvisionAPIFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handlerUIonFailedProvisionAPI(Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;)V

    .line 1132
    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;->mErrorCode:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1133
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;->mRequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v3, p0

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->handleErrorCode(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    goto :goto_0

    .line 1136
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;->mRequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-static {v0, p0, p1, v1, v2}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->handleErrorCode(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    :goto_0
    return-void
.end method

.method private onProvisionAPISuccess(Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;)V
    .locals 8

    .line 995
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProvisionAPISuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handlerUIonSuccessProvisionAPI(Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;)V

    .line 998
    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 999
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mRequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v3, p0

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessfulCallHandling;->callHandling(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    goto :goto_0

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mRequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-static {v0, p0, p1, v1, v2}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessfulCallHandling;->callHandling(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 1006
    :goto_0
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIsInternalRestart:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1007
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIsInternalRestart:Z

    :cond_1
    return-void
.end method

.method private onProvisionReady()V
    .locals 2

    .line 985
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "onProvisionReady"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 986
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveIfSteadyState(Z)V

    .line 987
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 988
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onProvisionSuccess()V

    .line 989
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 990
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterDataSmsReceiver()V

    :cond_0
    return-void
.end method

.method private readNcHost()Z
    .locals 6

    .line 141
    new-instance v0, Lcom/sec/ims/settings/RcsConfigurationReader;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/ims/settings/RcsConfigurationReader;-><init>(Landroid/content/Context;)V

    const-string v1, "root/application/1/serviceproviderext/nc_url"

    .line 142
    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/RcsConfigurationReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readNcHost() nc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->isBase64(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 150
    :catch_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to decrypt the NC"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNcHost()Ljava/lang/String;

    move-result-object v1

    .line 154
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oldnc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " nc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    .line 157
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNcHost(Ljava/lang/String;)V

    :cond_1
    return v2
.end method

.method private readNcNmsHost()V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->readNcHost()Z

    .line 131
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->readNmsHost()Z

    return-void
.end method

.method private readNmsHost()Z
    .locals 5

    .line 164
    new-instance v0, Lcom/sec/ims/settings/RcsConfigurationReader;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/ims/settings/RcsConfigurationReader;-><init>(Landroid/content/Context;)V

    const-string v1, "root/application/1/serviceproviderext/nms_url"

    .line 165
    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/RcsConfigurationReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readNmsHost() nms="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 170
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 172
    :catch_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to decrypt the NMS"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAcsNmsHost(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNmsHost()Ljava/lang/String;

    move-result-object v1

    .line 177
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oldNms="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " nms="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private registerConfigurationObserver()V
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/settings/RcsConfigurationReader;->AUTO_CONFIGURATION_URI:Landroid/net/Uri;

    new-instance v2, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$1;-><init>(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;Landroid/os/Handler;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerDataSmsReceiver()V
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "registerDataSmsReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "*"

    const-string v2, "5586"

    .line 286
    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sms"

    .line 287
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mDataSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    if-nez v1, :cond_0

    .line 289
    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-direct {v1, p0, v2, v3}, Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mDataSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    .line 290
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.test.ambsphasev.SIGNEDBINARYSMS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mDataSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private registerFactoryResetReceiver()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "Updated with FactoryReset Receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mFactoryResetReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 245
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "NULL Receiver"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 249
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 250
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.FACTORY_RESET"

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mFactoryResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerNetworkChangeReceiver()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "registerNetworkChangeReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNetworkChangeReceiver:Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x7fffffff

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 218
    new-instance v1, Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNetworkChangeReceiver:Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;

    .line 219
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private registerSmsReceiver()V
    .locals 3

    .line 224
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const v1, 0x7fffffff

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 227
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    if-nez v1, :cond_0

    .line 228
    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    .line 229
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "registerSmsReceiver"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private saveIfSteadyState(Z)V
    .locals 1

    .line 1188
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfSteadyState(Z)V

    .line 1189
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    return-void
.end method

.method private saveLastScreen(I)V
    .locals 1

    .line 1193
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveLastScreen(I)V

    .line 1194
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    return-void
.end method

.method private saveLastScreenUserStopBackup(I)V
    .locals 1

    .line 1198
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveLastScreenUserStopBackup(I)V

    .line 1199
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastScreenUserStopBackup:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    return-void
.end method

.method private saveNewUserOptInCase(I)V
    .locals 1

    .line 1178
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNewUserOptInCase(I)V

    .line 1179
    iput p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNewUserOptInCase:I

    return-void
.end method

.method private saveUserDeleteAccount(Z)V
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserDeleteAccount(Z)V

    .line 1204
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    return-void
.end method

.method private saveUserOptedIn(Z)V
    .locals 1

    .line 1183
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserOptedIn(Z)V

    .line 1184
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    return-void
.end method

.method private startOOBE()V
    .locals 4

    .line 973
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    const-string v2, "non_pop_up"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 976
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Ljava/net/CookieStore;->removeAll()Z

    .line 977
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearAll()V

    .line 978
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onCleanBufferDbRequired()V

    .line 979
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->initPrefenceValues()V

    .line 981
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    return-void
.end method

.method private startPhoneStateListener()V
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mAmbsPhoneStateListener:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->startListen()V

    return-void
.end method

.method private stopPhoneStateListener()V
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mAmbsPhoneStateListener:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->stopListen()V

    return-void
.end method

.method private stopProvisioningAPIs()V
    .locals 2

    .line 1171
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopProvisioningAPIs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 1173
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unregisterDataSmsReceiver()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterDataSmsReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mDataSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    if-eqz v0, :cond_0

    .line 302
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 303
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mDataSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    :cond_0
    return-void
.end method

.method private unregisterSmsReceiver()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 331
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->logCurrentWorkingStatus()V

    .line 339
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->isAMBSActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    return-void

    .line 343
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "non_pop_up"

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 377
    :pswitch_0
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 378
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->RestartMenu_Disable_PrmptMsg16:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-interface {p1, v0, v1, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 380
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-interface {p0, p1, v1, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto :goto_0

    .line 371
    :pswitch_1
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 372
    iput v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 373
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AMBS_SERVICE_DISABLE:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-interface {p0, p1, v1, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto :goto_0

    .line 400
    :pswitch_2
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    goto :goto_0

    .line 386
    :pswitch_3
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    if-eqz p1, :cond_2

    .line 387
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 388
    iget p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    if-eq p1, v2, :cond_1

    .line 390
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object p1

    .line 391
    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 392
    iput v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 393
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p1, "resume successfully"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 395
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p1, "no saved event"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 364
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;

    if-eqz p1, :cond_2

    .line 366
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onProvisionAPIFail(Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;)V

    goto :goto_0

    .line 357
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;

    if-eqz p1, :cond_2

    .line 360
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onProvisionAPISuccess(Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;)V

    goto :goto_0

    .line 351
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/UIEventParam;

    if-eqz p1, :cond_2

    .line 353
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/UIEventParam;->mUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/UIEventParam;->mMessage:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handleUIEvent(Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    if-eqz p1, :cond_2

    .line 347
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handleProvisionEvent(Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 2

    .line 1267
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 1268
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 1

    .line 1261
    new-instance p2, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 1262
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)V
    .locals 0

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 1

    .line 1251
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 1252
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFailedEvent(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onFixedFlow(I)V
    .locals 3

    .line 1279
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object p1

    .line 1280
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFixedFlow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1281
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFixedFlowWithMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public onGoToEvent(ILjava/lang/Object;)V
    .locals 2

    .line 1220
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object p1

    .line 1221
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGoToEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 1222
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMailBoxMigrationReset()V
    .locals 2

    .line 1384
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "onMailBoxMigrationReset."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onMailBoxMigrationReset()V

    return-void
.end method

.method public onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onOmaFailExceedMaxCount()V
    .locals 5

    .line 1359
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    const-string v3, "pop_up"

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 1361
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {v0, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    .line 1362
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 1363
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V
    .locals 7

    .line 1273
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->handleErrorHeader(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;ILcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 2

    .line 1238
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 1239
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 1

    .line 1231
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 1233
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onUIButtonProceed(ILjava/lang/String;)Z
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/UIEventParam;

    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/params/UIEventParam;-><init>(Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 319
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public pause()V
    .locals 2

    .line 1313
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    .line 1314
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public pauseService()V
    .locals 2

    .line 1318
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "pauseService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    .line 1319
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public resetDataReceiver()V
    .locals 2

    .line 1400
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "reset DataSmsReceiver "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterDataSmsReceiver()V

    .line 1402
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerDataSmsReceiver()V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 1308
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 1309
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 3

    .line 1299
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_INITIAL_STATE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->updateDelay(IJ)Z

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1323
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    .line 1324
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public update(I)Z
    .locals 3

    .line 1329
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object p1

    .line 1330
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1331
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public updateDelay(IJ)Z
    .locals 3

    .line 1336
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object p1

    .line 1337
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " delayed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1339
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method

.method public updateDelayRetry(IJ)Z
    .locals 4

    .line 1344
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg11:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    const-string v2, "non_pop_up"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 1346
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object p1

    .line 1347
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " delayed retry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1349
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method

.method public updateMessage(Landroid/os/Message;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
