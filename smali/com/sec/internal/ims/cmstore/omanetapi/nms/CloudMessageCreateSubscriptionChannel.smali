.class public Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;
.super Lcom/sec/internal/omanetapi/nms/AllSubscriptions;
.source "CloudMessageCreateSubscriptionChannel.java"


# static fields
.field private static final serialVersionUID:J = 0x305925178bd56ab4L


# instance fields
.field private TAG:Ljava/lang/String;

.field private final transient mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIControllerCommonInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    return-object p0
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 7

    .line 37
    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getNcHost()Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getStoreName()Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v6, p6

    .line 37
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/omanetapi/nms/AllSubscriptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 30
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p6

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, "]"

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->TAG:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 44
    new-instance p4, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;

    invoke-direct {p4}, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;-><init>()V

    .line 46
    new-instance p6, Lcom/sec/internal/omanetapi/common/data/CallbackReference;

    invoke-direct {p6}, Lcom/sec/internal/omanetapi/common/data/CallbackReference;-><init>()V

    .line 48
    iput-object p2, p6, Lcom/sec/internal/omanetapi/common/data/CallbackReference;->notifyURL:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "custom_data"

    .line 50
    iput-object v0, p6, Lcom/sec/internal/omanetapi/common/data/CallbackReference;->callbackData:Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getNotificaitonFormat()Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    move-result-object v0

    iput-object v0, p6, Lcom/sec/internal/omanetapi/common/data/CallbackReference;->notificationFormat:Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    .line 55
    :goto_0
    iput-object p6, p4, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;->callbackReference:Lcom/sec/internal/omanetapi/common/data/CallbackReference;

    const p6, 0x15180

    .line 56
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    iput-object p6, p4, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;->duration:Ljava/lang/Integer;

    const-string p6, ""

    .line 57
    iput-object p6, p4, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;->clientCorrelator:Ljava/lang/String;

    .line 58
    iput-object p3, p4, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;->restartToken:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyURL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " request restartToken "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isGcmReplacePolling: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " needPresetSearchRemove"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    if-nez p5, :cond_1

    .line 63
    new-instance p2, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    invoke-direct {p2}, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;-><init>()V

    new-array p5, p3, [Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    const/4 v0, 0x0

    .line 65
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;-><init>()V

    aput-object v1, p5, v0

    const-string v0, "PresetSearch"

    .line 66
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->type:Ljava/lang/String;

    const-string v0, "UPOneDotO"

    .line 67
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->name:Ljava/lang/String;

    .line 68
    iput-object p6, v1, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->value:Ljava/lang/String;

    .line 69
    iput-object p5, p2, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;->criterion:[Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    .line 70
    iput-object p2, p4, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;->filter:Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    .line 74
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object p2

    .line 75
    iget-object p5, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5, p2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 77
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 78
    iget-object p5, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getContentType()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5, p2}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->initSubscribeRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_2
    iget-object p5, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getContentType()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5, p2}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_1
    invoke-virtual {p0, p4, p3}, Lcom/sec/internal/omanetapi/nms/AllSubscriptions;->initPostRequest(Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;Z)V

    .line 84
    new-instance p2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;

    invoke-direct {p2, p0, p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->handleUnAuthorized(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method
