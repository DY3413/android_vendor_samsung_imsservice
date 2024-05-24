.class Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;
.super Ljava/lang/Object;
.source "McsUpdateNotificationChannelLifetime.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .registers 9

    .line 58
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onComplete: statusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_120

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->remove(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 62
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 65
    :try_start_3a
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;
    :try_end_46
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3a .. :try_end_46} :catch_100

    if-eqz p1, :cond_f4

    .line 70
    iget-object p1, p1, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->notificationChannelLifetime:Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannelLifetime;

    if-nez p1, :cond_4e

    goto/16 :goto_f4

    .line 74
    :cond_4e
    iget p1, p1, Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannelLifetime;->channelLifetime:I

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)I

    move-result v1

    const-string v2, "cms_channel_expiration"

    const/16 v3, 0x708

    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getIntGlobalSettings(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v0

    sub-int v1, p1, v0

    if-gtz v1, :cond_69

    move v1, p1

    .line 78
    :cond_69
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onComplete: channelLifetime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " channelExpiration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " delay: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelCreateTime(J)V

    int-to-long v2, p1

    .line 83
    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelLifeTime(J)V

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmControllerInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_NOTIFICATION_CHANNEL_LIFETIME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-interface {v0, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateDelay(IJ)Z

    if-lez p1, :cond_bf

    const/4 p1, 0x1

    goto :goto_c0

    :cond_bf
    const/4 p1, 0x0

    .line 88
    :goto_c0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_NOTIFICATION_CHANNEL_LIFETIME_FINISHED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onGoToEvent(ILjava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationChannel lifetime updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 71
    :cond_f4
    :goto_f4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onComplete: there is no notificationChannel"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_100
    move-exception p1

    .line 67
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onComplete: Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_120
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-virtual {v1, v0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->isErrorCodeSupported(I)Z

    move-result v1

    if-eqz v1, :cond_169

    .line 95
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result p1

    .line 96
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p0

    invoke-interface {v1, v2, p0, v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->handleNCCommonError(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;II)Z

    :cond_169
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .registers 5

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onFail: exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p0

    const/16 v0, 0x322

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    return-void
.end method
