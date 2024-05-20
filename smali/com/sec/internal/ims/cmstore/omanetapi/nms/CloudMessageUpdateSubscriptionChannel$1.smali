.class Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;
.super Ljava/lang/Object;
.source "CloudMessageUpdateSubscriptionChannel.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 7

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;

    .line 55
    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0xce

    const/16 v2, 0xc8

    if-ne v0, v1, :cond_1

    .line 59
    invoke-virtual {p1, v2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setStatusCode(I)V

    .line 61
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;

    invoke-virtual {v0, p1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->getResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    move-result-object p1

    if-nez p1, :cond_2

    .line 64
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void

    .line 68
    :cond_2
    iget-object p1, p1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->nmsSubscription:Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;

    if-eqz p1, :cond_5

    .line 70
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;->restartToken:Ljava/lang/String;

    .line 71
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;->duration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 72
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v2

    if-eqz v2, :cond_3

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x57e40

    sub-long/2addr v2, v4

    .line 74
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;->-$$Nest$fgetmIControllerCommonInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_SUBSCRIPTION_AND_START_LONG_POLLING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v5

    invoke-interface {v4, v5, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateDelay(IJ)Z

    .line 80
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    iget-object p1, p1, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;->index:Ljava/lang/Long;

    .line 81
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionIndex(J)V

    .line 82
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionRestartToken(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;->access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 84
    invoke-virtual {p1, v2, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionTime(J)V

    .line 86
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;->access$400(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    .line 87
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionChannelDuration(I)V

    .line 89
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 90
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "use gcm, will not send long polling request"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LONG_POLLING_REQUEST:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 93
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    const/4 v1, 0x0

    .line 92
    invoke-interface {p1, p0, v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    goto :goto_0

    .line 96
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    :goto_0
    return-void

    .line 101
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->shouldCareAfterResponsePreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 106
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;)Ljava/lang/String;

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

    .line 112
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method
