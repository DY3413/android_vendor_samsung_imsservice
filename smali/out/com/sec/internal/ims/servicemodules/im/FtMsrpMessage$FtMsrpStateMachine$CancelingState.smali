.class final Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;
.super Lcom/sec/internal/helper/State;
.source "FtMsrpMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CancelingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)V
    .registers 2

    .line 1329
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method private handleFTTimeout(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V
    .registers 5

    .line 1440
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onRequestChatType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handleFtFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    .line 1441
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v1, v2, :cond_35

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsSlmSvcMsg:Z

    if-eqz v2, :cond_35

    const-string v0, "handleFTTimeout: FALLBACK_TO_LEGACY for slm FT"

    .line 1442
    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1443
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-static {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$mhandleFTFailure(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    goto :goto_3e

    .line 1445
    :cond_35
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$mhandleFTFailure(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    :goto_3e
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 1332
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter msgId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1334
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->updateState()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 9

    .line 1341
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_16a

    const/4 v3, 0x3

    if-eq v0, v3, :cond_a8

    const/4 v1, 0x7

    if-eq v0, v1, :cond_84

    const/16 v1, 0x8

    if-eq v0, v1, :cond_57

    const/16 v1, 0x9

    if-eq v0, v1, :cond_17

    const/4 v2, 0x0

    goto/16 :goto_18e

    .line 1353
    :cond_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    if-eqz p1, :cond_18e

    .line 1355
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    .line 1356
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CancelingState: cancel transfer result = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEDICATED_BEARER_UNAVAILABLE_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-ne v0, v1, :cond_4e

    .line 1358
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEDICATED_BEARER_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->handleFTTimeout(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    goto/16 :goto_18e

    .line 1360
    :cond_4e
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)Lcom/sec/internal/helper/State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_18e

    .line 1343
    :cond_57
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 1344
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel transfer in cancelingState reason = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1345
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-ne p1, v0, :cond_18e

    .line 1346
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iput-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 1347
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_18e

    .line 1366
    :cond_84
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    if-eqz p1, :cond_18e

    .line 1368
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    .line 1369
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq p1, v0, :cond_9d

    .line 1370
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    const-string v0, "CancelingState: Failed to cancel transfer."

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->loge(Ljava/lang/String;)V

    .line 1372
    :cond_9d
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_18e

    .line 1377
    :cond_a8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    .line 1378
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRawHandle:Ljava/lang/Object;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mRawHandle:Ljava/lang/Object;

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e2

    .line 1379
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_TRANSFER_PROGRESS: unknown rawHandle, ignore it: mRawHandle="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

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

    goto/16 :goto_18e

    .line 1383
    :cond_e2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    const/16 v4, 0x17

    invoke-virtual {v0, v4}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 1384
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-virtual {v0, v4}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v5, 0x493e0

    invoke-virtual {v0, v4, v5, v6}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1386
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$event$FtTransferProgressEvent$State:[I

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v2, :cond_15a

    if-eq v0, v1, :cond_142

    if-eq v0, v3, :cond_10a

    const/4 p1, 0x4

    if-eq v0, p1, :cond_142

    goto/16 :goto_18e

    .line 1401
    :cond_10a
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-eq v0, v1, :cond_11e

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    const-string v0, ".tmp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_128

    :cond_11e
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->renameFile()Z

    move-result p1

    if-eqz p1, :cond_132

    .line 1402
    :cond_128
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$fgetmCompletedState(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_18e

    .line 1406
    :cond_132
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 1407
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_18e

    .line 1392
    :cond_142
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEDICATED_BEARER_UNAVAILABLE_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-ne v0, v1, :cond_152

    .line 1393
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEDICATED_BEARER_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->handleFTTimeout(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    goto :goto_18e

    .line 1395
    :cond_152
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)Lcom/sec/internal/helper/State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_18e

    .line 1388
    :cond_15a
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileSize:J

    iget-wide v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mTotal:J

    sub-long/2addr v0, v3

    iget-wide v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mTransferred:J

    add-long/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->updateTransferredBytes(J)V

    goto :goto_18e

    .line 1423
    :cond_16a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    if-eqz p1, :cond_18e

    .line 1425
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    .line 1426
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p1

    .line 1427
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CancelingState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendFileDone in CancelingState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    :cond_18e
    :goto_18e
    return v2
.end method
