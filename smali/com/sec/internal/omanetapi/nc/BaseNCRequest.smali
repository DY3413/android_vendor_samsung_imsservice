.class public abstract Lcom/sec/internal/omanetapi/nc/BaseNCRequest;
.super Lcom/sec/internal/helper/httpclient/HttpRequestParams;
.source "BaseNCRequest.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# static fields
.field private static final serialVersionUID:J = 0x6ad83d12127f8bbaL


# instance fields
.field private TAG:Ljava/lang/String;

.field protected mBaseUrl:Ljava/lang/String;

.field protected transient mNCRequestHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    .line 32
    const-class v0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->TAG:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->TAG:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 47
    iput-object p1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    .line 48
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPhoneId(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    .line 32
    const-class v0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->TAG:Ljava/lang/String;

    const-string v1, "constructor"

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iput-object p4, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->buildBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPhoneId(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method private buildBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 53
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 55
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v2

    const-string v3, "notificationchannel"

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "pubsub"

    invoke-virtual {p1, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "oma_b"

    invoke-virtual {p1, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 63
    invoke-virtual {p1, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 66
    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 67
    invoke-virtual {p1, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 69
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    .line 71
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected abstract buildAPISpecificURLFromBase()V
.end method

.method public getRetryInstance(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0

    return-object p0
.end method

.method public getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0

    .line 137
    iput-object p2, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method public getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0

    return-object p0
.end method

.method public initCommonDeleteRequest()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 122
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 123
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->DELETE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method public initCommonGetRequest()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 114
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 115
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method public initCommonPutRequest()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 130
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 131
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method public initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "application/json"

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "application/xml"

    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p1, v0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    const-string v1, "Accept"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    const-string v0, "Authorization"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEnableATTHeader()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 97
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    const-string p2, "Connection"

    const-string v0, "close"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    sget-object p2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->VERSION_NAME:Ljava/lang/String;

    const-string/jumbo v0, "x-att-clientVersion"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->getHttpClientID()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "x-att-clientId"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    sget-object p2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->BUILD_INFO:Ljava/lang/String;

    const-string/jumbo v0, "x-att-contextInfo"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "x-att-deviceId"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public shouldCareAfterResponsePreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z
    .locals 8

    .line 155
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 156
    invoke-interface/range {v1 .. v7}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldCareAfterPreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z

    move-result p0

    return p0
.end method

.method public updateServerRoot(Ljava/lang/String;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->replaceHostOfURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    .line 165
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method
