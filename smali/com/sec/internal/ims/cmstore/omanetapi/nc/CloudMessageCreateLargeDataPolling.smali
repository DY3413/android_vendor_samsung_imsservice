.class public Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;
.super Lcom/sec/internal/omanetapi/nc/NotificationList;
.source "CloudMessageCreateLargeDataPolling.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final transient mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field private final transient mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIControllerCommonInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    return-object p0
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 1

    .line 33
    invoke-direct {p0, p3, p4}, Lcom/sec/internal/omanetapi/nc/NotificationList;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 26
    const-class p3, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->TAG:Ljava/lang/String;

    .line 36
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->TAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->TAG:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 38
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 39
    iget-object p2, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {p2, p4}, Lcom/sec/internal/ims/cmstore/utils/Util;->replaceUrlPrefix(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    .line 41
    iget-object p2, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object p2

    .line 42
    iget-object p3, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 43
    iget-object p3, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getContentType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 44
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/omanetapi/nc/NotificationList;->initPostRequest(Lcom/sec/internal/omanetapi/nc/data/LongPollingRequestParameters;Z)V

    .line 46
    new-instance p2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;

    invoke-direct {p2, p0, p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method
