.class public Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;
.super Lcom/sec/internal/ims/core/handler/SmsHandler;
.source "ResipSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;
    }
.end annotation


# static fields
.field static final EVENT_NEW_INCOMING_SMS:I = 0x3

.field static final EVENT_RP_ACK_TIMEOUT:I = 0x5

.field static final EVENT_RRC_CONNECTION:I = 0x6

.field static final EVENT_SEND_SMS:I = 0x1

.field static final EVENT_SEND_SMS_COMPLETE:I = 0x2

.field static final EVENT_SET_MSG_MSGAPP_INFO_TO_SIP_UA:I = 0xb

.field static final EVENT_SET_MSG_MSGAPP_INFO_TO_SIP_UA_RESP:I = 0xc

.field static final EVENT_SMS_RP_ACK_RECEIVED:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "ResipSmsHandler"

.field static final RP_ACK_TIMEOUT_MILLIS:I = 0x927c0


# instance fields
.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field protected mPendingMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mSmsEventRegistrants:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 1

    .line 100
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/SmsHandler;-><init>(Landroid/os/Looper;)V

    .line 69
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mSmsEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 70
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 102
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 103
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object p1

    const/4 p2, 0x3

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p1, p0, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerNewIncomingSmsEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 p2, 0x4

    .line 106
    invoke-virtual {p1, p0, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerSmsRpAckEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 p2, 0x6

    .line 107
    invoke-virtual {p1, p0, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 109
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mPendingMessage:Ljava/util/Map;

    return-void
.end method

.method private getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 426
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method private getUa(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 421
    invoke-interface {p0, p2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method private getUa(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 0

    .line 415
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 416
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method private getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 431
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method private onNewIncomingSms(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 8

    .line 318
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;

    .line 319
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v0

    const-string v1, " contentType "

    const-string v2, " callId "

    const-string v3, "onNewIncomingSms: handle "

    const-string v4, "/"

    const-string v5, "ResipSmsHandler"

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->handle()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->callId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sca "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->scUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->contentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->contentSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 325
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->handle()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->callId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->contentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->contentSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->contentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->contentSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    new-instance v1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;-><init>()V

    .line 333
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->handle()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    .line 335
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->isRegistered(Z)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 340
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->content()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 341
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 342
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onNewIncomingSms: content length should be even. content : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 346
    :cond_2
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 347
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->callId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setCallID(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->scUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setSmscAddr(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setContentType(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->content()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 352
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mSmsEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_1
    const-string p0, "onNewIncomingSms: UserAgent is null or not registered."

    .line 336
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onRpAckTimeout(Ljava/lang/String;)V
    .locals 1

    .line 306
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mPendingMessage:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;

    if-nez p0, :cond_0

    return-void

    .line 312
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRpAckTimeout: callId "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResipSmsHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onRrcConnectionEventReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 2

    const-string v0, "ResipSmsHandler"

    const-string v1, "onRrcConnectionEventReceived:"

    .line 359
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;

    .line 362
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;->event()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 363
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;->REJECTED:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    invoke-direct {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;->event()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 366
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;->TIMER_EXPIRED:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    invoke-direct {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onSendMessage(Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;)V
    .locals 8

    .line 172
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->ua:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget-object v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->smsc:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->localuri:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->contentType:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->pdu:[B

    iget-boolean v5, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->isDeliveryReport:Z

    iget-object v6, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->callId:Ljava/lang/String;

    const/4 v7, 0x2

    .line 173
    invoke-virtual {p0, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 172
    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private onSendSmsResponse(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 10

    .line 177
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;

    .line 178
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;

    .line 179
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->handle()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSendSmsResponse: statusCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->statusCode()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " callId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->callId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResipSmsHandler"

    .line 181
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    const-string p0, "onSendSmsResponse: UserAgent is null."

    .line 186
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 190
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->statusCode()J

    move-result-wide v4

    const-wide/16 v6, 0xca

    cmp-long v2, v4, v6

    const/16 v4, 0xc

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->statusCode()J

    move-result-wide v6

    const-wide/16 v8, 0xc8

    cmp-long v2, v6, v8

    if-eqz v2, :cond_3

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSendSmsResponse: errorStr "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->errStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v2, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;-><init>()V

    .line 194
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 195
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setEventType(I)V

    .line 196
    iget v3, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->msgId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 197
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->callId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setCallID(Ljava/lang/String;)V

    .line 198
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mSmsEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 200
    new-instance v2, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;-><init>()V

    .line 201
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 202
    iget p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->msgId:I

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 203
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->callId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setCallID(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->content()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->content()Ljava/lang/String;

    move-result-object p1

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->content()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setContent(Ljava/lang/String;)V

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->contentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->contentSubType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setContentType(Ljava/lang/String;)V

    goto :goto_1

    .line 205
    :cond_2
    :goto_0
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setContentType(Ljava/lang/String;)V

    .line 210
    :goto_1
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 211
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->statusCode()J

    move-result-wide v3

    long-to-int p1, v3

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 212
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->errStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReason(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->retryAfter()J

    move-result-wide v3

    long-to-int p1, v3

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setRetryAfter(I)V

    .line 214
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setPhoneId(I)V

    .line 216
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mSmsEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void

    .line 221
    :cond_3
    new-instance v2, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;-><init>()V

    .line 222
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 223
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setEventType(I)V

    .line 224
    iget v3, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->msgId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 225
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->callId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setCallID(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->statusCode()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 227
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->errStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReason(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setPhoneId(I)V

    .line 230
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mSmsEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 236
    new-instance v2, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;-><init>()V

    .line 237
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 238
    iget v3, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->msgId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 239
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->callId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setCallID(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setContentType(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 242
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->statusCode()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 243
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->errStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReason(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setPhoneId(I)V

    .line 246
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mSmsEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 249
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->statusCode()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->errorCode:I

    .line 251
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mPendingMessage:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->callId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x5

    .line 252
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->callId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private onSetMsgAppInfoToSipUa(ILjava/lang/String;)V
    .locals 4

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetMsgAppInfoToSipUserAgent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipSmsHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 438
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    .line 439
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMsgSetMsgAppInfoToSipUa;->startRequestMsgSetMsgAppInfoToSipUa(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 440
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMsgSetMsgAppInfoToSipUa;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 441
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMsgSetMsgAppInfoToSipUa;->endRequestMsgSetMsgAppInfoToSipUa(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p2

    .line 443
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v2, 0x194

    .line 444
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v3, 0x26

    .line 445
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 446
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 448
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p2

    const-string/jumbo v3, "smsip"

    .line 450
    invoke-direct {p0, p1, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->getUa(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 452
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;

    const/16 v3, 0xc

    .line 453
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-direct {v1, v2, v0, p2, p0}, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;-><init>(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 452
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V

    goto :goto_0

    :cond_0
    const-string p0, "onSetMsgAppInfoToSipUserAgent: UserAgent is null."

    .line 455
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onSetMsgAppInfoToSipUaResp(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;)V
    .locals 1

    .line 460
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSetMsgAppInfoToSipUaResp: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResipSmsHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onSmsRpAckReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 6

    .line 257
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;->contentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;->contentSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSmsRpAckReceived: callId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;->callId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " contentType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResipSmsHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;-><init>()V

    .line 266
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;->handle()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v3

    if-nez v3, :cond_0

    const-string p0, "onSmsRpAckReceived: UserAgent is null."

    .line 269
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 273
    :cond_0
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 274
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;->callId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setCallID(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setContentType(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;->ackCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 277
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;->contentSubType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "vnd.3gpp2.sms"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mPendingMessage:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;->callId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;

    if-nez v0, :cond_1

    const-string p0, "onSmsRpAckReceived: unknown ack message."

    .line 280
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 284
    :cond_1
    iget v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->msgId:I

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 285
    iget v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->errorCode:I

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 287
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 288
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 289
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v0

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 293
    :cond_3
    :goto_0
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->isRegistered(Z)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "onSmsRpAckReceived: Not registered."

    .line 294
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xb

    .line 295
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setEventType(I)V

    const/16 p1, 0x3e7

    .line 296
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 297
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mSmsEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void

    .line 301
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mSmsEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 302
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;->callId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendSmsRpAckResponse(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: what "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipSmsHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 398
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->onRrcConnectionEventReceived(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 390
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->onRpAckTimeout(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->onSmsRpAckReceived(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 394
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->onNewIncomingSms(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 382
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->onSendSmsResponse(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 378
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->onSendMessage(Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;)V

    goto :goto_0

    .line 406
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->onSetMsgAppInfoToSipUaResp(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;)V

    goto :goto_0

    .line 402
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->onSetMsgAppInfoToSipUa(ILjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipSmsHandler"

    const-string v1, "registerForRrcConnectionEvent:"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForSMSEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 114
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mSmsEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;II)V
    .locals 13

    move-object v0, p0

    move-object/from16 v8, p3

    move/from16 v7, p7

    move/from16 v1, p8

    .line 128
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v2

    const-string v3, " regId "

    const-string v4, " msdId "

    const-string v5, "ResipSmsHandler"

    if-nez v2, :cond_0

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMessage: smsc "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " LocalUri : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " contentType "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v6, p1

    move-object v9, p2

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendMessage: contentType "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v1, :cond_1

    const-string/jumbo v1, "smsip"

    .line 138
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->getUa(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    goto :goto_1

    .line 140
    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    :goto_1
    move-object v2, v1

    if-eqz v2, :cond_3

    const/4 v10, 0x1

    .line 143
    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->isRegistered(Z)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 151
    :cond_2
    new-instance v11, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;

    move-object v1, v11

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p7

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BIZLjava/lang/String;)V

    .line 153
    invoke-virtual {p0, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_3
    :goto_2
    const-string v1, "sendMessage: Not registered."

    .line 144
    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v12, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    move-object v2, v1

    const/16 v3, 0xb

    const/16 v5, 0x3e7

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    move-object v1, v12

    move/from16 v4, p7

    move-object v7, v9

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;-><init>(Lcom/sec/ims/ImsRegistration;IIILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mSmsEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v12}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public sendSMSResponse(ILjava/lang/String;I)V
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSMSResponse(): [Call-ID] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [Status] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipSmsHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "smsip"

    .line 159
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->getUa(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 161
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendSmsResponse(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setMsgAppInfoToSipUa(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 167
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
