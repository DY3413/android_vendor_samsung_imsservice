.class final Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;
.super Lcom/sec/internal/helper/State;
.source "FtHttpIncomingMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InProgressState"
.end annotation


# instance fields
.field downloadTask:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)V

    return-void
.end method

.method private createDownloadTask(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    .line 784
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "ft_internet_pdn"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    .line 785
    new-instance v15, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-wide v4, v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileSize:J

    iget-wide v6, v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTransferredBytes:J

    iget-object v9, v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFtHttpUserAgent()Ljava/lang/String;

    move-result-object v10

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 786
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNetwork:Landroid/net/Network;

    :goto_0
    move-object v11, v1

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpTrustAllCerts()Z

    move-result v12

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpDLUrl()Ljava/lang/String;

    move-result-object v13

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    move-object/from16 v3, p1

    .line 787
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->getParamsforDl(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState$1;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState$1;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;)V

    const/4 v8, 0x0

    move-object v2, v15

    move-object/from16 p1, v15

    move-object v15, v1

    invoke-direct/range {v2 .. v15}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;-><init>(Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Network;ZLjava/lang/String;Ljava/util/Map;Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;)V

    .line 823
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 824
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result v2

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-virtual {v4}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;)V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->downloadTask:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    .line 825
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->execute(Ljava/util/concurrent/Executor;)V

    goto :goto_1

    .line 827
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Download request param not valid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :goto_1
    return-void
.end method

.method private tryDownload()V
    .locals 3

    .line 761
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "cancel_ft_wifi_disconnected"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsWifiUsed:Z

    .line 763
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->checkValidPeriod()Z

    move-result v0

    if-nez v0, :cond_1

    .line 764
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Auto cancel file transfer, file has expired"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .line 766
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->VALIDITY_EXPIRED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 767
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_2

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$fgetmDataUrl(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;)Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_2

    .line 769
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Data url is null, go to Canceled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_2

    .line 771
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->downloadTask:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->getState()Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;->FINISHED:Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 779
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Task is already running or pending."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 772
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->needToAcquireNetworkForFT()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 773
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "ft_net_capability"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->acquireNetworkForFT(I)V

    .line 774
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->acquireWakeLock()V

    return-void

    .line 777
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$fgetmDataUrl(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->createDownloadTask(Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    .line 597
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter msgId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->needToAcquireNetworkForFT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "ft_net_capability"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->acquireNetworkForFT(I)V

    .line 600
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->acquireWakeLock()V

    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 604
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setRetryCount(I)V

    .line 605
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->updateState()V

    .line 606
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    invoke-interface {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onTransferInProgress(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 607
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-wide v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTransferredBytes:J

    iget-wide v5, v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileSize:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_3

    .line 608
    iget-boolean v0, v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsBootup:Z

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v2, "cancel_for_deregi_promptly"

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    .line 609
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v2, "delay_to_cancel_for_deregi"

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 610
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Do not auto resume message loaded from bootup"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iput-boolean v1, v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsBootup:Z

    .line 612
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object v1, v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 613
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    const/16 v1, 0x65

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-wide v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTransferredBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 616
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->tryDownload()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x66

    .line 619
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 621
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->acquireWakeLock()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11

    .line 627
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x6b

    if-eq v0, v1, :cond_e

    const/16 v1, 0x8

    const-string v6, "cancel_for_deregi_promptly"

    const-wide/16 v7, 0x3e8

    const/16 v9, 0x34

    if-eq v0, v1, :cond_a

    const/16 v1, 0xa

    const/16 v10, 0x66

    if-eq v0, v1, :cond_8

    if-eq v0, v5, :cond_3

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_2

    .line 693
    :pswitch_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 694
    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->downloadTask:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    .line 695
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRetryCount()I

    move-result v3

    invoke-interface {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getFtHttpRetryInterval(II)I

    move-result v0

    if-ltz v0, :cond_0

    .line 697
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_RETRY_DOWNLOAD: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " retry download after "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " secs"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v5, v2, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    int-to-long v0, v0

    mul-long/2addr v0, v7

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 701
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_1

    .line 688
    :pswitch_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTransferredBytes:J

    .line 689
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmCompletedState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CompletedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_1

    .line 682
    :pswitch_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->updateTransferredBytes(J)V

    .line 683
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_DOWNLOAD_PROGRESS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-wide v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTransferredBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-wide v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    invoke-interface {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onTransferProgressReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto/16 :goto_1

    .line 672
    :pswitch_3
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_DELAY_CANCEL_TRANSFER mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->downloadTask:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    if-eqz p1, :cond_1

    .line 674
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->cancel(Z)V

    .line 675
    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->downloadTask:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    .line 677
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 678
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_1

    .line 748
    :pswitch_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 749
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_1

    .line 734
    :pswitch_5
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    const/16 v0, 0x33

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 735
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-virtual {p1, v5}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 736
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setRetryCount(I)V

    .line 737
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->updateState()V

    .line 738
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onTransferInProgress(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 739
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-wide v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTransferredBytes:J

    iget-wide v5, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileSize:J

    cmp-long v0, v1, v5

    if-gez v0, :cond_2

    const/16 v0, 0x65

    .line 740
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 741
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->tryDownload()V

    goto/16 :goto_1

    .line 743
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, v10, p0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 706
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_RETRY_DOWNLOAD mId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Retry count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRetryCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 708
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-virtual {v0, v5}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 710
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsSettings()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByChatId(Ljava/lang/String;)I

    move-result v0

    .line 711
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v1

    if-eq v0, v1, :cond_4

    goto/16 :goto_1

    .line 715
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->checkAvailableRetry()Z

    move-result v0

    if-nez v0, :cond_5

    .line 716
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    invoke-interface {p1, v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 717
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 718
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_1

    :cond_5
    const/16 v0, 0x1f7

    if-ne p1, v0, :cond_6

    .line 722
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->tryDownload()V

    goto/16 :goto_1

    .line 724
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRetryCount()I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_7

    .line 725
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRetryCount()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setRetryCount(I)V

    .line 726
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->tryDownload()V

    goto/16 :goto_1

    .line 728
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_1

    .line 630
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-virtual {p1, v5}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 631
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-virtual {v0, v9}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 632
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-wide v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTransferredBytes:J

    iget-wide v5, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileSize:J

    cmp-long v0, v1, v5

    if-gez v0, :cond_9

    .line 633
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->tryDownload()V

    goto/16 :goto_1

    .line 635
    :cond_9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, v10, p0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 650
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 651
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " EVENT_CANCEL_TRANSFER CancelReason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-virtual {v0, v5}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 653
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-virtual {v1, v9}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 654
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->downloadTask:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    if-eqz v0, :cond_b

    .line 655
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->cancel(Z)V

    .line 656
    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->downloadTask:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    .line 659
    :cond_b
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_0

    .line 663
    :cond_c
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    const-string v0, "delay_to_cancel_for_deregi"

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_10

    .line 665
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    const-class v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    .line 666
    invoke-virtual {p0, v9}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    int-to-long v2, p1

    mul-long/2addr v2, v7

    .line 665
    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    goto :goto_1

    .line 660
    :cond_d
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 661
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 640
    :cond_e
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " EVENT_REJECT_TRANSFER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->downloadTask:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    if-eqz p1, :cond_f

    .line 642
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->cancel(Z)V

    .line 643
    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->downloadTask:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    .line 645
    :cond_f
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-virtual {p1, v5}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 646
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :cond_10
    :goto_1
    move v2, v4

    :goto_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
