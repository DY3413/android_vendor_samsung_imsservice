.class Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;
.super Ljava/lang/Object;
.source "RequestAccount.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 5

    .line 52
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;)Ljava/lang/String;

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

    .line 55
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_4

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 58
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "serviceAccountList"

    .line 59
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "serviceAccount"

    .line 60
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "HAP.REQACCOUNT.GET_TC"

    if-eqz p1, :cond_3

    .line 61
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 66
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v2, "status"

    .line 67
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "200OK non empty response, status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Active"

    .line 70
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Provisioned"

    .line 71
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-static {p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;Ljava/lang/String;)V

    return-void

    .line 74
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    const-string v1, "HAP.REQACCOUNT.EXIST_USER"

    invoke-static {p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;Ljava/lang/String;)V

    return-void

    .line 63
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-static {p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->access$000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 83
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 85
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1f7

    if-eq v1, v2, :cond_5

    .line 86
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1ad

    if-ne v1, v2, :cond_6

    .line 87
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result p1

    if-lez p1, :cond_6

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    const-string v1, "RetryAfterRule"

    invoke-interface {v0, p0, v1, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    return-void

    .line 94
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-static {p1, v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->access$400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 98
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    const-string p1, "CpsDefaultError"

    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->access$500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;Ljava/lang/String;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;)Ljava/lang/String;

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

    .line 104
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->access$600(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;)V

    return-void
.end method
