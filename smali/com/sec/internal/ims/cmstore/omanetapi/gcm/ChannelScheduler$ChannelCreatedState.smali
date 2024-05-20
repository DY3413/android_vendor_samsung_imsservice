.class Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;
.super Lcom/sec/internal/helper/State;
.source "ChannelScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelCreatedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 570
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    const-string v0, "ChannelCreatedState, enter"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 641
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    const-string v0, "ChannelCreatedState, exit"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10

    .line 576
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p1

    .line 578
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 627
    :pswitch_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$mcheckAndUpdateSubscriptionChannel(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)V

    goto/16 :goto_0

    .line 590
    :pswitch_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->updateNotificationChannnelLifeTime()V

    goto/16 :goto_0

    .line 580
    :pswitch_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->update(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 581
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getNotifyURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 582
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object v3

    .line 583
    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getNotifyURL()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object v3

    .line 584
    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getRestartToken()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    const/4 v8, 0x0

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v9

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 582
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 585
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " CREATE_SUBSCRIPTION_CHANNEL restartToken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getRestartToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mSubscribingState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_0

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelResURL()Ljava/lang/String;

    move-result-object v0

    .line 594
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 597
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 599
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v1

    const/16 v3, 0x2f

    if-eqz v1, :cond_4

    .line 600
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$misNotificationChannelGoingExpired(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)I

    move-result v1

    if-eq v1, v2, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    goto :goto_0

    .line 610
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 611
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 610
    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 612
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 603
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 604
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v5

    invoke-direct {v3, v4, v4, v0, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_0

    .line 619
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 620
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v5

    invoke-direct {v3, v4, v4, v0, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    :cond_5
    :goto_0
    if-eqz v2, :cond_6

    .line 634
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChannelCreatedState, Handled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    :cond_6
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
