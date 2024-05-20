.class Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;
.super Ljava/lang/Object;
.source "CloudMessageGetAllPayloads.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->buildInternal(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 7

    .line 62
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    .line 63
    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0xce

    const/16 v3, 0xc8

    if-ne v1, v2, :cond_1

    .line 68
    invoke-virtual {p1, v3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setStatusCode(I)V

    .line 70
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_2

    .line 71
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->OBJECT_NOT_FOUND:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 73
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 75
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    goto :goto_2

    .line 77
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    if-ne v1, v3, :cond_8

    .line 78
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataBinary()[B

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 82
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    invoke-static {v1, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->-$$Nest$mparseResponsePayload(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/util/List;)V

    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_4

    .line 85
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void

    .line 88
    :cond_4
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    .line 89
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setAllPayloads(Ljava/util/List;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 90
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    instance-of v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    if-eqz v2, :cond_5

    .line 92
    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->ALL_PAYLOAD_DOWNLOAD:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    goto :goto_0

    .line 94
    :cond_5
    instance-of v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    if-eqz v1, :cond_6

    .line 95
    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->NOTIFICATION_ALL_PAYLOAD_DOWNLOADED:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    .line 99
    :cond_6
    :goto_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    goto :goto_2

    .line 79
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void

    .line 101
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/high16 v6, -0x80000000

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->shouldCareAfterResponsePreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 106
    :cond_9
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->TAG:Ljava/lang/String;

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

    .line 113
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void
.end method
