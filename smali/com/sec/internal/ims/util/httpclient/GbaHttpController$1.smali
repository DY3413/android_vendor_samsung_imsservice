.class Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;
.super Ljava/lang/Object;
.source "GbaHttpController.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

.field final synthetic val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/net/URL;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iput-object p2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iput-object p3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$url:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 8

    if-nez p1, :cond_0

    .line 105
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "execute(): onComplete: response build failure"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    new-instance p1, Ljava/io/IOException;

    const-string v0, "okhttp response build failure"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mloggingHttpMessage(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)V

    .line 111
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const v1, 0x31000001

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",<,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/16 v1, 0x191

    if-ne v0, v1, :cond_5

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-static {v0, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$museGba(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v0

    invoke-static {v1, v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$smisNeedCSFB(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Special case: TIM operator requires CSFB for 401."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x193

    .line 117
    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setStatusCode(I)V

    .line 118
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mstoreLastAuthInfo(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgetWwwAuthenticateHeader(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    move-result-object v0

    if-nez v0, :cond_2

    .line 126
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "execute(): onComplete: missing header: WWW-Authenticate"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    return-void

    .line 130
    :cond_2
    invoke-virtual {v0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3GPP-bootstrapping"

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 133
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getIpVersion()I

    move-result v1

    if-lez v1, :cond_3

    .line 134
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/helper/httpclient/DnsController;

    const/4 v2, 0x0

    .line 135
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/httpclient/DnsController;->setNaf(Z)V

    .line 136
    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lcom/squareup/okhttp/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 138
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getGbaServiceModule()Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$fputmGbaServiceModule(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;)V

    .line 139
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$fgetmGbaServiceModule(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;)Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iget-object v3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$url:Ljava/net/URL;

    invoke-static {v3, p1, v2, p0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgetGbaCallback(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/net/URL;)Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;

    move-result-object p0

    invoke-interface {v1, v2, v0, p1, p0}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getBtidAndGbaKey(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;)I

    goto :goto_0

    .line 141
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTP digest without GBA"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUserName()Ljava/lang/String;

    move-result-object v5

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPassword()Ljava/lang/String;

    move-result-object v6

    .line 144
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$url:Ljava/net/URL;

    iget-object v3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$msendRequestWithAuthorization(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 147
    :cond_5
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NO GBA process"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    :goto_0
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x31000009

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 155
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    return-void
.end method
