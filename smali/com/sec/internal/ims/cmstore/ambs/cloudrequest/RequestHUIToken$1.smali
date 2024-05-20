.class Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;
.super Ljava/lang/Object;
.source "RequestHUIToken.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 7

    .line 53
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onComplete StatusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " strbody: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const-string v2, "ERR_HUITOKEN_JSON"

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_6

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string p1, "ENCOREESB."

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_3

    .line 60
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "NOT 6014"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfHUI6014Err(Z)V

    .line 62
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    const-string v2, "msToken=\""

    const-string v3, "\""

    invoke-static {p1, v0, v2, v3}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->-$$Nest$mgetParameter(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    const-string v4, "serverID=\""

    invoke-static {v2, v0, v4, v3}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->-$$Nest$mgetParameter(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    const-string v5, "redirectDomain=\""

    invoke-static {v4, v0, v5, v3}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->-$$Nest$mgetParameter(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    const-string v6, "cometRedirectDomain=\""

    invoke-static {v5, v0, v6, v3}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->-$$Nest$mgetParameter(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msToken="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", serverID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", redirectDomain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", cometRedirectDomain"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    new-instance v5, Ljava/net/HttpCookie;

    const-string v6, "MSToken"

    invoke-direct {v5, v6, p1}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->-$$Nest$fputcookieTokenInBody(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/net/HttpCookie;)V

    .line 71
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->-$$Nest$fgetcookieTokenInBody(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Ljava/net/HttpCookie;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    .line 72
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->-$$Nest$fgetcookieTokenInBody(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Ljava/net/HttpCookie;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/net/HttpCookie;->setVersion(I)V

    .line 74
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    new-instance v5, Ljava/net/HttpCookie;

    const-string v6, "SERVERID"

    invoke-direct {v5, v6, v2}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->-$$Nest$fputcookieServerIDInBody(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/net/HttpCookie;)V

    .line 75
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->-$$Nest$fgetcookieServerIDInBody(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Ljava/net/HttpCookie;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->-$$Nest$fgetcookieServerIDInBody(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Ljava/net/HttpCookie;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/net/HttpCookie;->setVersion(I)V

    .line 78
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 80
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMsgStoreSessionId(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 83
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nms value in SP ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNmsHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNmsHost(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->-$$Nest$mupdateCookie(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNmsHost(Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNcHost(Ljava/lang/String;)V

    .line 93
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$600(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getRedirectDomain()Ljava/lang/String;

    move-result-object p1

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$700(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveRedirectDomain(Ljava/lang/String;)V

    .line 95
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 96
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "redirect domain changed, need mail reset."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->MAILBOX_MIGRATION_RESET:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onGoToEvent(ILjava/lang/Object;)V

    .line 99
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$800(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    .line 100
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveLastApiRequestCreateAccount(Z)V

    .line 101
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$900(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)V

    return-void

    :cond_3
    const-string p1, "ENCOREESB.SECURITY-6014"

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$1000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfHUI6014Err(Z)V

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$1100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isLastAPIRequestCreateAccount()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Last successful API call was CreateServiceAccount"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    const-string p1, "Last_Retry_Create_Account"

    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$1200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;)V

    goto :goto_1

    .line 116
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$1300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 122
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$1400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_8

    .line 126
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1ad

    if-ne v0, v1, :cond_7

    goto :goto_2

    .line 134
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$1600(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$1500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result p1

    if-lez p1, :cond_9

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    const-string v1, "RetryAfterRule"

    invoke-interface {v0, p0, v1, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    :cond_9
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http request onFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$1700(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)V

    return-void
.end method
