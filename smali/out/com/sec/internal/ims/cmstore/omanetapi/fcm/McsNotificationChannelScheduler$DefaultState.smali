.class Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;
.super Lcom/sec/internal/helper/State;
.source "McsNotificationChannelScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)V
    .registers 2

    .line 322
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 2

    .line 325
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DefaultState: enter"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .registers 2

    .line 461
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DefaultState: exit"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 16

    .line 331
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DefaultState: processMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, " isNeedRecreateChannel: "

    const-string v2, " resUrl: "

    const-string v3, "DefaultState: processMessage: channelId: "

    const/16 v4, 0x2f

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_26a

    .line 451
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DefaultState: processMessage: unknown event"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_269

    .line 444
    :pswitch_42
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_268

    .line 445
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$monApiTreatAsSucceed(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)V

    goto/16 :goto_268

    .line 434
    :pswitch_4d
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmLine(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    .line 437
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_6f

    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_6f

    .line 438
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_71

    :cond_6f
    const-wide/16 v1, 0x0

    .line 440
    :goto_71
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmINetAPIEventListener(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    move-result-object p0

    invoke-interface {p0, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaAuthenticationFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V

    goto/16 :goto_268

    .line 427
    :pswitch_7c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    if-eqz p1, :cond_268

    .line 429
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->handleMcsError(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    goto/16 :goto_268

    .line 403
    :pswitch_8d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_9e

    instance-of v0, p1, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;

    if-eqz v0, :cond_9e

    .line 404
    check-cast p1, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;

    .line 405
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->channelUrl:Ljava/lang/String;

    .line 406
    iget-boolean v5, p1, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->isNeedRecreateChannel:Z

    .line 407
    iget-object p1, p1, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->deleteReason:Ljava/lang/String;

    goto :goto_a2

    :cond_9e
    const-string v0, ""

    const-string p1, "NORMAL"

    :goto_a2
    move-object v13, v0

    move v11, v5

    .line 409
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ff

    .line 410
    invoke-virtual {v13, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 411
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    const-class v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$misAlreadyInRetry(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ff

    .line 414
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {v8}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v9

    move-object v7, v1

    move-object v12, p1

    invoke-direct/range {v7 .. v13}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    :cond_ff
    const-string v0, "NONDMA"

    if-ne p1, v0, :cond_268

    .line 419
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DMA change, move to default state and pause scheduler"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p1, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fputmPaused(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;Z)V

    .line 421
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmDefaultState(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_268

    .line 386
    :pswitch_11e
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelResURL()Ljava/lang/String;

    move-result-object p1

    .line 387
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_268

    .line 388
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    const-class v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$misAlreadyInRetry(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_268

    .line 391
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v2

    invoke-direct {v1, p0, p0, v0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_268

    .line 376
    :pswitch_181
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$misAlreadyInRetry(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_268

    .line 377
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 379
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmChannelCheckingState(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_268

    .line 369
    :pswitch_1b2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmPaused(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Z

    move-result p1

    if-nez p1, :cond_268

    .line 370
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p1, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fputmPaused(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;Z)V

    .line 371
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->resetChannelData()V

    goto/16 :goto_268

    .line 345
    :pswitch_1c6
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmPaused(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Z

    move-result p1

    if-eqz p1, :cond_1db

    .line 346
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ChannelScheduler already paused"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_268

    .line 350
    :cond_1db
    :pswitch_1db
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p1, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fputmPaused(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;Z)V

    .line 352
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelResURL()Ljava/lang/String;

    move-result-object v13

    .line 354
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_200

    .line 355
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Empty url, do not process delete"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_268

    .line 358
    :cond_200
    invoke-virtual {v13, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/2addr p1, v6

    invoke-virtual {v13, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 359
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$misAlreadyInRetry(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_268

    .line 362
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {v8}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v9

    const-string v12, "NORMAL"

    const/4 v11, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_268

    .line 338
    :pswitch_258
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_NOTIFICATION_CHANNEL_LIST_INFO:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 339
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p0, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fputmPaused(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;Z)V

    :cond_268
    :goto_268
    move v5, v6

    :goto_269
    return v5

    :pswitch_data_26a
    .packed-switch 0x1
        :pswitch_258
        :pswitch_258
        :pswitch_258
        :pswitch_1c6
        :pswitch_1db
        :pswitch_1b2
        :pswitch_181
        :pswitch_11e
        :pswitch_8d
        :pswitch_7c
        :pswitch_4d
        :pswitch_42
    .end packed-switch
.end method
