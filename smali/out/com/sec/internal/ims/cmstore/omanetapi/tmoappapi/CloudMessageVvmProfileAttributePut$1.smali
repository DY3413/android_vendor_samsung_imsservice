.class Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;
.super Ljava/lang/Object;
.source "CloudMessageVvmProfileAttributePut.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

.field final synthetic val$vvmprofile:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$vvmprofile:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .registers 6

    .line 52
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_48

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z

    move-result p1

    if-eqz p1, :cond_11

    return-void

    .line 56
    :cond_11
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 58
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;

    .line 59
    invoke-virtual {v0}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->getBoxId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 61
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 62
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 63
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREDENTIAL_EXPIRED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->what:I

    .line 64
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlowWithMessage(Landroid/os/Message;)V

    .line 65
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void

    .line 70
    :cond_48
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryRequired(I)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result p1

    invoke-interface {v0, v1, p0, v2, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)V

    return-void

    .line 75
    :cond_70
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1ad

    if-ne v0, v1, :cond_f4

    .line 76
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Retry-After"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_f4

    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f4

    .line 80
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 81
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retryAfter is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :try_start_c1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_d2

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    const-string/jumbo v2, "retry_header"

    invoke-interface {v0, v1, v2, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    goto :goto_db

    .line 90
    :cond_d2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    :try_end_db
    .catch Ljava/lang/NumberFormatException; {:try_start_c1 .. :try_end_db} :catch_dc

    :goto_db
    return-void

    :catch_dc
    move-exception p1

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void

    .line 101
    :cond_f4
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_14a

    .line 102
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_14a

    .line 103
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0xca

    if-eq v0, v1, :cond_14a

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " statusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mDataString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void

    .line 109
    :cond_14a
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->ONE_MESSAGE_UPLOADED:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 110
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$vvmprofile:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;

    .line 112
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setVvmServiceProfile(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 113
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 115
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 116
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_CHANGE_SUCCEED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->what:I

    .line 118
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlowWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .registers 5

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;)Ljava/lang/String;

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

    .line 125
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void
.end method
