.class public Lcom/sec/internal/omanetapi/nms/FoldersOpMoveToFolder;
.super Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;
.source "FoldersOpMoveToFolder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/sec/internal/omanetapi/nms/FoldersOpMoveToFolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/omanetapi/nms/FoldersOpMoveToFolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 30
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nms/FoldersOpMoveToFolder;->buildAPISpecificURLFromBase()V

    return-void
.end method


# virtual methods
.method protected buildAPISpecificURLFromBase()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "folders"

    .line 58
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "operations"

    .line 59
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "moveToFolder"

    .line 60
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 61
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    .line 62
    sget-object p0, Lcom/sec/internal/omanetapi/nms/FoldersOpMoveToFolder;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initPostRequest(Lcom/sec/internal/omanetapi/nms/data/TargetSourceRef;Z)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 37
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    if-eqz p2, :cond_0

    .line 42
    iget-object p2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object p2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mNMSRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 45
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 46
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    :cond_1
    return-void
.end method
