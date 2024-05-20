.class final Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;
.super Lcom/sec/internal/helper/State;
.source "FtMsrpMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SendingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)V
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method private onSendFileDone(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 7

    .line 969
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 970
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return-void

    .line 974
    :cond_0
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    .line 975
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v6

    .line 976
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;->mRetryTimer:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->-$$Nest$fputmRetryTimer(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;I)V

    .line 978
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 980
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSendFileDone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " retryTimer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->-$$Nest$fgetmRetryTimer(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 982
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v6, v0, :cond_1

    .line 983
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;->mRawHandle:Ljava/lang/Object;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRawHandle:Ljava/lang/Object;

    .line 984
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$fgetmInProgressState(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return-void

    .line 988
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getCurrentRetryCount()I

    move-result v2

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->-$$Nest$fgetmRetryTimer(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;)I

    move-result v3

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    .line 989
    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onRequestChatType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, v6

    .line 988
    invoke-interface/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handleSendingFtMsrpMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p1

    .line 990
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getErrorNotificationId()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mErrorNotificationId:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    .line 991
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p1

    .line 992
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendingState: onSendFileDone. statusCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 994
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isNeedToReportToRegiGvn(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, v2, :cond_2

    .line 995
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    invoke-interface {v0, v6}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onFtErrorReport(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    .line 998
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->-$$Nest$misChatbotMessage(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v6, v0, :cond_3

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REQUEST_PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v6, v0, :cond_4

    .line 1000
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-static {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$mhandleFTFailure(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    goto :goto_0

    .line 1002
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-static {p0, p1, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$mhandleFTFailure(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 853
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter msgId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 856
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->updateState()V

    .line 857
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->acquireWakeLock()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    .line 864
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v1, 0x3

    const/16 v2, 0x11

    if-eq v0, v1, :cond_b

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0xc

    const/16 v3, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_1

    .line 927
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContributionId:Ljava/lang/String;

    .line 928
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$monSendFile(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)V

    .line 929
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->incrementRetryCount()V

    goto/16 :goto_0

    .line 920
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    const-string v0, "Stack response timer expires, cancel file and fallback"

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 921
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEDICATED_BEARER_UNAVAILABLE_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sendCancelFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 922
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$fgetmCancelingState(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_0

    .line 870
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 871
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;->mRawHandle:Ljava/lang/Object;

    iput-object p1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRawHandle:Ljava/lang/Object;

    .line 872
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update session handle mRawHandle="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " id = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 933
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$monHandleFileResizeResponse(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;)V

    goto/16 :goto_0

    .line 876
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 877
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_11

    .line 878
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    .line 880
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLM send file done : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 881
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v0, v1, :cond_6

    .line 882
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;->mRawHandle:Ljava/lang/Object;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRawHandle:Ljava/lang/Object;

    .line 883
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    const-string v0, "session_establish_timer"

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    .line 884
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onRequestRegistrationType()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    .line 885
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onRequestRegistrationType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v3, :cond_5

    .line 886
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Stack response timer starts"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 887
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-virtual {p1, v2}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 888
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-virtual {p1, v2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    .line 889
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result p0

    int-to-long v2, p0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 888
    invoke-virtual {p1, v1, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    .line 891
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$fgetmInProgressState(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_0

    .line 894
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->-$$Nest$msetCancelReasonBasedOnLineType(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;)V

    .line 895
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_0

    .line 916
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$mhandleRaceCondition(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;)V

    goto/16 :goto_0

    .line 901
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 902
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRawHandle:Ljava/lang/Object;

    if-nez v1, :cond_9

    .line 903
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mRawHandle is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_0

    .line 906
    :cond_9
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sendCancelFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 907
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-ne p1, v0, :cond_a

    .line 908
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_0

    .line 910
    :cond_a
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$fgetmCancelingState(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_0

    .line 937
    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    .line 938
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRawHandle:Ljava/lang/Object;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mRawHandle:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 939
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_TRANSFER_PROGRESS: unknown rawHandle, ignore it: mRawHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", event.mRawHandle="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 943
    :cond_c
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 945
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendingState: EVENT_TRANSFER_PROGRESS event.mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 946
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->COMPLETED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    if-ne v0, v1, :cond_d

    .line 947
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$fgetmCompletedState(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 948
    :cond_d
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->TRANSFERRING:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    if-ne v0, v1, :cond_e

    .line 949
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$fgetmInProgressState(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 951
    :cond_e
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mReason:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->translateToCancelReason(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object p1

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 952
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsSlmSvcMsg:Z

    if-eqz v0, :cond_f

    .line 954
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->-$$Nest$msetCancelReasonBasedOnLineType(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;)V

    .line 956
    :cond_f
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 866
    :cond_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$SendingState;->onSendFileDone(Lcom/sec/internal/helper/AsyncResult;)V

    :cond_11
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
