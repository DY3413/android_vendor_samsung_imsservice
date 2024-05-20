.class Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;
.super Ljava/lang/Object;
.source "CloudMessageGreetingSearch.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$currentLine:Ljava/lang/String;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

.field final synthetic val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

.field final synthetic val$searchCursor:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$currentLine:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$searchCursor:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 5

    .line 72
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x12e

    const-string v4, ""

    if-ne v1, v3, :cond_2

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "302 redirect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Location"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 81
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 86
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 88
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNcHost(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 96
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 97
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    return-void

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void

    .line 105
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v3, 0x191

    if-ne v1, v3, :cond_4

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 109
    :cond_3
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 111
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    .line 112
    invoke-virtual {v0}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->getBoxId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 114
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 115
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 116
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREDENTIAL_EXPIRED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->what:I

    .line 117
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlowWithMessage(Landroid/os/Message;)V

    .line 118
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void

    .line 123
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryRequired(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result p1

    invoke-interface {v0, v1, p0, v2, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)V

    return-void

    .line 128
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v3, 0x1ad

    if-ne v1, v3, :cond_7

    .line 129
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v3, "Retry-After"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_7

    .line 132
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 133
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retryAfter is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_6

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    const-string v2, "retry_header"

    invoke-interface {v0, v1, v2, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    goto :goto_1

    .line 143
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_1
    move-exception p1

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void

    .line 154
    :cond_7
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_8

    .line 155
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 156
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 158
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DELETE_GREETING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 161
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    .line 162
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$300(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMStoreClient(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$currentLine:Ljava/lang/String;

    .line 163
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 164
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setCursor(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 166
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 168
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    iput v0, p1, Landroid/os/Message;->what:I

    .line 169
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlowWithMessage(Landroid/os/Message;)V

    return-void

    .line 173
    :cond_8
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_9

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result p1

    const/16 v1, 0xce

    if-eq p1, v1, :cond_9

    .line 175
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void

    .line 179
    :cond_9
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 182
    :try_start_2
    const-class v1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez p1, :cond_a

    return-void

    .line 191
    :cond_a
    iget-object p1, p1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->objectList:Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    .line 193
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    if-eqz p1, :cond_c

    .line 195
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/ObjectList;->cursor:Ljava/lang/String;

    .line 196
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$searchCursor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 197
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_PARTIAL_SYNC_SUMMARY:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 199
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v2

    .line 202
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setObjectList(Lcom/sec/internal/omanetapi/nms/data/ObjectList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_CONTINUE_SEARCH:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    .line 204
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$400(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMStoreClient(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$currentLine:Ljava/lang/String;

    .line 205
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 206
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 207
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setCursor(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 208
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 210
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->what:I

    .line 211
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlowWithMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 213
    :cond_b
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 215
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DELETE_GREETING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 218
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    .line 219
    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$500(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMStoreClient(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v2

    .line 220
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setObjectList(Lcom/sec/internal/omanetapi/nms/data/ObjectList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$currentLine:Ljava/lang/String;

    .line 221
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 222
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 223
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setCursor(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 224
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 226
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->what:I

    .line 227
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlowWithMessage(Landroid/os/Message;)V

    goto :goto_2

    .line 230
    :cond_c
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 232
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    .line 235
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setObjectList(Lcom/sec/internal/omanetapi/nms/data/ObjectList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 236
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 237
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setCursor(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$currentLine:Ljava/lang/String;

    .line 238
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 239
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 240
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 241
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DELETE_GREETING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->what:I

    .line 242
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlowWithMessage(Landroid/os/Message;)V

    :goto_2
    return-void

    :catch_2
    move-exception p1

    .line 185
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Ljava/lang/String;

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

    .line 249
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void
.end method
