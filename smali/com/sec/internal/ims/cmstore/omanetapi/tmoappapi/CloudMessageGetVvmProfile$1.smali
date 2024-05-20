.class Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;
.super Ljava/lang/Object;
.source "CloudMessageGetVvmProfile.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 6

    .line 51
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const-string v2, " mDataString: "

    const/16 v3, 0x194

    if-eq v1, v3, :cond_5

    const/16 v3, 0x190

    if-ne v1, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v3, 0x191

    if-ne v1, v3, :cond_2

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 88
    :cond_1
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 90
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;

    .line 91
    invoke-virtual {v0}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->getBoxId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 93
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 94
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 95
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREDENTIAL_EXPIRED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->what:I

    .line 96
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlowWithMessage(Landroid/os/Message;)V

    .line 97
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void

    .line 100
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryRequired(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-interface {p1, v0, p0, v2, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)V

    return-void

    :cond_3
    const/16 v3, 0x1ad

    if-ne v1, v3, :cond_7

    .line 104
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v3, "Retry-After"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_7

    .line 105
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 107
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;)Ljava/lang/String;

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

    .line 110
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    const-string v2, "retry_header"

    invoke-interface {v0, v1, v2, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    goto :goto_0

    .line 116
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void

    .line 55
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " onComplete: statusCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    instance-of v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    if-eqz v3, :cond_6

    .line 57
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->OBJECT_NOT_FOUND:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 59
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 62
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 64
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 65
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 66
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_CHANGE_ERROR:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->what:I

    .line 67
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlowWithMessage(Landroid/os/Message;)V

    return-void

    .line 69
    :cond_6
    instance-of p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    if-eqz p1, :cond_7

    .line 71
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->OBJECT_NOT_FOUND:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 73
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 76
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 78
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 79
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_CHANGE_ERROR:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->what:I

    .line 81
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlowWithMessage(Landroid/os/Message;)V

    return-void

    :cond_7
    const/16 p1, 0xc8

    if-eq v1, p1, :cond_8

    .line 128
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;->access$300(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " statusCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void

    .line 134
    :cond_8
    :try_start_1
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 135
    const-class v1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    .line 136
    iget-object p1, p1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->vvmserviceProfile:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;

    if-eqz p1, :cond_9

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    instance-of v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    if-eqz v0, :cond_a

    .line 139
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->VVM_PROFILE_DOWNLOADED:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 141
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setVvmServiceProfile(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 145
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 146
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 147
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_CHANGE_SUCCEED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->what:I

    .line 149
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlowWithMessage(Landroid/os/Message;)V

    goto :goto_2

    .line 152
    :cond_9
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    :goto_2
    return-void

    :catch_1
    move-exception p1

    .line 156
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;)Ljava/lang/String;

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

    .line 165
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void
.end method
