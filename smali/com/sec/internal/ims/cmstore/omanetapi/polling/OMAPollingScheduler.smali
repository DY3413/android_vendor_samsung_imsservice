.class public Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;
.super Landroid/os/Handler;
.source "OMAPollingScheduler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;


# static fields
.field public static final POLLING_TIME_OUT:J = 0x57e40L


# instance fields
.field private final NO_RETRY_AFTER_VALUE:I

.field public TAG:Ljava/lang/String;

.field private mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

.field private mIsCreateSubscriptionRunning:Z

.field private mIsOnePollingRunning:Z

.field private mIsPollingNonStopRunning:Z

.field private mIsPollingStarted:Z

.field private mIsSchedulerRunning:Z

.field private final mLine:Ljava/lang/String;

.field private mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

.field private mSchedulerHelper:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

.field private mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field private final mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    const-class p1, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getInstance()Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    const/4 p1, -0x1

    .line 49
    iput p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->NO_RETRY_AFTER_VALUE:I

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mSchedulerHelper:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    .line 54
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingStarted:Z

    .line 57
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    .line 58
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsOnePollingRunning:Z

    .line 59
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingNonStopRunning:Z

    .line 60
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsCreateSubscriptionRunning:Z

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 68
    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mLine:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    .line 70
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    .line 71
    invoke-static {p4}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->update(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    return-void
.end method

.method private apiShouldMoveOn()Z
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getLastFailedApi()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apiShouldMoveOn lastFailedApi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-class p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private checkAndUpdateSubscriptionChannel()V
    .locals 4

    .line 438
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->update(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 439
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 441
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mSchedulerHelper:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->isSubscriptionChannelGoingExpired(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingNonStopRunning:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 445
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LONG_POLLING_REQUEST:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 443
    :cond_2
    :goto_0
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method

.method private gotoHandlerEvent(ILjava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 273
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method private gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result v0

    .line 281
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gotoHandlerEventOnFailure isRetryEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    const/4 v1, -0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onFallbackToProvision(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V

    const/4 p1, 0x0

    .line 285
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsOnePollingRunning:Z

    .line 286
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    .line 287
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingNonStopRunning:Z

    .line 288
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsCreateSubscriptionRunning:Z

    goto :goto_0

    .line 290
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_RETRIVED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method private declared-synchronized onApiTreatAsSucceed(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 2

    monitor-enter p0

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 325
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 326
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getControllerOfLastFailedApi()Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->apiShouldMoveOn()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;

    .line 327
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 328
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOnApiSucceedOnceListenerList.size() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    if-eqz v0, :cond_1

    .line 331
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;->onMoveOn()V

    goto :goto_0

    .line 334
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private shouldSendPollRequest()Z
    .locals 1

    .line 450
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsOnePollingRunning:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mSchedulerHelper:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    if-nez v0, :cond_0

    .line 77
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->getInstance(Landroid/os/Handler;)Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mSchedulerHelper:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    .line 79
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->logWorkingStatus()V

    if-nez v0, :cond_1

    .line 85
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 88
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 263
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->pause()V

    .line 264
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mSchedulerHelper:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->deleteNotificationSubscriptionResource(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    goto/16 :goto_1

    .line 254
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 255
    check-cast p1, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    .line 256
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mApi:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->onApiTreatAsSucceed(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 257
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_SUBSCRIPTION_AND_START_LONG_POLLING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 258
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mBufDbParams:Ljava/lang/Object;

    .line 257
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 248
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 249
    check-cast p1, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 250
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->onApiTreatAsSucceed(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    goto/16 :goto_1

    .line 245
    :pswitch_3
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsCreateSubscriptionRunning:Z

    goto/16 :goto_1

    .line 242
    :pswitch_4
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsOnePollingRunning:Z

    goto/16 :goto_1

    .line 238
    :pswitch_5
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    const-string v0, "pop_up"

    invoke-interface {p0, p1, v0, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto/16 :goto_1

    .line 235
    :pswitch_6
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onPauseCMNNetApiWithResumeDelay(I)V

    goto/16 :goto_1

    .line 222
    :pswitch_7
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsOnePollingRunning:Z

    .line 223
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    .line 224
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingNonStopRunning:Z

    .line 225
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsCreateSubscriptionRunning:Z

    .line 226
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mLine:Ljava/lang/String;

    .line 227
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 229
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_2

    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_2

    .line 230
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 232
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {p0, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaAuthenticationFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V

    goto/16 :goto_1

    .line 212
    :pswitch_8
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSTORE_REDIRECT mIsSchedulerRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    if-eqz v0, :cond_8

    .line 214
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 215
    check-cast p1, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReExecute API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " after 302 by using new url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_1

    .line 207
    :pswitch_9
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 208
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onCloudObjectNotificationUpdated(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_1

    .line 202
    :pswitch_a
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->MAILBOX_RESET:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 203
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    .line 202
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onCloudSyncStopped(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_1

    .line 193
    :pswitch_b
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->update(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 194
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionResUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 195
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v6, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 197
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASSubscriptionRestartToken()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 198
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionResUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v0, v6

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 195
    invoke-virtual {p1, v6}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_1

    .line 176
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;

    if-eqz v0, :cond_3

    .line 177
    check-cast p1, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;

    .line 178
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->channelUrl:Ljava/lang/String;

    .line 179
    iget-boolean v3, p1, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->isNeedRecreateChannel:Z

    goto :goto_0

    .line 181
    :cond_3
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :goto_0
    move v7, v3

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 184
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v9, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;

    const-string v3, "/"

    .line 186
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 184
    invoke-virtual {p1, v9}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 187
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelResURL(Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMACallBackURL(Ljava/lang/String;)V

    .line 189
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelURL(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 169
    :pswitch_d
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v2, p0, p1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 171
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionResUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 152
    :pswitch_e
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SEND_LONG_POLLING_REQUEST mIsSchedulerRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    if-eqz p1, :cond_4

    .line 154
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsOnePollingRunning:Z

    if-nez p1, :cond_8

    .line 155
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsOnePollingRunning:Z

    .line 156
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingNonStopRunning:Z

    .line 157
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLongPolling;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 158
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelURL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {p1, p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLongPolling;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    const-wide/32 v0, 0x57e40

    .line 159
    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setReadTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 160
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_1

    .line 163
    :cond_4
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsOnePollingRunning:Z

    .line 164
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingNonStopRunning:Z

    .line 165
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsCreateSubscriptionRunning:Z

    goto/16 :goto_1

    .line 140
    :pswitch_f
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsCreateSubscriptionRunning:Z

    if-nez p1, :cond_8

    .line 141
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->update(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 142
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNotifyURL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getNotifyURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getNotifyURL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 144
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsCreateSubscriptionRunning:Z

    .line 145
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object p1

    new-instance v7, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    .line 146
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getNotifyURL()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getRestartToken()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 145
    invoke-virtual {p1, v7}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_1

    .line 135
    :pswitch_10
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->shouldSendPollRequest()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 136
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->checkAndUpdateSubscriptionChannel()V

    goto/16 :goto_1

    .line 131
    :pswitch_11
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v0, p0, p0, v2, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_1

    .line 119
    :pswitch_12
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelResURL()Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resUrl: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x2f

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, p0, p0, p1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_1

    .line 127
    :cond_5
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 115
    :pswitch_13
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    .line 116
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingNonStopRunning:Z

    goto :goto_1

    .line 111
    :pswitch_14
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    .line 112
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingStarted:Z

    goto :goto_1

    .line 99
    :pswitch_15
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    if-nez p1, :cond_7

    .line 100
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    .line 101
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->shouldSendPollRequest()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 102
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 104
    :cond_6
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingNonStopRunning:Z

    goto :goto_1

    .line 107
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    const-string p1, "already running"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 93
    :pswitch_16
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingStarted:Z

    .line 94
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->shouldSendPollRequest()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 95
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected logWorkingStatus()V
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mLine:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " logWorkingStatus: [mIsPollingStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsSchedulerRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsPollingRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsOnePollingRunning:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 388
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 0

    .line 383
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)V
    .locals 0

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFailedEvent(ILjava/lang/Object;)V
    .locals 0

    .line 393
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public onFixedFlow(I)V
    .locals 0

    return-void
.end method

.method public onFixedFlowWithMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public onGoToEvent(ILjava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 317
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 1

    .line 352
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    .line 353
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->MOVE_ON:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V
    .locals 0

    .line 398
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 400
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {p2, p0, p1, p3}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onFallbackToProvision(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V

    goto :goto_0

    .line 402
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_RETRIVED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 2

    .line 363
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    .line 364
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->MOVE_ON:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 0

    .line 358
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->API_SUCCEED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V
    .locals 1

    .line 369
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->API_SUCCEED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    .line 370
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 302
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->PAUSE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public resume()V
    .locals 1

    .line 307
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESUME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public declared-synchronized setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 462
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    const-string v0, "listener == null, onOmaApiCredentialFailed, clear mOnApiSucceedOnceListenerList"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public start()V
    .locals 1

    .line 295
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->START:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 311
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->STOP:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public update(I)Z
    .locals 0

    .line 416
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public updateDelay(IJ)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateDelayRetry(IJ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateMessage(Landroid/os/Message;)Z
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
