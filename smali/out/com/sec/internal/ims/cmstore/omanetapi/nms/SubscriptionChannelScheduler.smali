.class public Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;
.super Lcom/sec/internal/helper/StateMachine;
.source "SubscriptionChannelScheduler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$DefaultState;,
        Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribingState;,
        Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;,
        Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$LargePollingState;
    }
.end annotation


# static fields
.field private static final INTENT_ACTION_RETRY_SUBSCRIPTION_FAILED_API:Ljava/lang/String; = "com.samsung.ims.mcs.ACTION_RETRY_SUBSCRIPTION_FAILED_API"


# instance fields
.field private final NO_RETRY_AFTER_VALUE:I

.field public TAG:Ljava/lang/String;

.field private isDelaySubscriptionUpdateInProgress:Z

.field private mContext:Landroid/content/Context;

.field mDefaultState:Lcom/sec/internal/helper/State;

.field private mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

.field mLargePollingState:Lcom/sec/internal/helper/State;

.field private mLine:Ljava/lang/String;

.field private mPhoneId:I

.field private final mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

.field private mRetryIntent:Landroid/app/PendingIntent;

.field private mSchedulerHelper:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

.field mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field mSubscribedState:Lcom/sec/internal/helper/State;

.field mSubscribingState:Lcom/sec/internal/helper/State;


# direct methods
.method static bridge synthetic -$$Nest$fgetisDelaySubscriptionUpdateInProgress(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->isDelaySubscriptionUpdateInProgress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmINetAPIEventListener(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLine(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mLine:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisDelaySubscriptionUpdateInProgress(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->isDelaySubscriptionUpdateInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndUpdateSubscriptionChannel(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->checkAndUpdateSubscriptionChannel()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .registers 6

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubscriptionChannelScheduler["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 41
    const-class p1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->TAG:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getInstance()Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    .line 47
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$DefaultState;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$DefaultState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$DefaultState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mDefaultState:Lcom/sec/internal/helper/State;

    .line 48
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribingState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribingState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribingState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mSubscribingState:Lcom/sec/internal/helper/State;

    .line 49
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mSubscribedState:Lcom/sec/internal/helper/State;

    .line 50
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$LargePollingState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$LargePollingState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$LargePollingState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mLargePollingState:Lcom/sec/internal/helper/State;

    .line 51
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    .line 55
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mSchedulerHelper:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->isDelaySubscriptionUpdateInProgress:Z

    const/4 p1, -0x1

    .line 58
    iput p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->NO_RETRY_AFTER_VALUE:I

    .line 62
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 63
    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mPhoneId:I

    .line 64
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mContext:Landroid/content/Context;

    .line 65
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mLine:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    .line 67
    invoke-static {p3}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->update(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 68
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->getInstance(Landroid/os/Handler;)Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mSchedulerHelper:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    .line 70
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->initStates()V

    .line 71
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->registerLargePollingNotificationListener()V

    .line 72
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.samsung.ims.mcs.ACTION_RETRY_SUBSCRIPTION_FAILED_API"

    .line 73
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mContext:Landroid/content/Context;

    new-instance p3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$1;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)V

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private checkAndUpdateSubscriptionChannel()V
    .registers 5

    .line 516
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->update(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 517
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    .line 519
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_32

    .line 520
    :cond_1f
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mSchedulerHelper:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->isSubscriptionChannelGoingExpired(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 521
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_32
    :goto_32
    return-void
.end method

.method private gotoHandlerEvent(ILjava/lang/Object;)V
    .registers 3

    if-eqz p2, :cond_a

    .line 407
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_d

    .line 409
    :cond_a
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_d
    return-void
.end method

.method private gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .registers 5

    .line 399
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoHandlerEventOnFailure isRetryEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 401
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    const/4 v1, -0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onFallbackToProvision(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V

    :cond_3a
    return-void
.end method

.method private initStates()V
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mSubscribingState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mSubscribedState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mSubscribingState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mLargePollingState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mSubscribedState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 145
    invoke-super {p0}, Lcom/sec/internal/helper/StateMachine;->start()V

    return-void
.end method

.method private registerLargePollingNotificationListener()V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$2;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)V

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->setMcsFcmPushNotificationListener(Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;)V

    return-void
.end method


# virtual methods
.method InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;
    .registers 2

    .line 149
    iget p0, p1, Landroid/os/Message;->what:I

    invoke-static {p0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p0

    if-nez p0, :cond_a

    .line 151
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    :cond_a
    return-object p0
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .registers 2

    .line 386
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .registers 3

    .line 376
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)V
    .registers 5

    .line 0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onFailedEvent(ILjava/lang/Object;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onFixedFlow(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onFixedFlowWithMessage(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onGoToEvent(ILjava/lang/Object;)V
    .registers 3

    if-eqz p2, :cond_a

    .line 421
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_d

    .line 423
    :cond_a
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_d
    return-void
.end method

.method public onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V
    .registers 7

    .line 429
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 430
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " OnOverRequest : request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  retryAfter "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long p2, p3

    .line 431
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->updateDelayRetryRequest(Ljava/lang/String;J)V

    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V
    .registers 4

    .line 366
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .registers 2

    .line 469
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->PAUSE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public resume()V
    .registers 2

    .line 474
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESUME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V
    .registers 2

    .line 0
    return-void
.end method

.method public start()V
    .registers 2

    .line 464
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->START:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public stop()V
    .registers 2

    .line 479
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->STOP:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public update(I)Z
    .registers 4

    .line 484
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->REMOVE_UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_13

    .line 485
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL_DELAY:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    return v1

    .line 488
    :cond_13
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return v1
.end method

.method public updateDelay(IJ)Z
    .registers 4

    .line 500
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateDelayRetry(IJ)Z
    .registers 4

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public updateDelayRetryRequest(Ljava/lang/String;J)V
    .registers 7

    .line 440
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mRetryIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_c

    .line 441
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 442
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mRetryIntent:Landroid/app/PendingIntent;

    .line 444
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.ims.mcs.ACTION_RETRY_SUBSCRIPTION_FAILED_API"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phoneId"

    .line 446
    iget v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "apiName"

    .line 447
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mContext:Landroid/content/Context;

    const/high16 v1, 0x2000000

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mRetryIntent:Landroid/app/PendingIntent;

    .line 449
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3, v2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;JZ)V

    return-void
.end method

.method public updateMessage(Landroid/os/Message;)Z
    .registers 2

    .line 494
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0
.end method
