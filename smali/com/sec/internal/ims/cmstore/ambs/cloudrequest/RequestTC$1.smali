.class Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;
.super Ljava/lang/Object;
.source "RequestTC.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 4

    .line 46
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onComplete StatusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " strbodyEmpty:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " strbody: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const-string v2, "CpsDefaultError"

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_1

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 53
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "tc"

    .line 54
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->-$$Nest$fputmTcId(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->access$000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->-$$Nest$fgetmTcId(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveTermConditionId(Ljava/lang/String;)V

    const-string p1, "Url"

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->-$$Nest$fgetmTcType(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Text"

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->-$$Nest$fgetmTcType(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-static {p1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;Ljava/lang/String;)V

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_2

    .line 67
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1ad

    if-ne v0, v1, :cond_3

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result p1

    if-lez p1, :cond_3

    .line 70
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    const-string v1, "RetryAfterRule"

    invoke-interface {v0, p0, v1, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    return-void

    .line 75
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-static {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->access$400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;Ljava/lang/String;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;)Ljava/lang/String;

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

    .line 81
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    const-string p1, "CpsDefaultError"

    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->access$500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;Ljava/lang/String;)V

    return-void
.end method
