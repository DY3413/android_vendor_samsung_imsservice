.class Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;
.super Lcom/sec/internal/helper/State;
.source "ChannelScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 343
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    const-string v0, "DefaultState, enter"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 465
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    const-string v0, "DefaultState, exit"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    .line 351
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 451
    :pswitch_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->pause()V

    .line 452
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmSchedulerHelper(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->deleteNotificationSubscriptionResource(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    goto/16 :goto_2

    .line 444
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_4

    .line 445
    check-cast p1, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    .line 446
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mApi:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$monApiTreatAsSucceed(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 447
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_SUBSCRIPTION_AND_START_LONG_POLLING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mBufDbParams:Ljava/lang/Object;

    invoke-static {v1, v2, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$mgotoHandlerEvent(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 438
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_4

    .line 439
    check-cast p1, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 440
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$monApiTreatAsSucceed(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    goto/16 :goto_2

    .line 434
    :pswitch_3
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmUIInterface(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    const-string v4, "pop_up"

    invoke-interface {p1, v1, v4, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto/16 :goto_2

    .line 431
    :pswitch_4
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmINetAPIEventListener(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    move-result-object v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onPauseCMNNetApiWithResumeDelay(I)V

    goto/16 :goto_2

    .line 422
    :pswitch_5
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmLine(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v1

    const-wide/16 v4, 0x0

    .line 424
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    .line 425
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 427
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmINetAPIEventListener(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    move-result-object p1

    invoke-interface {p1, v1, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaAuthenticationFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V

    .line 428
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESET_STATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto/16 :goto_2

    .line 415
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_4

    .line 416
    check-cast p1, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 417
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReExecute API "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " after 302 by using new url"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_2

    .line 411
    :pswitch_7
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmINetAPIEventListener(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    move-result-object v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 412
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onCloudObjectNotificationUpdated(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_2

    .line 406
    :pswitch_8
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmINetAPIEventListener(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    move-result-object p1

    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->MAILBOX_RESET:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 407
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    .line 408
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v1

    .line 406
    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onCloudSyncStopped(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_2

    .line 388
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, p1, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;

    if-eqz v1, :cond_1

    .line 389
    check-cast p1, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;

    .line 390
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->channelUrl:Ljava/lang/String;

    .line 391
    iget-boolean v2, p1, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->isNeedRecreateChannel:Z

    .line 392
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->TAG:Ljava/lang/String;

    const-string v4, "need recreate channel"

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 394
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :goto_0
    move v8, v2

    .line 396
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 397
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object p1

    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    const-string v4, "/"

    .line 399
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v9

    move-object v4, v2

    move-object v5, v6

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 397
    invoke-virtual {p1, v2}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_2

    .line 381
    :pswitch_a
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v5

    invoke-direct {v2, v4, p1, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 383
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionResUrl(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 364
    :pswitch_b
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 365
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_ACTIVE_NOTIFICATIONCHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 367
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelResURL()Ljava/lang/String;

    move-result-object p1

    .line 369
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x2f

    .line 370
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 371
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v5

    invoke-direct {v2, v4, v4, p1, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_1

    .line 375
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 378
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mChannelCheckingState:Lcom/sec/internal/helper/State;

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_2

    .line 359
    :pswitch_c
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESET_STATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_2

    .line 356
    :pswitch_d
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_2

    .line 353
    :pswitch_e
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESET_STATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_4
    :goto_2
    :pswitch_f
    move v2, v3

    :goto_3
    if-eqz v2, :cond_5

    .line 459
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultState, Handled : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    :cond_5
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
