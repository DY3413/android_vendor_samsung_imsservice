.class Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD$1;
.super Ljava/lang/Object;
.source "RequestGetSD.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .registers 8

    .line 35
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    .line 37
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resultCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "strbody: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_5e

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 40
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goSuccessfulCall(Ljava/lang/Object;)V

    goto :goto_81

    .line 41
    :cond_5e
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->isErrorCodeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 42
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->checkRetryAfter(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result p1

    if-lez p1, :cond_81

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    goto :goto_81

    .line 47
    :cond_7c
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    :cond_81
    :goto_81
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .registers 6

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http request onFail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 54
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetSD;

    const/16 p1, 0x322

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    return-void
.end method
