.class Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;
.super Ljava/lang/Object;
.source "CloudMessageCreateSubscriptionChannel.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 9

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The content of the response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;

    .line 90
    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_SUBSCRIPTION_FINISHED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onGoToEvent(ILjava/lang/Object;)V

    .line 96
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_6

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;

    invoke-virtual {v0, p1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->getResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    move-result-object p1

    if-nez p1, :cond_1

    .line 99
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void

    .line 103
    :cond_1
    iget-object p1, p1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->nmsSubscription:Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;

    if-eqz p1, :cond_5

    .line 106
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;->restartToken:Ljava/lang/String;

    .line 107
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;->duration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 108
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v3

    if-eqz v3, :cond_2

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    const-wide/32 v5, 0x57e40

    sub-long/2addr v3, v5

    .line 110
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->-$$Nest$fgetmIControllerCommonInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_SUBSCRIPTION_AND_START_LONG_POLLING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v6

    invoke-interface {v5, v6, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateDelay(IJ)Z

    .line 112
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    .line 116
    iget-object v4, p1, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;->index:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionIndex(J)V

    .line 117
    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionRestartToken(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionTime(J)V

    .line 119
    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionChannelDuration(I)V

    .line 120
    iget-object p1, p1, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;->resourceURL:Ljava/net/URL;

    if-eqz p1, :cond_3

    .line 122
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionResUrl(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->clear()V

    .line 126
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 127
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {p1, p0, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LONG_POLLING_REQUEST:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 130
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    .line 129
    invoke-interface {p1, p0, v0, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    goto :goto_0

    .line 133
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    :goto_0
    return-void

    .line 136
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_8

    .line 137
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 141
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    invoke-virtual {v0, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    if-eqz v0, :cond_7

    .line 143
    iget-object v0, v0, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->requestError:Lcom/sec/internal/omanetapi/common/data/RequestError;

    iget-object v0, v0, Lcom/sec/internal/omanetapi/common/data/RequestError;->serviceException:Lcom/sec/internal/omanetapi/common/data/ServiceException;

    iget-object v0, v0, Lcom/sec/internal/omanetapi/common/data/ServiceException;->messageId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_7
    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->getResponseMessageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_8

    const-string v1, "SVC0003"

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 152
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageId is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", remove PresetSearch Filter and resend subscription HTTP request"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->REQUEST_SUBSCRIPTION_AFTER_PSF_REMOVED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 154
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    .line 153
    invoke-interface {p0, p1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedEvent(ILjava/lang/Object;)V

    return-void

    .line 161
    :cond_8
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    move-object v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->shouldCareAfterResponsePreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 166
    :cond_9
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;)Ljava/lang/String;

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

    .line 172
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method
