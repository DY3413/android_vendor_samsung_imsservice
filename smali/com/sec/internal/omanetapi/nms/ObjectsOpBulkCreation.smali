.class public Lcom/sec/internal/omanetapi/nms/ObjectsOpBulkCreation;
.super Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;
.source "ObjectsOpBulkCreation.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/sec/internal/omanetapi/nms/ObjectsOpBulkCreation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/omanetapi/nms/ObjectsOpBulkCreation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 32
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nms/ObjectsOpBulkCreation;->buildAPISpecificURLFromBase()V

    return-void
.end method


# virtual methods
.method protected buildAPISpecificURLFromBase()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "objects"

    .line 71
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "operations"

    .line 72
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "bulkCreation"

    .line 73
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 75
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    .line 76
    sget-object p0, Lcom/sec/internal/omanetapi/nms/ObjectsOpBulkCreation;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initPostRequest(Lcom/sec/internal/omanetapi/nms/data/ObjectList;ZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/omanetapi/nms/data/ObjectList;",
            "Z",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 41
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    const-string v1, "Content-Type"

    const-string v2, "multipart/form-data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 44
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 52
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 53
    new-instance v1, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 56
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "form-data; name=root-fields"

    const-string v2, "application/json"

    invoke-direct {v1, p2, v2, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 61
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_1
    new-instance p1, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method
