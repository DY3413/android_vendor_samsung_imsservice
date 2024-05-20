.class public Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;
.super Lcom/sec/internal/omanetapi/nc/BaseNCRequest;
.source "IndividualNotificationChannel.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x659b47a552e8d881L


# instance fields
.field private final mChannelId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    const-string p1, ""

    .line 43
    iput-object p1, p0, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->mChannelId:Ljava/lang/String;

    .line 44
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "channels"

    .line 45
    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 46
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    .line 47
    sget-object p0, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 37
    iput-object p4, p0, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->mChannelId:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->buildAPISpecificURLFromBase()V

    return-void
.end method


# virtual methods
.method protected buildAPISpecificURLFromBase()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "channels"

    .line 91
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->mChannelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 93
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    .line 95
    sget-object p0, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getRetryInstance(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0

    return-object p0
.end method

.method public initDeleteRequest()V
    .locals 0

    .line 55
    invoke-super {p0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->initCommonDeleteRequest()V

    return-void
.end method

.method public initGetRequest()V
    .locals 0

    .line 51
    invoke-super {p0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->initCommonGetRequest()V

    return-void
.end method

.method public initPutRequest(Lcom/sec/internal/omanetapi/nc/data/NotificationChannelLifetime;Z)V
    .locals 2

    .line 59
    invoke-super {p0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->initCommonPutRequest()V

    if-eqz p2, :cond_0

    .line 63
    iget-object p2, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p2, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 75
    new-instance p2, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NotificationChannelLifetimeRequest;

    invoke-direct {p2}, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NotificationChannelLifetimeRequest;-><init>()V

    .line 77
    iput-object p1, p2, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NotificationChannelLifetimeRequest;->notificationChannelLifetime:Lcom/sec/internal/omanetapi/nc/data/NotificationChannelLifetime;

    .line 78
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 79
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    :cond_1
    return-void
.end method
