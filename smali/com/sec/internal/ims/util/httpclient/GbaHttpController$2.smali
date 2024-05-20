.class Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;
.super Ljava/lang/Object;
.source "GbaHttpController.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->sendRequestWithAuthorization(Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

.field final synthetic val$fqdn:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

.field final synthetic val$url:Ljava/net/URL;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iput-object p2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iput-object p3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    iput-object p4, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$username:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$password:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$fqdn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 9

    if-nez p1, :cond_0

    .line 252
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onComplete: the response of 2nd time naf request build failure"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mloggingHttpMessage(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)V

    .line 257
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const v1, 0x31000001

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",<,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_8

    const/16 v1, 0xca

    if-ne v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v1, 0x191

    if-ne v0, v1, :cond_7

    .line 289
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgetLastAuthInfo(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 291
    iput-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->nextNonce:Ljava/lang/String;

    .line 292
    iput-object p1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->lastNafResult:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 293
    new-instance v1, Lcom/sec/internal/helper/httpclient/DigestAuth;

    invoke-direct {v1}, Lcom/sec/internal/helper/httpclient/DigestAuth;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->digestAuth:Lcom/sec/internal/helper/httpclient/DigestAuth;

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgetWwwAuthenticateHeader(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    move-result-object v0

    if-nez v0, :cond_3

    .line 298
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sendRequestWithAuthorization(): onComplete: missing header: WWW-Authenticate"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    new-instance p1, Ljava/io/IOException;

    const-string v0, "AuthenticateHeader null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    return-void

    .line 303
    :cond_3
    invoke-virtual {v0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->isStale()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 304
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stale is true. Reuse same username.."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    iget-object v4, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iget-object v6, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$username:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$password:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v5, p1

    invoke-static/range {v2 .. v8}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$msendRequestWithAuthorization(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 307
    :cond_4
    invoke-virtual {v0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3GPP-bootstrapping"

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 310
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Retry GBA authentication..."

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getIpVersion()I

    move-result v1

    if-lez v1, :cond_5

    .line 312
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/helper/httpclient/DnsController;

    .line 313
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/httpclient/DnsController;->setNaf(Z)V

    .line 314
    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lcom/squareup/okhttp/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 316
    :cond_5
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onComplete: 401 Unauthorized. reset GbaKey"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$fgetmGbaServiceModule(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;)Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->resetGbaKey(Ljava/lang/String;I)V

    .line 318
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$fgetmGbaServiceModule(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;)Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iget-object v3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    invoke-static {v3, p1, v2, p0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgetGbaCallback(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/net/URL;)Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;

    move-result-object p0

    invoke-interface {v1, v2, v0, p1, p0}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getBtidAndGbaKey(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;)I

    goto :goto_0

    .line 320
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTP digest without GBA"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUserName()Ljava/lang/String;

    move-result-object v5

    .line 322
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPassword()Ljava/lang/String;

    move-result-object v6

    .line 323
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    iget-object v3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$msendRequestWithAuthorization(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    .line 329
    :cond_7
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onComplete: The response status code of 2nd time naf request is not 200"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 261
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgetLastAuthInfo(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 263
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$username:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->btid:Ljava/lang/String;

    .line 264
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$password:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->gbaKey:Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v3, "Authentication-Info"

    .line 267
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_9

    .line 269
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 270
    new-instance v4, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;

    invoke-direct {v4}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;-><init>()V

    .line 271
    invoke-virtual {v4, v3}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->parseHeaderValue(Ljava/lang/String;)Lcom/sec/internal/helper/header/AuthenticationInfoHeader;

    move-result-object v3

    .line 273
    invoke-virtual {v3}, Lcom/sec/internal/helper/header/AuthenticationInfoHeader;->getNextNonce()Ljava/lang/String;

    move-result-object v3

    .line 274
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 275
    iput-object v3, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->nextNonce:Ljava/lang/String;

    :cond_9
    const-string v3, "ETag"

    .line 279
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_a

    .line 281
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 282
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 283
    iput-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->etag:Ljava/lang/String;

    .line 286
    :cond_a
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v1, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mLastAuthInfoMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_b
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 337
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Second time naf request onFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$fgetmGbaServiceModule(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;)Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$fgetmGbaServiceModule(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;)Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$fqdn:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->resetGbaKey(Ljava/lang/String;I)V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgetLastAuthInfo(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 343
    iput-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->btid:Ljava/lang/String;

    .line 344
    iput-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->gbaKey:Ljava/lang/String;

    .line 345
    iput-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->lastNafResult:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 346
    iput-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->digestAuth:Lcom/sec/internal/helper/httpclient/DigestAuth;

    .line 347
    iput-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->nextNonce:Ljava/lang/String;

    .line 348
    iput-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->LifeTime:Ljava/lang/String;

    .line 350
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    return-void
.end method
