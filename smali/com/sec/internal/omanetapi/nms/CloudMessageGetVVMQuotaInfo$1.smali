.class Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;
.super Ljava/lang/Object;
.source "CloudMessageGetVVMQuotaInfo.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->this$0:Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo;

    iput-object p2, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iput-object p4, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 5

    .line 56
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    .line 57
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {}, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onComplete StatusCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " strbody: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x194

    if-eq v0, v2, :cond_0

    const/16 v2, 0x190

    if-ne v0, v2, :cond_1

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    instance-of v3, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    if-nez v3, :cond_a

    instance-of v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v2, 0x191

    if-ne v0, v2, :cond_3

    .line 79
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->this$0:Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo;

    invoke-virtual {v0, p1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->handleUnAuthorized(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 82
    :cond_2
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 84
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->this$0:Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo;

    .line 85
    invoke-virtual {v0}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->getBoxId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 87
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 88
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREDENTIAL_EXPIRED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->what:I

    .line 90
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlowWithMessage(Landroid/os/Message;)V

    .line 91
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void

    .line 96
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->this$0:Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryRequired(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 97
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-interface {p1, v1, p0, v2, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)V

    return-void

    :cond_4
    const/16 v2, 0x1ad

    if-ne v0, v2, :cond_6

    .line 102
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v2, "Retry-After"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_6

    .line 105
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v0, 0x0

    .line 106
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 108
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_5

    .line 110
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    const-string v2, "retry_header"

    invoke-interface {v0, v1, v2, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    goto :goto_0

    .line 114
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 118
    invoke-static {}, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void

    :cond_6
    const/16 p1, 0xc8

    if-eq v0, p1, :cond_7

    .line 126
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void

    .line 130
    :cond_7
    :try_start_1
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 133
    :try_start_2
    const-class v0, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 140
    :try_start_3
    iget-object p1, p1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->folder:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;

    if-eqz p1, :cond_8

    .line 143
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    instance-of v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    if-eqz v0, :cond_9

    .line 144
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->VVM_QUOTA_INFO:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 146
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setVvmFolders(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 150
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 151
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 152
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_CHANGE_SUCCEED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->what:I

    .line 154
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlowWithMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 157
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 136
    invoke-static {}, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catch_2
    move-exception p0

    .line 161
    invoke-static {}, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    return-void

    .line 63
    :cond_a
    :goto_2
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->OBJECT_NOT_FOUND:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 65
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 68
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 70
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 71
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_CHANGE_ERROR:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->what:I

    .line 73
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlowWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 167
    invoke-static {}, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

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

    .line 168
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method
