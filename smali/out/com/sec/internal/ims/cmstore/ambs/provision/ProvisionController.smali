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
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->factoryReset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreadNcHost(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->readNcHost()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mreadNmsHost(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->readNmsHost()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .registers 10

    .line 99
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 79
    const-class p2, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x1388

    .line 80
    iput-wide v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->INTERNAL_WAITING:J

    const-wide/16 v0, 0x2710

    .line 81
    iput-wide v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->DELAY:J

    const/4 p2, -0x1

    .line 87
    iput p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 90
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    .line 91
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    .line 92
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    .line 95
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIsInternalRestart:Z

    .line 257
    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;-><init>(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mFactoryResetReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 101
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

    .line 102
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    .line 103
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    .line 104
    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    .line 105
    new-instance p3, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    iget-object p4, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p4

    invoke-direct {p3, p4, p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;-><init>(ILcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mAmbsPhoneStateListener:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    .line 106
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 107
    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 109
    iput p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 110
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 111
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->initPrefenceValues()V

    .line 112
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerFactoryResetReceiver()V

    .line 113
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAMBSPauseService()Z

    move-result p1

    if-eqz p1, :cond_7f

    .line 115
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerDataSmsReceiver()V

    :cond_7f
    return-void
.end method

.method private displayOptIn(I)V
    .registers 6

    .line 1103
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 1104
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasShownPopupOptIn()Z

    move-result v0

    .line 1105
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

    if-nez v0, :cond_57

    .line 1109
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isOOBE(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez v0, :cond_3a

    goto :goto_42

    .line 1116
    :cond_3a
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p1, "handlerUIonSuccessProvisionAPI: !isOOBE && UserHasOptedIn - impossible here"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 1110
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    const-string v2, "pop_up"

    invoke-interface {v0, p1, v2, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 1113
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfHasShownPopupOptIn(Z)V

    .line 1114
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto :goto_6f

    .line 1121
    :cond_57
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isOOBE(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v0

    if-nez v0, :cond_6c

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez v0, :cond_64

    goto :goto_6c

    .line 1124
    :cond_64
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p1, "handlerUIonSuccessProvisionAPI: !OOBE && UserOptedIn"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 1122
    :cond_6c
    :goto_6c
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    :goto_6f
    return-void
.end method

.method private factoryReset()V
    .registers 5

    .line 272
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "Factory reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAMBSStopService(Z)V

    .line 275
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->RestartMenu_Enable_PrmptMsg15:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    const-string v3, "non_pop_up"

    invoke-interface {v0, v2, v3, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 277
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg9:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    invoke-interface {v0, v2, v3, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 279
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "factoryReset Done"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleInternalRestart(Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;)V
    .registers 5

    .line 1013
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "handleInternalRestart, restart without optin ui"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1014
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIsInternalRestart:Z

    .line 1015
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez v0, :cond_74

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-eqz v0, :cond_13

    goto :goto_74

    .line 1018
    :cond_13
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerUIonSuccessProvisionAPI: User has NOT opted in: isOOBE?: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 1020
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isOOBE(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " hasUserOptedIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1018
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    const-string v1, "HAP.REQACCOUNT.GET_TC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_54

    .line 1024
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/UIEventParam;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-direct {p1, v0, v2}, Lcom/sec/internal/ims/cmstore/params/UIEventParam;-><init>(Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_74

    :cond_54
    const-string v0, "HAP.REQACCOUNT.EXIST_USER"

    .line 1026
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 1027
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/UIEventParam;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-direct {p1, v0, v2}, Lcom/sec/internal/ims/cmstore/params/UIEventParam;-><init>(Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_74

    .line 1030
    :cond_6d
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p1, "illegal returned callflow name"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    :goto_74
    return-void
.end method

.method private handleProvisionErr()V
    .registers 4

    .line 1402
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

    .line 1403
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTbs()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3b

    .line 1404
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1405
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    const-string v2, "pop_up"

    .line 1404
    invoke-interface {p0, v0, v2, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto :goto_44

    .line 1408
    :cond_3b
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserTbsRquired(Z)V

    :goto_44
    return-void
.end method

.method private handleProvisionEvent(Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V
    .registers 9

    .line 536
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

    .line 537
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->isAMBSActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_DELETE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    if-eq v0, v1, :cond_7f

    .line 539
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->RESTART_SERVICE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    if-eq v0, v1, :cond_7f

    .line 540
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->INTERNAL_RESTART:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    if-eq v0, v1, :cond_7f

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    if-nez v0, :cond_7f

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    if-eqz v0, :cond_7f

    .line 542
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 543
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

    .line 546
    :cond_7f
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

    packed-switch p1, :pswitch_data_7f6

    :pswitch_93
    goto/16 :goto_7f5

    .line 965
    :pswitch_95
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onMailBoxMigrationReset()V

    goto/16 :goto_7f5

    .line 936
    :pswitch_9a
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getIsUserInputCtn()Z

    move-result p1

    if-eqz p1, :cond_b6

    .line 937
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "Wrong CTN, clear user input"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearInvalidUserCtn()V

    .line 941
    :cond_b6
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isZCodeMax2Tries()Z

    move-result p1

    if-nez p1, :cond_dc

    .line 942
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "isZCodeMax2Tries: false"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->increazeZCodeCounter()V

    .line 944
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto :goto_131

    .line 946
    :cond_dc
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

    .line 947
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeZCodeCounter()V

    .line 948
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-eqz p1, :cond_11f

    .line 949
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AuthenticationError_ErrMsg2:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 950
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 949
    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 952
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 953
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto :goto_131

    .line 956
    :cond_11f
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 957
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 961
    :goto_131
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterSmsReceiver()V

    .line 962
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->stopPhoneStateListener()V

    goto/16 :goto_7f5

    .line 933
    :pswitch_139
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->updateDelay(IJ)Z

    goto/16 :goto_7f5

    .line 907
    :pswitch_146
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIsInternalRestart:Z

    .line 908
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-eqz p1, :cond_14f

    .line 909
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 911
    :cond_14f
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->RestartMenu_Enable_PrmptMsg15:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-interface {p1, v0, v2, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 913
    iput-boolean v5, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 916
    :pswitch_15c
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->stopProvisioningAPIs()V

    .line 920
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "Provisioning Api\'s"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIsInternalRestart:Z

    if-nez p1, :cond_16d

    .line 922
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 924
    :cond_16d
    iput v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 925
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerNetworkChangeReceiver()V

    .line 926
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerDataSmsReceiver()V

    .line 927
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 928
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-interface {p1, v0, v2, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 930
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->initPrefenceValues()V

    goto/16 :goto_7f5

    .line 879
    :pswitch_18e
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object p1

    .line 880
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getSimImsi()Ljava/lang/String;

    move-result-object v0

    .line 881
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasUserOptedIn()Z

    move-result v2

    .line 882
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 883
    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getIsUserInputCtn()Z

    move-result v4

    .line 884
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onCloudSyncWorkingStopped()V

    .line 885
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v6, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onUserDeleteAccount(Z)V

    .line 886
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->stopProvisioningAPIs()V

    .line 890
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfHasShownPopupOptIn(Z)V

    .line 891
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveSimImsi(Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    .line 893
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 894
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->clearRetryHistory()V

    .line 895
    iput v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 896
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DELETE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 897
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 898
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->initPrefenceValues()V

    if-eqz v2, :cond_7f5

    .line 903
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerDataSmsReceiver()V

    goto/16 :goto_7f5

    .line 870
    :pswitch_208
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    if-eqz p1, :cond_214

    .line 871
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserDeleteAccount(Z)V

    .line 872
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p1, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onUserDeleteAccount(Z)V

    .line 874
    :cond_214
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->StopBackupError_ErrMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 876
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastScreenUserStopBackup:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_7f5

    .line 851
    :pswitch_22a
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isHUI6014Err()Z

    move-result p1

    if-eqz p1, :cond_23f

    .line 852
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfHUI6014Err(Z)V

    .line 854
    :cond_23f
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez p1, :cond_25b

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v0, :cond_25b

    .line 855
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 856
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_7f5

    :cond_25b
    if-eqz p1, :cond_280

    .line 857
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez p1, :cond_280

    .line 858
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 859
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 858
    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 861
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 862
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_7f5

    .line 864
    :cond_280
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 865
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    .line 864
    invoke-interface {p0, p1, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto/16 :goto_7f5

    .line 821
    :pswitch_28d
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isNoMoreChanceUserInputNumber()Z

    move-result p1

    if-eqz p1, :cond_2be

    .line 822
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "max 2 tries reached"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeUserInputNumberCount()V

    .line 824
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->clearRetryHistory()V

    .line 825
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    goto :goto_2bf

    :cond_2be
    move v3, v5

    .line 828
    :goto_2bf
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez p1, :cond_2db

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v0, :cond_2db

    .line 829
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 830
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_7f5

    :cond_2db
    if-eqz p1, :cond_313

    .line 831
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez p1, :cond_313

    .line 832
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AuthenticationError_ErrMsg2:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 833
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 832
    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 835
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    if-eqz v3, :cond_308

    .line 837
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->MsisdnEntry_ErrMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 838
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 837
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_7f5

    .line 840
    :cond_308
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_7f5

    .line 844
    :cond_313
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->EVENT_AUTH_ZCODE_TIMEOUT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 845
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 846
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    .line 845
    invoke-interface {p0, p1, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto/16 :goto_7f5

    .line 798
    :pswitch_329
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez p1, :cond_34a

    .line 799
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez p1, :cond_345

    .line 800
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 801
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_7f5

    .line 804
    :cond_345
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handleProvisionErr()V

    goto/16 :goto_7f5

    .line 807
    :cond_34a
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez p1, :cond_36d

    .line 808
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ProvisioningError_ErrMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 809
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 808
    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 811
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 812
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_7f5

    .line 815
    :cond_36d
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handleProvisionErr()V

    goto/16 :goto_7f5

    .line 782
    :pswitch_372
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez p1, :cond_38e

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v0, :cond_38e

    .line 783
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 784
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_7f5

    :cond_38e
    if-eqz p1, :cond_3b3

    .line 785
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez p1, :cond_3b3

    .line 786
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ProvisioningBlockedError_ErrMsg8:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 787
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 786
    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 789
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 790
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_7f5

    .line 792
    :cond_3b3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 793
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    .line 792
    invoke-interface {p0, p1, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto/16 :goto_7f5

    .line 767
    :pswitch_3c0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getIsUserInputCtn()Z

    move-result p1

    if-eqz p1, :cond_3d5

    .line 770
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearInvalidUserCtn()V

    .line 772
    :cond_3d5
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isNoMoreChanceUserInputNumber()Z

    move-result p1

    if-eqz p1, :cond_3f1

    .line 773
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->AUTH_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_7f5

    .line 777
    :cond_3f1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "user still has a chance to input the number"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->MsisdnEntry_ErrMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_7f5

    .line 750
    :pswitch_404
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getIsUserInputCtn()Z

    move-result p1

    if-eqz p1, :cond_41b

    .line 751
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_INPUT_CTN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_7f5

    .line 753
    :cond_41b
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->readAndSaveSimInformation(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 754
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isZCodeMax2Tries()Z

    move-result p1

    if-eqz p1, :cond_445

    .line 755
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->AUTH_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 757
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeZCodeCounter()V

    goto/16 :goto_7f5

    .line 759
    :cond_445
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->increazeZCodeCounter()V

    .line 760
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_AUTH_ZCODE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_7f5

    .line 734
    :pswitch_459
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez p1, :cond_475

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v0, :cond_475

    .line 735
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 736
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_7f5

    :cond_475
    if-eqz p1, :cond_49a

    .line 737
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez p1, :cond_49a

    .line 738
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->EligibilityError_ErrMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 739
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 738
    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 741
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 742
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_7f5

    .line 744
    :cond_49a
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 745
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    .line 744
    invoke-interface {p0, p1, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto/16 :goto_7f5

    .line 730
    :pswitch_4a7
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 731
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onProvisionReady()V

    goto/16 :goto_7f5

    .line 725
    :pswitch_4be
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_7f5

    .line 719
    :pswitch_4d2
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez p1, :cond_4d9

    .line 720
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveIfSteadyState(Z)V

    .line 722
    :cond_4d9
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_7f5

    .line 712
    :pswitch_4ed
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserDeleteAccount(Z)V

    .line 713
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onUserDeleteAccount(Z)V

    .line 714
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_7f5

    .line 708
    :pswitch_509
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_7f5

    .line 704
    :pswitch_51d
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_7f5

    .line 700
    :pswitch_531
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_7f5

    .line 697
    :pswitch_545
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_7f5

    .line 688
    :pswitch_557
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result p1

    if-eqz p1, :cond_563

    .line 689
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->readNcNmsHost()V

    .line 690
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->initSharedPreference()V

    .line 692
    :cond_563
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onChannelStateReset()V

    .line 693
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_7f5

    .line 679
    :pswitch_57e
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->EVENT_AUTH_ZCODE_TIMEOUT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 680
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object p1

    .line 681
    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 682
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterSmsReceiver()V

    .line 683
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->stopPhoneStateListener()V

    .line 684
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_7f5

    .line 648
    :pswitch_5a5
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->EVENT_AUTH_ZCODE_TIMEOUT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 649
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object v0

    .line 650
    invoke-virtual {p0, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 652
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v0

    .line 653
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->convertPhoneNumberToUserAct(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 655
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_622

    .line 656
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

    .line 657
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_618

    .line 659
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getNativeLine()Ljava/lang/String;

    move-result-object v1

    .line 660
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

    .line 662
    :cond_618
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    goto :goto_64b

    .line 665
    :cond_622
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_64b

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64b

    .line 666
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "Phone number was changed!!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->needToHandleSimSwap()Z

    move-result p1

    if-eqz p1, :cond_64a

    .line 668
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onRestartService()V

    :cond_64a
    return-void

    .line 673
    :cond_64b
    :goto_64b
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerSmsReceiver()V

    .line 674
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    const-wide/32 v0, 0xdbba0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->updateDelay(IJ)Z

    .line 676
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_7f5

    .line 645
    :pswitch_66c
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->startPhoneStateListener()V

    goto/16 :goto_7f5

    .line 629
    :pswitch_671
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->readAndSaveSimInformation(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 630
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    .line 631
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object p1

    .line 630
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_69e

    .line 632
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "empty CTN"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->MsisdnEntry_ErrMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 634
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 633
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_7f5

    .line 640
    :cond_69e
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "CTN was successfully read"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHECK_PHONE_STATE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_7f5

    .line 548
    :pswitch_6b0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerNetworkChangeReceiver()V

    .line 549
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerDataSmsReceiver()V

    .line 550
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result p1

    if-eqz p1, :cond_6bf

    .line 551
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerConfigurationObserver()V

    .line 553
    :cond_6bf
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isSimOrCtnChanged(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result p1

    if-nez p1, :cond_7e0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 554
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isOOBE(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result p1

    if-nez p1, :cond_7e0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 555
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    .line 556
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object p1

    .line 555
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6e1

    goto/16 :goto_7e0

    .line 563
    :cond_6e1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAppVer(Ljava/lang/String;)V

    .line 566
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasShownPopupOptIn()Z

    move-result p1

    if-eqz p1, :cond_72a

    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez p1, :cond_72a

    .line 568
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

    .line 572
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    if-eqz p1, :cond_720

    .line 573
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto :goto_729

    .line 575
    :cond_720
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    :goto_729
    return-void

    .line 581
    :cond_72a
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->isRetryTimesFinished(Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Z

    move-result p1

    if-eqz p1, :cond_74b

    .line 582
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "isRetryTimesFinished"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    if-eqz p1, :cond_74a

    .line 585
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    :cond_74a
    return-void

    .line 590
    :cond_74b
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p1

    if-eqz p1, :cond_786

    .line 592
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "retryLastApi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    instance-of p1, p1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

    if-eqz p1, :cond_76d

    .line 594
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "in order to Auth Z code, register sms receiver"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerSmsReceiver()V

    .line 597
    :cond_76d
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    invoke-virtual {p1, p0, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->retryLastApi(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Z

    .line 600
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    if-eqz p1, :cond_785

    .line 601
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    :cond_785
    return-void

    .line 606
    :cond_786
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAtsToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7a0

    .line 607
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    return-void

    .line 611
    :cond_7a0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getValidPAT()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7c5

    .line 614
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-interface {p1, v0, v2, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 616
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    return-void

    .line 620
    :cond_7c5
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getValidPAT()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7f5

    .line 621
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "PAT VALID"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onProvisionReady()V

    return-void

    .line 557
    :cond_7e0
    :goto_7e0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "isSimOrCtnChanged || OOBE || empty CTN"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->startOOBE()V

    .line 559
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAppVer(Ljava/lang/String;)V

    :cond_7f5
    :goto_7f5
    return-void

    :pswitch_data_7f6
    .packed-switch 0x1
        :pswitch_6b0
        :pswitch_671
        :pswitch_66c
        :pswitch_5a5
        :pswitch_57e
        :pswitch_557
        :pswitch_545
        :pswitch_531
        :pswitch_51d
        :pswitch_509
        :pswitch_4ed
        :pswitch_4d2
        :pswitch_4be
        :pswitch_93
        :pswitch_4a7
        :pswitch_459
        :pswitch_404
        :pswitch_3c0
        :pswitch_372
        :pswitch_329
        :pswitch_28d
        :pswitch_22a
        :pswitch_208
        :pswitch_18e
        :pswitch_146
        :pswitch_15c
        :pswitch_139
        :pswitch_9a
        :pswitch_95
    .end packed-switch
.end method

.method private handleUIEvent(Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;Ljava/lang/String;)V
    .registers 9

    .line 411
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

    .line 412
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result v0

    if-nez p1, :cond_2d

    .line 414
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "screenName is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 417
    :cond_2d
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$3;->$SwitchMap$com$sec$internal$constants$ims$cmstore$ATTConstants$AttAmbsUIScreenNames:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "SteadyStateError - retry api"

    const/4 v3, 0x1

    const-string v4, "non_pop_up"

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_244

    goto/16 :goto_243

    .line 526
    :pswitch_40
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastScreenUserStopBackup:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    if-eqz p1, :cond_243

    .line 527
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_243

    .line 511
    :pswitch_4d
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg11:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 513
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->increaseUserInputNumberCount()V

    .line 514
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 515
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7e

    .line 516
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1, p2, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    .line 517
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHECK_PHONE_STATE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onFixedFlow(I)V

    goto/16 :goto_243

    .line 519
    :cond_7e
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p2, "phone number null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg9:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p2

    invoke-interface {p1, p2, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 522
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_INPUT_CTN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_243

    .line 492
    :pswitch_9b
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    .line 493
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p2

    invoke-interface {p1, p2, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 495
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    .line 496
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p1

    if-eqz p1, :cond_d5

    .line 498
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    invoke-virtual {p2, p1, p0, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V

    .line 501
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    return-void

    .line 504
    :cond_d5
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "retry stack is empty"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 508
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->clearRetryHistory()V

    goto/16 :goto_243

    .line 466
    :pswitch_f1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    .line 467
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p2

    invoke-interface {p1, p2, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 469
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    .line 470
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isLastAPIRequestCreateAccount()Z

    move-result p1

    if-eqz p1, :cond_12a

    .line 471
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p2, "HUIToken 6014 case"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->clearRetryHistory()V

    .line 473
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_243

    .line 475
    :cond_12a
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    .line 476
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p1

    if-eqz p1, :cond_152

    .line 478
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    invoke-virtual {p2, p1, p0, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V

    .line 481
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    return-void

    .line 484
    :cond_152
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p2, "last api is null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 487
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->clearRetryHistory()V

    goto/16 :goto_243

    .line 461
    :pswitch_16d
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p2

    invoke-interface {p1, p2, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 463
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_DELETE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_243

    :pswitch_183
    if-nez v0, :cond_188

    .line 449
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterDataSmsReceiver()V

    .line 451
    :cond_188
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 452
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 453
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    .line 454
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p2

    invoke-interface {p1, p2, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 456
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_243

    :pswitch_1af
    if-nez v0, :cond_1b4

    .line 420
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterDataSmsReceiver()V

    .line 423
    :cond_1b4
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 424
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    .line 425
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg11:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p2

    invoke-interface {p1, p2, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 428
    iget p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNewUserOptInCase:I

    .line 429
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newUserOptInCase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p2

    if-ne p1, p2, :cond_216

    .line 431
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 432
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAtsToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_203

    .line 433
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto :goto_20c

    .line 435
    :cond_203
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 437
    :goto_20c
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    goto :goto_243

    .line 438
    :cond_216
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DELETE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p2

    if-ne p1, p2, :cond_231

    .line 439
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 440
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto :goto_243

    .line 442
    :cond_231
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 443
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_GET_TC:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    :cond_243
    :goto_243
    return-void

    :pswitch_data_244
    .packed-switch 0x1
        :pswitch_1af
        :pswitch_183
        :pswitch_183
        :pswitch_16d
        :pswitch_f1
        :pswitch_9b
        :pswitch_4d
        :pswitch_40
    .end packed-switch
.end method

.method private handlerUIonFailedProvisionAPI(Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;)V
    .registers 4

    .line 1144
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
    .registers 8

    .line 1036
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerUIonSuccessProvisionAPI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->getApiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_156

    .line 1038
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIsInternalRestart:Z

    if-eqz v0, :cond_2e

    .line 1039
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handleInternalRestart(Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;)V

    .line 1041
    :cond_2e
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    const-string v2, "HAP.REQACCOUNT.GET_TC"

    const-string v3, "HAP.REQACCOUNT.EXIST_USER"

    if-nez v0, :cond_e9

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-eqz v0, :cond_3c

    goto/16 :goto_e9

    .line 1063
    :cond_3c
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlerUIonSuccessProvisionAPI: User has NOT opted in: isOOBE?: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 1065
    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isOOBE(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " hasUserOptedIn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1063
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 1068
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1069
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    .line 1068
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 1070
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->displayOptIn(I)V

    goto/16 :goto_156

    .line 1071
    :cond_7c
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    .line 1072
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 1073
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1074
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    .line 1073
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 1075
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->displayOptIn(I)V

    goto/16 :goto_156

    :cond_96
    const-string v0, "HAP.REQACCOUNT.BINARY_SMS_PROVISIONED"

    .line 1076
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 1077
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1078
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    .line 1077
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 1079
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfHasShownPopupOptIn(Z)V

    .line 1080
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->displayOptIn(I)V

    goto/16 :goto_156

    :cond_bb
    const-string v0, "HAP.REQACCOUNT.GET_TBS_TC"

    .line 1081
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    .line 1082
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 1083
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserTbsRquired(Z)V

    .line 1084
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWithTerms_PrmptMsg3:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1085
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    .line 1084
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 1086
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->displayOptIn(I)V

    goto/16 :goto_156

    .line 1088
    :cond_e1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "illegal returned callflow name"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_156

    .line 1042
    :cond_e9
    :goto_e9
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    .line 1043
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 1044
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "handlerUIonSuccessProvisionAPI: HAPPY_PATH_REQ_ACCOUNT_EXIST_USER"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto :goto_156

    .line 1046
    :cond_102
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    .line 1047
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_146

    .line 1048
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "handlerUIonSuccessProvisionAPI: NEW_USER"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isHUI6014Err()Z

    move-result v0

    if-eqz v0, :cond_13c

    .line 1050
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "handlerUIonSuccessProvisionAPI: SOC removal"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onCloudSyncWorkingStopped()V

    .line 1052
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DELETE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 1053
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto :goto_156

    .line 1056
    :cond_13c
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_GET_TC:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto :goto_156

    .line 1059
    :cond_146
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "handlerUIonSuccessProvisionAPI: TBS_TC"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 1093
    :cond_156
    :goto_156
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->getApiName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17e

    .line 1094
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "handlerUIonSuccessProvisionAPI: RequestHUIToken API success"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-eqz p1, :cond_17e

    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    if-nez p1, :cond_17e

    .line 1097
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    :cond_17e
    return-void
.end method

.method private initPrefenceValues()V
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNewUserOptInCase()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNewUserOptInCase:I

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->ifSteadyState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasUserOptedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 124
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getLastScreen()I

    move-result v0

    .line 123
    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 126
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getLastScreenUserStopBackup()I

    move-result v0

    .line 125
    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastScreenUserStopBackup:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasUserDeleteAccount()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    return-void
.end method

.method private initSharedPreference()V
    .registers 3

    .line 1385
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 1386
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    const-string v0, ""

    .line 1387
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelResURL(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelURL(Ljava/lang/String;)V

    .line 1389
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMACallBackURL(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1390
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelCreateTime(J)V

    .line 1391
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelLifeTime(J)V

    .line 1392
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearOMASubscriptionChannelDuration()V

    .line 1393
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearOMASubscriptionTime()V

    return-void
.end method

.method private isAMBSActive()Z
    .registers 4

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAMBSStopService()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAMBSPauseService()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 326
    :goto_1b
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
    .registers 2

    const-string v0, "^([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)?$"

    .line 137
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private logCurrentWorkingStatus()V
    .registers 4

    .line 1209
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
    .registers 7

    .line 1155
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screen to display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWithTerms_PrmptMsg3:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    if-eq p1, v0, :cond_2f

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1157
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    if-eq p1, v0, :cond_2f

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1158
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    if-ne p1, v0, :cond_32

    .line 1159
    :cond_2f
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 1161
    :cond_32
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    .line 1162
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg9:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    const-string v2, "non_pop_up"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    if-lez p2, :cond_4b

    .line 1165
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, p1, v2, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto :goto_50

    .line 1167
    :cond_4b
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, p1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    :goto_50
    return-void
.end method

.method private onProvisionAPIFail(Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;)V
    .registers 10

    .line 1130
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProvisionAPIFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handlerUIonFailedProvisionAPI(Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;)V

    .line 1133
    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;->mErrorCode:Ljava/lang/String;

    if-eqz v5, :cond_2a

    .line 1134
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;->mRequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v3, p0

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->handleErrorCode(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    goto :goto_35

    .line 1137
    :cond_2a
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;->mRequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-static {v0, p0, p1, v1, v2}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->handleErrorCode(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    :goto_35
    return-void
.end method

.method private onProvisionAPISuccess(Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;)V
    .registers 10

    .line 996
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProvisionAPISuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handlerUIonSuccessProvisionAPI(Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;)V

    .line 999
    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    if-eqz v5, :cond_2a

    .line 1000
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mRequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v3, p0

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessfulCallHandling;->callHandling(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    goto :goto_35

    .line 1003
    :cond_2a
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mRequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-static {v0, p0, p1, v1, v2}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessfulCallHandling;->callHandling(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 1007
    :goto_35
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIsInternalRestart:Z

    if-eqz p1, :cond_3c

    const/4 p1, 0x0

    .line 1008
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIsInternalRestart:Z

    :cond_3c
    return-void
.end method

.method private onProvisionReady()V
    .registers 3

    .line 986
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "onProvisionReady"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 987
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveIfSteadyState(Z)V

    .line 988
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 989
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onProvisionSuccess()V

    .line 990
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result v0

    if-nez v0, :cond_23

    .line 991
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterDataSmsReceiver()V

    :cond_23
    return-void
.end method

.method private readNcHost()Z
    .registers 7

    .line 142
    new-instance v0, Lcom/sec/ims/settings/RcsConfigurationReader;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/ims/settings/RcsConfigurationReader;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "root/application/1/serviceproviderext/nc_url"

    .line 143
    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/RcsConfigurationReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readNcHost() nc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_80

    .line 146
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->isBase64(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 149
    :try_start_36
    new-instance v1, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_3f} :catch_41

    move-object v0, v1

    goto :goto_48

    .line 151
    :catch_41
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to decrypt the NC"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_48
    :goto_48
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNcHost()Ljava/lang/String;

    move-result-object v1

    .line 155
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

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    .line 158
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNcHost(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_80
    return v2
.end method

.method private readNcNmsHost()V
    .registers 1

    .line 131
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->readNcHost()Z

    .line 132
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->readNmsHost()Z

    return-void
.end method

.method private readNmsHost()Z
    .registers 6

    .line 165
    new-instance v0, Lcom/sec/ims/settings/RcsConfigurationReader;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/ims/settings/RcsConfigurationReader;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "root/application/1/serviceproviderext/nms_url"

    .line 166
    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/RcsConfigurationReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readNmsHost() nms="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_76

    .line 171
    :try_start_2c
    new-instance v1, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_35} :catch_37

    move-object v0, v1

    goto :goto_3e

    .line 173
    :catch_37
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to decrypt the NMS"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_3e
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAcsNmsHost(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNmsHost()Ljava/lang/String;

    move-result-object v1

    .line 178
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

    .line 179
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_76

    const/4 v2, 0x1

    :cond_76
    return v2
.end method

.method private registerConfigurationObserver()V
    .registers 5

    .line 188
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
    .registers 5

    .line 284
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerDataSmsReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "*"

    const-string v2, "5586"

    .line 287
    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sms"

    .line 288
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mDataSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    if-nez v1, :cond_30

    .line 290
    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-direct {v1, p0, v2, v3}, Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mDataSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    .line 291
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 294
    :cond_30
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 295
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.test.ambsphasev.SIGNEDBINARYSMS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mDataSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_50
    return-void
.end method

.method private registerFactoryResetReceiver()V
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "Updated with FactoryReset Receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mFactoryResetReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_13

    .line 246
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "NULL Receiver"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 250
    :cond_13
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.FACTORY_RESET"

    .line 253
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mFactoryResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerNetworkChangeReceiver()V
    .registers 4

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerNetworkChangeReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNetworkChangeReceiver:Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;

    if-nez v0, :cond_2a

    .line 216
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x7fffffff

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 219
    new-instance v1, Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNetworkChangeReceiver:Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;

    .line 220
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2a
    return-void
.end method

.method private registerSmsReceiver()V
    .registers 4

    .line 225
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const v1, 0x7fffffff

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 228
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    if-nez v1, :cond_1f

    .line 229
    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    .line 230
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 232
    :cond_1f
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "registerSmsReceiver"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private saveIfSteadyState(Z)V
    .registers 3

    .line 1189
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfSteadyState(Z)V

    .line 1190
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    return-void
.end method

.method private saveLastScreen(I)V
    .registers 3

    .line 1194
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveLastScreen(I)V

    .line 1195
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    return-void
.end method

.method private saveLastScreenUserStopBackup(I)V
    .registers 3

    .line 1199
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveLastScreenUserStopBackup(I)V

    .line 1200
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastScreenUserStopBackup:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    return-void
.end method

.method private saveNewUserOptInCase(I)V
    .registers 3

    .line 1179
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNewUserOptInCase(I)V

    .line 1180
    iput p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNewUserOptInCase:I

    return-void
.end method

.method private saveUserDeleteAccount(Z)V
    .registers 3

    .line 1204
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserDeleteAccount(Z)V

    .line 1205
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    return-void
.end method

.method private saveUserOptedIn(Z)V
    .registers 3

    .line 1184
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserOptedIn(Z)V

    .line 1185
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    return-void
.end method

.method private startOOBE()V
    .registers 5

    .line 974
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    const-string v2, "non_pop_up"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 977
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->getCookieJar()Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;->removeAll()V

    .line 978
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearAll()V

    .line 979
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onCleanBufferDbRequired()V

    .line 980
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->initPrefenceValues()V

    .line 982
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    return-void
.end method

.method private startPhoneStateListener()V
    .registers 1

    .line 309
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mAmbsPhoneStateListener:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->startListen()V

    return-void
.end method

.method private stopPhoneStateListener()V
    .registers 1

    .line 313
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mAmbsPhoneStateListener:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->stopListen()V

    return-void
.end method

.method private stopProvisioningAPIs()V
    .registers 3

    .line 1172
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopProvisioningAPIs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_9
    const/4 v1, 0x4

    if-gt v0, v1, :cond_12

    .line 1174
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_12
    return-void
.end method

.method private unregisterDataSmsReceiver()V
    .registers 3

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterDataSmsReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mDataSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    if-eqz v0, :cond_14

    .line 303
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 304
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mDataSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    :cond_14
    return-void
.end method

.method private unregisterSmsReceiver()V
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    if-eqz v0, :cond_c

    .line 237
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    :cond_c
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 332
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 333
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

    .line 336
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->logCurrentWorkingStatus()V

    .line 340
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->isAMBSActive()Z

    move-result v0

    if-nez v0, :cond_2e

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2e

    return-void

    .line 344
    :cond_2e
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "non_pop_up"

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_ba

    goto/16 :goto_b9

    .line 378
    :pswitch_3a
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 379
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->RestartMenu_Disable_PrmptMsg16:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-interface {p1, v0, v1, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 381
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-interface {p0, p1, v1, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto :goto_b9

    .line 372
    :pswitch_53
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 373
    iput v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 374
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AMBS_SERVICE_DISABLE:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-interface {p0, p1, v1, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto :goto_b9

    .line 401
    :pswitch_63
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    goto :goto_b9

    .line 387
    :pswitch_66
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    if-eqz p1, :cond_b9

    .line 388
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 389
    iget p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    if-eq p1, v2, :cond_86

    .line 391
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object p1

    .line 392
    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 393
    iput v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 394
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "resume successfully"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9

    .line 396
    :cond_86
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p1, "no saved event"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9

    .line 365
    :pswitch_8e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;

    if-eqz p1, :cond_b9

    .line 367
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onProvisionAPIFail(Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;)V

    goto :goto_b9

    .line 358
    :pswitch_98
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;

    if-eqz p1, :cond_b9

    .line 361
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onProvisionAPISuccess(Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;)V

    goto :goto_b9

    .line 352
    :pswitch_a2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/UIEventParam;

    if-eqz p1, :cond_b9

    .line 354
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/UIEventParam;->mUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/UIEventParam;->mMessage:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handleUIEvent(Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;Ljava/lang/String;)V

    goto :goto_b9

    .line 346
    :pswitch_b0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    if-eqz p1, :cond_b9

    .line 348
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handleProvisionEvent(Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    :cond_b9
    :goto_b9
    return-void

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_b0
        :pswitch_a2
        :pswitch_98
        :pswitch_8e
        :pswitch_66
        :pswitch_63
        :pswitch_53
        :pswitch_3a
    .end packed-switch
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .registers 4

    .line 1272
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 1273
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .registers 4

    .line 1266
    new-instance p2, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 1267
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)V
    .registers 5

    .line 0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .registers 4

    .line 1256
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 1257
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFailedEvent(ILjava/lang/Object;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onFixedFlow(I)V
    .registers 5

    .line 1292
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object p1

    .line 1293
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

    .line 1294
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFixedFlowWithMessage(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onGoToEvent(ILjava/lang/Object;)V
    .registers 5

    .line 1221
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object p1

    .line 1222
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

    .line 1223
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMailBoxMigrationReset()V
    .registers 3

    .line 1397
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "onMailBoxMigrationReset."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onMailBoxMigrationReset()V

    return-void
.end method

.method public onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onOmaFailExceedMaxCount()V
    .registers 6

    .line 1372
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    const-string v3, "pop_up"

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 1374
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {v0, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    .line 1375
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 1376
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V
    .registers 11

    .line 1282
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

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .registers 4

    .line 1239
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 1240
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .registers 4

    .line 1232
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 1234
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public onUIButtonProceed(ILjava/lang/String;)Z
    .registers 6

    .line 318
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/UIEventParam;

    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/params/UIEventParam;-><init>(Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 320
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public pause()V
    .registers 3

    .line 1326
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    .line 1327
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public pauseService()V
    .registers 3

    .line 1331
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "pauseService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    .line 1332
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public resetDataReceiver()V
    .registers 3

    .line 1413
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reset DataSmsReceiver "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterDataSmsReceiver()V

    .line 1415
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerDataSmsReceiver()V

    return-void
.end method

.method public resume()V
    .registers 3

    .line 1321
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 1322
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V
    .registers 2

    .line 0
    return-void
.end method

.method public start()V
    .registers 4

    .line 1312
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_INITIAL_STATE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->updateDelay(IJ)Z

    return-void
.end method

.method public stop()V
    .registers 3

    .line 1336
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    .line 1337
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public update(I)Z
    .registers 5

    .line 1342
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object p1

    .line 1343
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

    .line 1344
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public updateDelay(IJ)Z
    .registers 7

    .line 1349
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object p1

    .line 1350
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

    .line 1352
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method

.method public updateDelayRetry(IJ)Z
    .registers 8

    .line 1357
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg11:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    const-string v2, "non_pop_up"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 1359
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object p1

    .line 1360
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

    .line 1362
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method

.method public updateMessage(Landroid/os/Message;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method
