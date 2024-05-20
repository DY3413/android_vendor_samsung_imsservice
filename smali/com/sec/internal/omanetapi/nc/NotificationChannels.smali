.class public Lcom/sec/internal/omanetapi/nc/NotificationChannels;
.super Lcom/sec/internal/omanetapi/nc/BaseNCRequest;
.source "NotificationChannels.java"


# static fields
.field private static final serialVersionUID:J = 0x26a584f1b25ae844L


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 25
    const-class p1, Lcom/sec/internal/omanetapi/nc/NotificationChannels;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/omanetapi/nc/NotificationChannels;->TAG:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nc/NotificationChannels;->buildAPISpecificURLFromBase()V

    return-void
.end method


# virtual methods
.method protected buildAPISpecificURLFromBase()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "channels"

    .line 67
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 69
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    .line 71
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/NotificationChannels;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initPostRequest(Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;Z)V
    .locals 4

    .line 37
    const-class v0, Lcom/sec/internal/omanetapi/nc/data/ChannelData;

    new-instance v1, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NotificationChannels;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NotificationChannels;-><init>()V

    .line 40
    iget-object v2, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 41
    sget-object v2, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    if-eqz p2, :cond_0

    .line 46
    iget-object p2, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object p2, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 50
    new-instance p2, Lcom/google/gson/GsonBuilder;

    invoke-direct {p2}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 51
    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/GsonInterfaceAdapter;

    invoke-direct {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/GsonInterfaceAdapter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p2, v0, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 53
    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p2

    .line 54
    iput-object p1, v1, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NotificationChannels;->notificationChannel:Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;

    .line 55
    new-instance p1, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-virtual {p2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    :cond_1
    return-void
.end method
