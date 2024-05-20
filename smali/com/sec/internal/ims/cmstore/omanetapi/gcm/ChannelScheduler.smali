.class public Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;
.super Lcom/sec/internal/helper/StateMachine;
.source "ChannelScheduler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LargePollingState;,
        Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LongPollingState;,
        Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;,
        Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribingState;,
        Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;,
        Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatingState;,
        Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCheckingState;,
        Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;
    }
.end annotation


# static fields
.field private static final STATE_EXPIRED:I = 0x2

.field private static final STATE_GOING_EXPIRED:I = 0x1

.field private static final STATE_NOT_EXPIRED:I


# instance fields
.field private final NO_RETRY_AFTER_VALUE:I

.field public TAG:Ljava/lang/String;

.field mChannelCheckingState:Lcom/sec/internal/helper/State;

.field mChannelCreatedState:Lcom/sec/internal/helper/State;

.field mChannelCreatingState:Lcom/sec/internal/helper/State;

.field mDefaultState:Lcom/sec/internal/helper/State;

.field private mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

.field mLargePollingState:Lcom/sec/internal/helper/State;

.field private mLine:Ljava/lang/String;

.field mLongPollingState:Lcom/sec/internal/helper/State;

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

.field mSubscribedState:Lcom/sec/internal/helper/State;

.field mSubscribingState:Lcom/sec/internal/helper/State;

.field private final mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmINetAPIEventListener(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLine(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mLine:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSchedulerHelper(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mSchedulerHelper:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIInterface(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckAndUpdateSubscriptionChannel(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->checkAndUpdateSubscriptionChannel()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgotoHandlerEvent(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misNotificationChannelGoingExpired(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->isNotificationChannelGoingExpired()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monApiTreatAsSucceed(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->onApiTreatAsSucceed(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChannelScheduler["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 49
    const-class p1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->TAG:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getInstance()Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    const/4 p1, -0x1

    .line 56
    iput p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->NO_RETRY_AFTER_VALUE:I

    .line 57
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mDefaultState:Lcom/sec/internal/helper/State;

    .line 58
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCheckingState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCheckingState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCheckingState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mChannelCheckingState:Lcom/sec/internal/helper/State;

    .line 59
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatingState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatingState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatingState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mChannelCreatingState:Lcom/sec/internal/helper/State;

    .line 60
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mChannelCreatedState:Lcom/sec/internal/helper/State;

    .line 61
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribingState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribingState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribingState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mSubscribingState:Lcom/sec/internal/helper/State;

    .line 62
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mSubscribedState:Lcom/sec/internal/helper/State;

    .line 63
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LongPollingState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LongPollingState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LongPollingState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mLongPollingState:Lcom/sec/internal/helper/State;

    .line 64
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LargePollingState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LargePollingState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LargePollingState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mLargePollingState:Lcom/sec/internal/helper/State;

    .line 65
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mSchedulerHelper:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    .line 68
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->TAG:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 76
    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mLine:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    .line 78
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    .line 79
    invoke-static {p4}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->update(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 80
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->getInstance(Landroid/os/Handler;)Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mSchedulerHelper:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    .line 81
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->initStates()V

    return-void
.end method

.method private apiShouldMoveOn()Z
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getLastFailedApi()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apiShouldMoveOn lastFailedApi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 179
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

    .line 284
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->update(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 285
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 287
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mSchedulerHelper:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->isSubscriptionChannelGoingExpired(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 296
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LONG_POLLING_REQUEST:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private gotoHandlerEvent(ILjava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_0
    return-void
.end method

.method private gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gotoHandlerEventOnFailure isRetryEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    const/4 v1, -0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onFallbackToProvision(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V

    .line 121
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESET_STATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 122
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->clear()V

    goto :goto_0

    .line 124
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_RETRIVED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_0
    return-void
.end method

.method private initStates()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mChannelCheckingState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mChannelCreatingState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mChannelCheckingState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 96
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mChannelCreatedState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mChannelCreatingState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mSubscribingState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mChannelCreatedState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mSubscribedState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mSubscribingState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 99
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mLargePollingState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mSubscribedState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mLongPollingState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mSubscribedState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 105
    invoke-super {p0}, Lcom/sec/internal/helper/StateMachine;->start()V

    return-void
.end method

.method private isNotificationChannelGoingExpired()I
    .locals 6

    .line 323
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelCreateTime()J

    move-result-wide v0

    .line 324
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelLifeTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v0, v2

    sub-long/2addr v0, v4

    .line 327
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNotificationChannelGoingExpired remainingTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const-wide/32 v2, 0xdbba0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 p0, 0x1

    return p0

    .line 335
    :cond_1
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_NOTIFICATIONCHANNEL_LIFETIME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/helper/StateMachine;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 336
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    sub-long/2addr v0, v2

    invoke-virtual {p0, v4, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->updateDelay(IJ)Z

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private declared-synchronized onApiTreatAsSucceed(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 2

    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 161
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 162
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getControllerOfLastFailedApi()Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->apiShouldMoveOn()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 164
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOnApiSucceedOnceListenerList.size() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;

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

    .line 167
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;->onMoveOn()V

    goto :goto_0

    .line 170
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;
    .locals 0

    .line 85
    iget p0, p1, Landroid/os/Message;->what:I

    invoke-static {p0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p0

    if-nez p0, :cond_0

    .line 87
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    :cond_0
    return-object p0
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 0

    .line 219
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

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

    .line 229
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

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

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_0
    return-void
.end method

.method public onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 1

    .line 188
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    .line 189
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->MOVE_ON:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V
    .locals 0

    .line 234
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 236
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {p2, p0, p1, p3}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onFallbackToProvision(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V

    goto :goto_0

    .line 238
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_RETRIVED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 2

    .line 199
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    .line 200
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->MOVE_ON:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 0

    .line 194
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->API_SUCCEED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V
    .locals 1

    .line 205
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->API_SUCCEED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    .line 206
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 137
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->PAUSE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 142
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESUME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public declared-synchronized setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 305
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->TAG:Ljava/lang/String;

    const-string v0, "listener == null, onOmaApiCredentialFailed, clear mOnApiSucceedOnceListenerList"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
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

    .line 130
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->START:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 147
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->STOP:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public update(I)Z
    .locals 2

    .line 252
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->REMOVE_UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 253
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL_DELAY:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    return v1

    .line 256
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return v1
.end method

.method public updateDelay(IJ)Z
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " delayed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 266
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

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

    .line 278
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateNotificationChannnelLifeTime()V
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelResURL()Ljava/lang/String;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNotificationChannnelLifeTime resUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2f

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v2, p0, p0, v0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    :cond_0
    return-void
.end method
