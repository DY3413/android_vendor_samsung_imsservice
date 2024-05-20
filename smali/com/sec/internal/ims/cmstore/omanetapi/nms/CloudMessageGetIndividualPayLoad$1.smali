.class Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad$1;
.super Ljava/lang/Object;
.source "CloudMessageGetIndividualPayLoad.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;->buildInternal(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 7

    .line 54
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    .line 55
    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataBinary()[B

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v2

    const/16 v3, 0xce

    const/16 v4, 0xc8

    if-ne v2, v3, :cond_1

    .line 62
    invoke-virtual {p1, v4}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setStatusCode(I)V

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v2

    const/16 v3, 0x194

    if-eq v2, v3, :cond_6

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v2

    const/16 v3, 0x193

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v2

    if-ne v2, v4, :cond_7

    if-nez v1, :cond_3

    .line 74
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void

    .line 77
    :cond_3
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    .line 79
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setPayloadUrl(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setByte([B)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 80
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    instance-of v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    if-eqz v2, :cond_4

    .line 82
    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->ONE_PAYLOAD_DOWNLOAD:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    goto :goto_0

    .line 84
    :cond_4
    instance-of v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    if-eqz v1, :cond_5

    .line 85
    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->NOTIFICATION_PAYLOAD_DOWNLOADED:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    .line 89
    :cond_5
    :goto_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    goto :goto_2

    .line 66
    :cond_6
    :goto_1
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->OBJECT_NOT_FOUND:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 68
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 70
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    .line 92
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/high16 v6, -0x80000000

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->shouldCareAfterResponsePreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z

    move-result p1

    if-nez p1, :cond_8

    return-void

    .line 98
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;)Ljava/lang/String;

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

    .line 105
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad$1;->val$dbparam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void
.end method
