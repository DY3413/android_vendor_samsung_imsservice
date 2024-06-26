.class public Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;
.super Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;
.source "McsGetNotificationChannelInfo.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

.field private final mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field private final mPhoneId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->mPhoneId:I

    return p0
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .registers 11

    .line 32
    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOasisServerRoot()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 24
    const-class p2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->TAG:Ljava/lang/String;

    .line 34
    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p2

    iput p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->mPhoneId:I

    .line 35
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->TAG:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->TAG:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 37
    iput-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 39
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 40
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getAuthorizationBearer()Ljava/lang/String;

    move-result-object p1

    const-string p2, "application/json"

    .line 39
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->initMcsCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->initGetRequest()V

    .line 43
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I
    .registers 2

    .line 23
    invoke-virtual {p0, p1}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->checkRetryAfter(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method
