.class final Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;
.super Lcom/sec/internal/helper/State;
.source "FtHttpIncomingMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

.field thumbnailDownloadTask:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)V

    return-void
.end method

.method private downloadThumbnail(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 16

    move-object/from16 v0, p0

    .line 517
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "ft_internet_pdn"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    .line 518
    new-instance v15, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFtHttpUserAgent()Ljava/lang/String;

    move-result-object v10

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 519
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNetwork:Landroid/net/Network;

    :goto_0
    move-object v11, v1

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpTrustAllCerts()Z

    move-result v12

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpDLUrl()Ljava/lang/String;

    move-result-object v13

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    move-object/from16 v3, p2

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->getParamsforDl(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState$1;

    move-wide/from16 v4, p3

    invoke-direct {v1, v0, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState$1;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;J)V

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    move-object v2, v15

    move-object/from16 v8, p1

    move-object/from16 p1, v15

    move-object v15, v1

    invoke-direct/range {v2 .. v15}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;-><init>(Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Network;ZLjava/lang/String;Ljava/util/Map;Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;)V

    .line 551
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result v2

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-virtual {v4}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;)V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->thumbnailDownloadTask:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    .line 553
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->THREAD_THUMBNAIL_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->execute(Ljava/util/concurrent/Executor;)V

    goto :goto_1

    .line 555
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->onThumbnailDownloadFailed()V

    :goto_1
    return-void
.end method

.method private getThumbnailSize(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;)J
    .locals 4

    if-eqz p1, :cond_0

    .line 512
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->isThumbnailExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getThumbnailFileSize()J

    move-result-wide v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->MAX_SIZE_DOWNLOAD_THUMBNAIL:J

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    .line 513
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getThumbnailFileSize()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method private handleReceiverTransferEvent()V
    .locals 5

    const-string v0, "."

    .line 431
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleReceiverTransferEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mBody:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateDeliveredTimestamp(J)V

    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mBody:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->parse(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    move-result-object v1

    .line 436
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getDataUrl()Ljava/net/URL;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$fputmDataUrl(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;Ljava/net/URL;)V

    .line 437
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    const-string v3, "fthttp_ignore_when_untrusted_url"

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$fgetmDataUrl(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;)Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$misFtHttpUrlTrusted(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 440
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FT["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] was silently cancelled due to untrusted URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$fgetmDataUrl(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;)Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->INVALID_URL_TEMPLATE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 442
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 443
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void

    .line 446
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    .line 447
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getFileSize()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileSize:J

    .line 448
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getContentType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContentType:Ljava/lang/String;

    .line 449
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContentType:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 450
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getDataUntil()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileExpire:Ljava/lang/String;

    .line 451
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getFileDisposition()Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileDisposition:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    .line 452
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getPlayingLength()I

    move-result v3

    iput v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mPlayingLength:I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sec/internal/helper/translate/TranslationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 456
    :try_start_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 457
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$fgetmDataUrl(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;)Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$fgetmDataUrl(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;)Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    .line 458
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 459
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 460
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/helper/translate/FileExtensionTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    goto :goto_0

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sec/internal/helper/translate/TranslationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 466
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 469
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->tryThumbnailDownload()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sec/internal/helper/translate/TranslationException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 471
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 472
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 474
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method private isAutodownloadBlocked()Z
    .locals 8

    const/4 v0, 0x1

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->MMS_PREFERENCE_PROVIDER_DATASAVER_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "false"

    if-eqz v1, :cond_0

    .line 410
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "pref_value"

    .line 411
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 413
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " enable datasaver : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "true"

    .line 414
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 417
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0

    :cond_2
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 407
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    .line 419
    :catch_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isAutodownloadBlocked: IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsGroupChat:Z

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "block_ft_auto_download_for_gc"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    .line 423
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/helper/BlockedNumberUtil;->isBlockedNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 424
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "It is blocked number."

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private onThumbnailDownloadFailed()V
    .locals 2

    .line 507
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    const/16 v0, 0x68

    .line 508
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method private tryThumbnailDownload()V
    .locals 8

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mBody:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->parse(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    move-result-object v0

    .line 482
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->getThumbnailSize(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 485
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    const/16 v1, 0x68

    .line 486
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 490
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v4, v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailContentType:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 491
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getThumbnailContentType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailContentType:Ljava/lang/String;

    .line 494
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v4, v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 495
    iget-object v4, v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    iget-object v5, v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailContentType:Ljava/lang/String;

    iget-object v6, v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    .line 496
    invoke-interface {v6}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onRequestIncomingFtTransferPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    .line 495
    invoke-static {v4, v5, v6, v7}, Lcom/sec/internal/helper/FilePathGenerator;->generateUniqueThumbnailPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    .line 498
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tryThumbnailDownload: thumbnailContentType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailContentType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", thumbnailPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getThumbnailDataUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, ""

    :goto_0
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->downloadThumbnail(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 501
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 502
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->onThumbnailDownloadFailed()V

    :goto_1
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 272
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter msgId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11

    .line 279
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_12

    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    const/16 v1, 0xa

    if-eq v0, v1, :cond_f

    const/16 v1, 0x68

    const/16 v4, 0x6c

    const/4 v5, 0x0

    if-eq v0, v4, :cond_d

    const/16 v6, 0x32

    const/16 v7, 0x33

    if-eq v0, v6, :cond_c

    if-eq v0, v7, :cond_b

    packed-switch v0, :pswitch_data_0

    move v2, v3

    goto/16 :goto_1

    .line 358
    :pswitch_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->thumbnailDownloadTask:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    if-eqz p1, :cond_0

    .line 359
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->cancel(Z)V

    .line 360
    iput-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->thumbnailDownloadTask:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    .line 362
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iput-object v5, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    .line 363
    iput-boolean v3, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsAutoDownload:Z

    .line 364
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onTransferReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 365
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v1, v3, :cond_1

    .line 366
    iget-object p1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    iget-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsGroupChat:Z

    invoke-interface {p1, v0, v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V

    .line 367
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_NOTIFICATION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 368
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_1

    .line 370
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmAcceptingState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$AcceptingState;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_1

    .line 346
    :pswitch_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRetryCount()I

    move-result v7

    invoke-interface {v0, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getFtHttpRetryInterval(II)I

    move-result v0

    if-ltz v0, :cond_2

    .line 348
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_DOWNLOAD_THUMBNAIL_FAILED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " retry download after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " secs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v4, v3, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    int-to-long v0, v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 351
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iput-object v5, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    .line 352
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 298
    :pswitch_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtWarnSize()J

    move-result-wide v8

    .line 299
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getMaxSizeFileTrIncoming()J

    move-result-wide v0

    .line 300
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iput-boolean v3, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsAutoDownload:Z

    .line 303
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_DOWNLOAD_THUMBNAIL_COMPLETED: maxSizeFileTrIncoming("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "), warnSizeFileTr("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    const-string v4, "block_msg"

    invoke-interface {p1, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 307
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    .line 306
    invoke-static {p1, v4}, Lcom/sec/internal/helper/BlockedNumberUtil;->isBlockedNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 308
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "from blocked number.. go to CanceledState."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 310
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    move-result-object p1

    goto/16 :goto_0

    .line 311
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v4, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v5, v6, :cond_4

    .line 312
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_NOTIFICATION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object v0, v4, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 313
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    const-wide/16 v5, 0x0

    cmp-long p1, v0, v5

    if-eqz p1, :cond_5

    .line 314
    iget-wide v4, v4, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileSize:J

    cmp-long p1, v4, v0

    if-lez p1, :cond_5

    .line 315
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Auto cancel file transfer, max size exceeded"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->FORBIDDEN_MAX_SIZE_EXCEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .line 317
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 318
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    move-result-object p1

    goto/16 :goto_0

    .line 319
    :cond_5
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-wide v4, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileSize:J

    iget-wide v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTransferredBytes:J

    sub-long/2addr v4, v0

    invoke-static {p1, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->checkAvailableStorage(Ljava/lang/String;J)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 320
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtCancelMemoryFull()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 321
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Auto cancel file transfer, disk space not available"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .line 323
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->LOW_MEMORY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 324
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    move-result-object p1

    goto/16 :goto_0

    .line 326
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtAutAccept()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    .line 327
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    const-string v0, "fthttp_force_auto_accept_on_wifi"

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isWifiConnected()Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    .line 328
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    const-string v0, "auto_accept_rram"

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContentType:Ljava/lang/String;

    const-string v0, "audio/amr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mPlayingLength:I

    if-lez p1, :cond_9

    :cond_8
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    .line 329
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isBMode(Z)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    .line 330
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v5, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNetwork:Landroid/net/Network;

    iget-wide v6, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileSize:J

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isWifiConnected()Z

    move-result v10

    invoke-interface/range {v4 .. v10}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isWarnSizeFile(Landroid/net/Network;JJZ)Z

    move-result p1

    if-nez p1, :cond_9

    .line 331
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->isAutodownloadBlocked()Z

    move-result p1

    if-nez p1, :cond_9

    .line 332
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Enable auto download"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iput-boolean v2, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsAutoDownload:Z

    .line 335
    :cond_9
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmAcceptingState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$AcceptingState;

    move-result-object p1

    .line 338
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onTransferReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v1, v3, :cond_a

    .line 340
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    iget-boolean v5, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsGroupChat:Z

    invoke-interface {v3, v0, v4, v1, v5}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V

    .line 342
    :cond_a
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_1

    .line 393
    :cond_b
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 394
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_1

    .line 388
    :cond_c
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-virtual {p1, v7}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 389
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->handleReceiverTransferEvent()V

    goto/16 :goto_1

    .line 375
    :cond_d
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_RETRY_THUMBNAIL_DOWNLOAD mId="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", Retry count="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRetryCount()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-virtual {p1, v4}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 377
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->checkAvailableRetry()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRetryCount()I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_e

    .line 378
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRetryCount()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setRetryCount(I)V

    .line 379
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->tryThumbnailDownload()V

    goto :goto_1

    .line 381
    :cond_e
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setRetryCount(I)V

    .line 382
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iput-object v5, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    .line 383
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 281
    :cond_f
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->needToAcquireNetworkForFT()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 282
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    const-string v0, "ft_net_capability"

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->acquireNetworkForFT(I)V

    goto :goto_1

    .line 285
    :cond_10
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->handleReceiverTransferEvent()V

    goto :goto_1

    .line 289
    :cond_11
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 290
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmCanceledState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 294
    :cond_12
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->-$$Nest$fgetmInProgressState(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
