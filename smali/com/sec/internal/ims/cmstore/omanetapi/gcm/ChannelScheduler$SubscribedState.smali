.class Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;
.super Lcom/sec/internal/helper/State;
.source "ChannelScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscribedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 685
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    const-string v0, "SubscribedState, enter"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 749
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    const-string v0, "SubscribedState, exit"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8

    .line 691
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    .line 692
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/32 v2, 0x57e40

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    goto/16 :goto_1

    .line 720
    :pswitch_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 723
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LARGE_DATA_POLLING_REQUEST:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 724
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL_DELAY:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    const-wide/32 v2, 0xea60

    invoke-virtual {p1, v1, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 728
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->update(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 729
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getChannelResURL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 730
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object p1

    new-instance v7, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object v1

    .line 731
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getRestartToken()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object v1

    .line 732
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getChannelResURL()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 730
    invoke-virtual {p1, v7}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 733
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " UPDATE_SUBSCRIPTION_CHANNEL_DELAY restartToken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getRestartToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 734
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->clear()V

    goto/16 :goto_0

    .line 713
    :pswitch_2
    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v5

    invoke-direct {v1, v4, v4, p1, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 715
    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setReadTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 716
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 717
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mLargePollingState:Lcom/sec/internal/helper/State;

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_0

    .line 706
    :pswitch_3
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLongPolling;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getChannelURL()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v5

    invoke-direct {p1, v1, v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLongPolling;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 708
    invoke-virtual {p1, v2, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setReadTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 709
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 710
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mLongPollingState:Lcom/sec/internal/helper/State;

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 697
    :pswitch_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->update(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 698
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getChannelResURL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 699
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object p1

    new-instance v7, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object v1

    .line 700
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getRestartToken()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object v1

    .line 701
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getChannelResURL()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 699
    invoke-virtual {p1, v7}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 702
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE_SUBSCRIPTION_CHANNEL + restartToken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getRestartToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    :goto_0
    :pswitch_5
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 742
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubscribedState, Handled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    :cond_3
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
