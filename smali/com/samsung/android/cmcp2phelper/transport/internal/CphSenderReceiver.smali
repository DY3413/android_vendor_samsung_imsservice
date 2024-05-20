.class public Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;
.super Ljava/lang/Object;
.source "CphSenderReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mCallbackHandler:Landroid/os/Handler;

.field protected mCallbackWhat:I

.field protected mContext:Landroid/content/Context;

.field protected mLength:I

.field protected mLocalBindingIP:Ljava/lang/String;

.field protected mLogHandler:Landroid/os/Handler;

.field protected mMessage:[B

.field protected mPort:I

.field protected mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

.field protected mTargetIP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcp2phelper/1.3.06/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableApplicationLog(Landroid/os/Handler;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mLogHandler:Landroid/os/Handler;

    return-void
.end method

.method protected handleReceivedMessage(Lcom/samsung/android/cmcp2phelper/data/CphMessage;)V
    .locals 14

    .line 50
    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    sget-object p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->LOG_TAG:Ljava/lang/String;

    const-string p1, "invalid message"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getLineId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    sget-object p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Line id not matched with received lineid"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getMsgType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 61
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mLocalBindingIP:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getResponderIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    invoke-static {p1}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->addToCache(Lcom/samsung/android/cmcp2phelper/data/CphMessage;)V

    .line 63
    sget-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local binding ip("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mLocalBindingIP:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") equals with response ip("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getResponderIP()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "), DO NOT NEED TO RESPONSE"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 67
    :cond_2
    new-instance v0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    const/4 v2, 0x2

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getMessageId()I

    move-result v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;-><init>(IDLjava/lang/String;Ljava/lang/String;I)V

    .line 68
    new-instance v1, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;

    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getResponderIP()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getResponderPort()I

    move-result v10

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v11

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v0

    array-length v12, v0

    const/4 v13, 0x1

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;-><init>(Ljava/lang/String;I[BII)V

    .line 69
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mLogHandler:Landroid/os/Handler;

    if-eqz p0, :cond_3

    .line 70
    invoke-virtual {v1, p0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->enableApplicationLog(Landroid/os/Handler;)V

    .line 72
    :cond_3
    invoke-static {v1}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->execute(Ljava/lang/Runnable;)V

    .line 73
    invoke-static {p1}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->addToCache(Lcom/samsung/android/cmcp2phelper/data/CphMessage;)V

    goto :goto_0

    .line 74
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getMsgType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    .line 75
    invoke-static {p1}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->addToCache(Lcom/samsung/android/cmcp2phelper/data/CphMessage;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 4

    .line 34
    sget-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mLogHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 41
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->mLogHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public run()V
    .locals 0

    return-void
.end method
