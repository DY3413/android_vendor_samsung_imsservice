.class Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo$1;
.super Ljava/lang/Object;
.source "CloudMessageGetIndividualNotificationChannelInfo.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 6

    .line 51
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    const/16 v2, 0xce

    if-ne v0, v2, :cond_0

    .line 52
    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setStatusCode(I)V

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 55
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, v0, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->notificationChannel:Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;

    if-nez v0, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    iget v0, v0, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->channelLifetime:I

    int-to-long v0, v0

    .line 88
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channelLifeTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;->-$$Nest$fgetmIControllerCommonInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_NOTIFICATIONCHANNEL_LIFETIME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    const-wide/16 v4, 0x384

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    invoke-interface {v2, v3, v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateDelay(IJ)Z

    goto :goto_1

    .line 70
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;->TAG:Ljava/lang/String;

    const-string v0, "notification == null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void

    :catch_0
    move-exception p1

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception occurred "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void

    .line 95
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->shouldCareAfterResponsePreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 100
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;->TAG:Ljava/lang/String;

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

    .line 107
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method
