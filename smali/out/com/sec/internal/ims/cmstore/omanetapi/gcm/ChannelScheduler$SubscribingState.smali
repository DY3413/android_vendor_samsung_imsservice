.class Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribingState;
.super Lcom/sec/internal/helper/State;
.source "ChannelScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscribingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)V
    .registers 2

    .line 658
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribingState-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribingState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 2

    .line 661
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    const-string v0, "SubscribingState, enter"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .registers 2

    .line 691
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    const-string v0, "SubscribingState, exit"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 11

    .line 667
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p1

    .line 669
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x18

    if-eq v0, v1, :cond_71

    const/16 v1, 0x19

    if-eq v0, v1, :cond_18

    const/4 v0, 0x0

    goto :goto_79

    .line 674
    :cond_18
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    new-instance v8, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object v1

    .line 675
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getNotifyURL()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object v1

    .line 676
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getRestartToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    const/4 v6, 0x1

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 674
    invoke-virtual {v0, v8}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 677
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " REQUEST_SUBSCRIPTION_AFTER_PSF_REMOVED restartToken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getRestartToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_78

    .line 671
    :cond_71
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mSubscribedState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :goto_78
    const/4 v0, 0x1

    :goto_79
    if-eqz v0, :cond_91

    .line 684
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$SubscribingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubscribingState, Handled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    :cond_91
    return v0
.end method
