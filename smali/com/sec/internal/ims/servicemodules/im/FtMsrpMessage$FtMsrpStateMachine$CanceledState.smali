.class final Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;
.super Lcom/sec/internal/helper/State;
.source "FtMsrpMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CanceledState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)V
    .locals 0

    .line 1448
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 9

    .line 1451
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter msgId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1452
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsBootup:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v1, "Message is loaded from bootup, no need for notifications"

    .line 1453
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1454
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsBootup:Z

    return-void

    .line 1457
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1459
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    const-string v0, "mnoStrategy is null"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->loge(Ljava/lang/String;)V

    return-void

    .line 1463
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsSlmSvcMsg:Z

    if-eqz v2, :cond_2

    .line 1464
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->NOTRESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->getId()I

    move-result v2

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mResumableOptionCode:I

    goto :goto_0

    .line 1466
    :cond_2
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iget-boolean v4, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsGroupChat:Z

    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->getTransferMech()I

    move-result v6

    invoke-interface {v0, v2, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getftResumableOption(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;ZLcom/sec/internal/constants/ims/servicemodules/im/ImDirection;I)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->getId()I

    move-result v2

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mResumableOptionCode:I

    .line 1468
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mResumableOptionCode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mResumableOptionCode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1473
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 1474
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRetryCount:I

    invoke-interface {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getNextFileTransferAutoResumeTimer(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;I)I

    move-result v0

    .line 1475
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mResumableOptionCode:I

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->MANUALLY_AUTOMATICALLY_RESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->getId()I

    move-result v2

    if-ne v1, v2, :cond_4

    if-ltz v0, :cond_4

    .line 1476
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " start ft auto resume timer: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    const/16 v1, 0xa

    const-wide/16 v4, 0x3e8

    const/16 v2, 0x15

    if-ge v0, v1, :cond_3

    .line 1489
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v6, v0

    mul-long/2addr v6, v4

    invoke-virtual {v1, v2, v6, v7}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_1

    .line 1491
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v1

    const-class v6, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    .line 1492
    invoke-virtual {v7, v2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v7, v0

    mul-long/2addr v7, v4

    .line 1491
    invoke-virtual {v1, v6, v2, v7, v8}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    .line 1494
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRetryCount:I

    goto :goto_2

    .line 1496
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, v2, :cond_5

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isAutoResumable()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1497
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->deleteThumbnail()Z

    .line 1498
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->deleteFile()Z

    goto :goto_2

    .line 1499
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, v2, :cond_6

    .line 1500
    iget-wide v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTransferredBytes:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-lez v1, :cond_6

    .line 1501
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->-$$Nest$mmoveCachedFileToApp(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;)V

    .line 1505
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-static {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->-$$Nest$fputmSwapUriType(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;Z)V

    .line 1506
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 1507
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iput-boolean v3, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsConferenceUriChanged:Z

    const/16 v1, 0x17

    .line 1509
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 1510
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->invokeFtQueueCallBack()V

    .line 1512
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->updateState()V

    .line 1513
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->releaseWakeLock()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8

    .line 1519
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v3, 0x4

    if-eq v0, v3, :cond_7

    const/16 v3, 0x8

    if-eq v0, v3, :cond_6

    const/16 v3, 0xa

    const/16 v4, 0x15

    if-eq v0, v3, :cond_3

    const/16 v5, 0x10

    if-eq v0, v5, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 1560
    :pswitch_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onRequestRegistrationType()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1561
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-virtual {p1, v4}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 1562
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-virtual {v0, v4}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 1563
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    invoke-interface {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onAutoResumeTransfer(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto/16 :goto_1

    .line 1565
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    const-string/jumbo v0, "unregistered, schedule auto resume"

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1570
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRetryCount:I

    invoke-interface {p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getNextFileTransferAutoResumeTimer(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;I)I

    move-result p1

    .line 1571
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mResumableOptionCode:I

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->MANUALLY_AUTOMATICALLY_RESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->getId()I

    move-result v1

    if-ne v0, v1, :cond_a

    if-ltz p1, :cond_a

    .line 1572
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " start ft auto resume timer: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    if-ge p1, v3, :cond_1

    .line 1574
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    int-to-long v5, p1

    mul-long/2addr v5, v0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 1576
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v3

    const-class v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    .line 1577
    invoke-virtual {v6, v4}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    int-to-long v6, p1

    mul-long/2addr v6, v0

    .line 1576
    invoke-virtual {v3, v5, v4, v6, v7}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    .line 1579
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRetryCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRetryCount:I

    goto/16 :goto_1

    .line 1585
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$monHandleFileResizeResponse(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;)V

    goto/16 :goto_1

    .line 1530
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1531
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    .line 1532
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$monCreateThumbnail(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)V

    goto/16 :goto_1

    .line 1526
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$monAttachSlmFile(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;)V

    goto/16 :goto_1

    .line 1536
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-virtual {v0, v4}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 1538
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;

    .line 1539
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isOutgoing()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getIsSlmSvcMsg()Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    if-eqz v3, :cond_4

    .line 1540
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "updateFtMsrpMessageInfo: service has been changed to SLM by sender."

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->-$$Nest$mupdateFtMessageInfo(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;)V

    .line 1542
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    invoke-static {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$monFileTransferInviteReceived(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;Z)V

    goto/16 :goto_1

    .line 1543
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isOutgoing()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getIsSlmSvcMsg()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1544
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->sendRejectFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;)V

    .line 1545
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->invokeFtQueueCallBack()V

    goto :goto_1

    .line 1547
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    iput-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRawHandle:Ljava/lang/Object;

    .line 1548
    invoke-static {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$monFileTransferInviteReceived(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;Z)V

    goto :goto_1

    .line 1554
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 1555
    iget-object p1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 1556
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->invokeFtQueueCallBack()V

    goto :goto_1

    .line 1589
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget-wide v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTransferredBytes:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_a

    .line 1590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FT already canceled. Try to file copy to APP. msgId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1591
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->-$$Nest$mmoveCachedFileToApp(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;)V

    goto :goto_1

    .line 1522
    :cond_8
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine$CanceledState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_9

    move v1, v2

    :cond_9
    invoke-static {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;->-$$Nest$monAttachFile(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;Z)V

    :cond_a
    :goto_1
    move v1, v2

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
