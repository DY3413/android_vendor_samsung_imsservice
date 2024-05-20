.class public Lcom/sec/internal/omanetapi/nms/BulkUpdating;
.super Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;
.source "BulkUpdating.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient mBulkupdate:Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sec/internal/omanetapi/nms/BulkUpdating;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/omanetapi/nms/BulkUpdating;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 25
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nms/BulkUpdating;->buildAPISpecificURLFromBase()V

    return-void
.end method


# virtual methods
.method protected buildAPISpecificURLFromBase()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "objects"

    .line 61
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "operations"

    .line 62
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "bulkUpdate"

    .line 63
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 64
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    .line 65
    sget-object p0, Lcom/sec/internal/omanetapi/nms/BulkUpdating;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getBulkUpdateParam()Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BulkUpdating;->mBulkupdate:Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;

    return-object p0
.end method

.method public initBulkUpdateRequest(Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;Z)V
    .locals 2

    .line 30
    new-instance v0, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$BulkUpdateRequest;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$BulkUpdateRequest;-><init>()V

    .line 31
    iput-object p1, v0, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$BulkUpdateRequest;->bulkUpdate:Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;

    .line 32
    iput-object p1, p0, Lcom/sec/internal/omanetapi/nms/BulkUpdating;->mBulkupdate:Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;

    .line 34
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 35
    sget-object p1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    if-eqz p2, :cond_0

    .line 40
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    const-string p2, "Content-Type"

    const-string v1, "application/json"

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 44
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    .line 45
    new-instance p2, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 50
    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    :cond_1
    return-void
.end method
