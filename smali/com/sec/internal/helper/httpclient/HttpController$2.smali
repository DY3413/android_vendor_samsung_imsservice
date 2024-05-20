.class Lcom/sec/internal/helper/httpclient/HttpController$2;
.super Ljava/lang/Object;
.source "HttpController.java"

# interfaces
.implements Lcom/squareup/okhttp/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/helper/httpclient/HttpController;

.field final synthetic val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

.field final synthetic val$signature:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/httpclient/HttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->this$0:Lcom/sec/internal/helper/httpclient/HttpController;

    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$signature:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V
    .locals 3

    .line 415
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$signature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Reason: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 415
    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    return-void
.end method

.method public onResponse(Lcom/squareup/okhttp/Response;)V
    .locals 5

    .line 386
    invoke-static {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseBuilder;->buildResponse(Lcom/squareup/okhttp/Response;)Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 388
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    new-instance p1, Ljava/io/IOException;

    const-string v0, "okhttp response build failure"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    return-void

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseTls()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->handshake()Lcom/squareup/okhttp/Handshake;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 393
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->handshake()Lcom/squareup/okhttp/Handshake;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/internal/ims/gba/GbaUtility;->convertCipherSuite(Ljava/lang/String;Z)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setCipherSuite([B)V

    .line 397
    :cond_1
    const-class p1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-class p1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    .line 398
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 401
    :cond_2
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 399
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->toStringWoPayload()Ljava/lang/String;

    move-result-object p1

    .line 404
    :goto_1
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$signature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->this$0:Lcom/sec/internal/helper/httpclient/HttpController;

    iget-object v2, v1, Lcom/sec/internal/helper/httpclient/HttpController;->req:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " RESPONSE [ code "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ] "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/sec/internal/helper/httpclient/HttpController;->req:Ljava/lang/String;

    .line 406
    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result p1

    const/4 v1, 0x2

    if-ge p1, v1, :cond_4

    .line 407
    sget-object p1, Lcom/sec/internal/helper/httpclient/HttpController;->queue_sim:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/helper/CircularQueue;

    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->this$0:Lcom/sec/internal/helper/httpclient/HttpController;

    iget-object v1, v1, Lcom/sec/internal/helper/httpclient/HttpController;->req:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/helper/CircularQueue;->add(Ljava/lang/Object;)V

    .line 409
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->this$0:Lcom/sec/internal/helper/httpclient/HttpController;

    const-string v1, ""

    iput-object v1, p1, Lcom/sec/internal/helper/httpclient/HttpController;->req:Ljava/lang/String;

    .line 410
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    return-void
.end method
