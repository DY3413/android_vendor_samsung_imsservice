.class Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;
.super Ljava/lang/Object;
.source "McsDeleteNotificationChannel.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

.field final synthetic val$channelId:Ljava/lang/String;

.field final synthetic val$isNeedRecreateChannel:Z


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->val$channelId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->val$isNeedRecreateChannel:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .registers 7

    .line 47
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    .line 48
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Ljava/lang/String;

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

    if-eq v0, v1, :cond_71

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_27

    goto :goto_71

    .line 63
    :cond_27
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-virtual {v1, v0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->isErrorCodeSupported(I)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 65
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result p1

    .line 66
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->access$400(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p0

    invoke-interface {v1, v2, p0, v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->handleNCCommonError(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;II)Z

    :cond_70
    return-void

    .line 50
    :cond_71
    :goto_71
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->remove(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 51
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->val$channelId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$mupdateChannelData(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;Ljava/lang/String;)V

    .line 52
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->val$isNeedRecreateChannel:Z

    if-eqz p1, :cond_b1

    .line 53
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onComplete: notificationChannel is deleted: try to create notificationChannel"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    goto :goto_cb

    .line 56
    :cond_b1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onComplete: notificationChannel is deleted"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 59
    :goto_cb
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)I

    move-result p0

    const-string v0, "NotificationChannel deleted"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .registers 4

    .line 73
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onFail: exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
