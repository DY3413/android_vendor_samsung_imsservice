.class public Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;
.super Landroid/os/Handler;
.source "ResipImdnHandler.java"


# static fields
.field private static final EVENT_IMDN_NOTI:I = 0x2

.field private static final EVENT_IMDN_RESPONSE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mImdnNotificationRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mImdnResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const-class v0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .registers 4

    .line 59
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->mImdnNotificationRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 54
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->mImdnResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    .line 60
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 61
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerImdnHandler(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private getImdnRecRouteOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;I)[I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;",
            ">;I)[I"
        }
    .end annotation

    .line 112
    new-array p0, p3, [I

    .line 114
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;

    .line 115
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->getRecordRouteDispName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 116
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->getRecordRouteUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 118
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->startImdnRecRoute(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 119
    invoke-static {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 120
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    add-int/lit8 v0, p3, 0x1

    .line 121
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->endImdnRecRoute(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    aput v1, p0, p3

    move p3, v0

    goto :goto_7

    :cond_36
    return-object p0
.end method

.method private handleImdnReceivedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .registers 13

    .line 266
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_10

    .line 267
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleImNotiReceivedNotify(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 271
    :cond_10
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImNotificationStatusReceived;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImNotificationStatusReceived;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImNotificationStatusReceived;

    .line 272
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImNotificationStatusReceived;->status()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;

    move-result-object v0

    if-nez v0, :cond_29

    .line 274
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleImNotiReceivedNotify(): param is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 280
    :cond_29
    :try_start_29
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImNotificationStatusReceived;->cpimDateTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImNotificationStatusReceived;->cpimDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_4d

    :cond_38
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V
    :try_end_3d
    .catch Ljava/text/ParseException; {:try_start_29 .. :try_end_3d} :catch_3e

    goto :goto_4d

    :catch_3e
    move-exception v1

    .line 282
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    :goto_4d
    move-object v9, v1

    .line 288
    :try_start_4e
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->imdnDateTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5d

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->imdnDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_5c
    .catch Ljava/text/ParseException; {:try_start_4e .. :try_end_5c} :catch_60

    goto :goto_5e

    :cond_5d
    move-object v1, v9

    :goto_5e
    move-object v4, v1

    goto :goto_6b

    :catch_60
    move-exception v1

    .line 290
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v9

    .line 294
    :goto_6b
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImNotificationStatusReceived;->uri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    if-nez v5, :cond_90

    .line 296
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid remote uri, return. uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImNotificationStatusReceived;->uri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_90
    const-string/jumbo v1, "tk"

    .line 300
    invoke-virtual {v5, v1}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9c

    .line 301
    invoke-virtual {v5, v1}, Lcom/sec/ims/util/ImsUri;->removeParam(Ljava/lang/String;)V

    .line 304
    :cond_9c
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->imdnMessageId()Ljava/lang/String;

    move-result-object v3

    .line 305
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImNotificationStatusReceived;->conversationId()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImNotificationStatusReceived;->userHandle()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-interface {v2, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsiByUserAgentHandle(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    .line 306
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->status(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->translateNotificationType(I)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImNotificationStatusReceived;->userAlias()Ljava/lang/String;

    move-result-object v10

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;-><init>(Ljava/lang/String;Ljava/util/Date;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Ljava/util/Date;Ljava/lang/String;)V

    .line 308
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleImNotiReceivedNotify: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->mImdnNotificationRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v1, v0}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method private handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .registers 4

    .line 81
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notifyid()I

    move-result v0

    const/16 v1, 0x2afe

    if-eq v0, v1, :cond_11

    const/16 v1, 0x2b07

    if-eq v0, v1, :cond_d

    goto :goto_14

    .line 87
    :cond_d
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->handleSendImdnResponseNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_14

    .line 83
    :cond_11
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->handleImdnReceivedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    :goto_14
    return-void
.end method

.method private handleSendImdnNotificationResponse(Landroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImNotiResponse;)V
    .registers 5

    .line 257
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendImdnNotificationResponse()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImNotiResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p2

    if-eqz p1, :cond_15

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method private handleSendImdnResponseNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .registers 7

    .line 313
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_10

    .line 314
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleSendImdnResponseNotify(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 318
    :cond_10
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImdnResponseReceived;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImdnResponseReceived;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImdnResponseReceived;

    .line 319
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImdnResponseReceived;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v0

    .line 321
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 322
    :goto_2a
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImdnResponseReceived;->imdnMessageIdLength()I

    move-result v4

    if-ge v3, v4, :cond_3a

    .line 323
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImdnResponseReceived;->imdnMessageId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 326
    :cond_3a
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnResponseReceivedEvent;

    invoke-direct {p1, v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnResponseReceivedEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/util/Collection;)V

    .line 327
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSendImdnResponseNotify() Event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->mImdnResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method private parseStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    if-eqz p1, :cond_3

    goto :goto_5

    :cond_3
    const-string p1, ""

    :goto_5
    return-object p1
.end method

.method private sendCallback(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 3

    const/4 p0, 0x0

    .line 359
    invoke-static {p1, p2, p0}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 360
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/UserAgent;ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V
    .registers 6

    if-nez p1, :cond_b

    .line 352
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendRequestToStack(): UserAgent not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 355
    :cond_b
    new-instance p0, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;-><init>(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V

    return-void
.end method

.method private translateNotificationType(I)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .registers 2

    if-eqz p1, :cond_1d

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1a

    const/4 p0, 0x2

    if-eq p1, p0, :cond_17

    const/4 p0, 0x3

    if-eq p1, p0, :cond_14

    const/4 p0, 0x4

    if-eq p1, p0, :cond_11

    .line 346
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object p0

    .line 342
    :cond_11
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object p0

    .line 340
    :cond_14
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_MMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object p0

    .line 338
    :cond_17
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_SMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object p0

    .line 336
    :cond_1a
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object p0

    .line 334
    :cond_1d
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_24

    .line 73
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_24

    .line 69
    :cond_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 70
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImNotiResponse;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->handleSendImdnNotificationResponse(Landroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImNotiResponse;)V

    :goto_24
    return-void
.end method

.method registerForImdnNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 96
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->mImdnNotificationRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method registerForImdnResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 104
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->mImdnResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method sendDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;II)V
    .registers 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    move/from16 v3, p3

    .line 127
    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendDispositionNotification(): service = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", sessionHandle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendDispositionNotification(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v5, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v5

    if-eqz v0, :cond_5d

    const/4 v6, 0x2

    if-eq v0, v6, :cond_52

    const-string v6, "im"

    .line 142
    iget-object v7, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mOwnImsi:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    goto :goto_68

    :cond_52
    const-string v6, "ft"

    .line 134
    iget-object v7, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mOwnImsi:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    goto :goto_68

    :cond_5d
    const-string/jumbo v6, "slm"

    .line 137
    iget-object v7, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mOwnImsi:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    :goto_68
    if-nez v5, :cond_81

    const-string/jumbo v0, "sendDispositionNotification(): UserAgent not found."

    .line 145
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_80

    .line 147
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_80
    return-void

    .line 152
    :cond_81
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v6

    .line 154
    new-instance v7, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 160
    :try_start_8b
    iget-object v9, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mUri:Lcom/sec/ims/util/ImsUri;
    :try_end_8d
    .catch Ljava/lang/NullPointerException; {:try_start_8b .. :try_end_8d} :catch_25a

    const-string v10, ""

    if-nez v9, :cond_93

    move-object v9, v10

    goto :goto_97

    :cond_93
    :try_start_93
    invoke-virtual {v9}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 161
    :goto_97
    invoke-virtual {v7, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 162
    iget-object v11, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mConversationId:Ljava/lang/String;

    if-eqz v11, :cond_a0

    goto :goto_a1

    :cond_a0
    move-object v11, v10

    :goto_a1
    invoke-virtual {v7, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 163
    iget-object v12, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mContributionId:Ljava/lang/String;

    if-eqz v12, :cond_aa

    goto :goto_ab

    :cond_aa
    move-object v12, v10

    :goto_ab
    invoke-virtual {v7, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 164
    iget-object v13, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mDeviceId:Ljava/lang/String;

    if-eqz v13, :cond_b4

    move-object v10, v13

    :cond_b4
    invoke-virtual {v7, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 165
    iget-object v13, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mCpimDate:Ljava/util/Date;

    invoke-static {v13}, Lcom/sec/internal/helper/Iso8601;->formatMillis(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 166
    iget-object v14, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mUserAlias:Ljava/lang/String;

    invoke-direct {v1, v14}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 168
    iget-object v15, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImExtensionMNOHeaders:Ljava/util/Map;
    :try_end_d2
    .catch Ljava/lang/NullPointerException; {:try_start_93 .. :try_end_d2} :catch_25a

    const-string/jumbo v8, "sendDispositionNotification(): headers "

    const/16 v17, -0x1

    if-eqz v15, :cond_fc

    :try_start_d9
    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_fc

    .line 169
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v5

    iget-object v5, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImExtensionMNOHeaders:Ljava/util/Map;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v4, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImExtensionMNOHeaders:Ljava/util/Map;

    invoke-static {v7, v4}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateStackImExtensionHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/Map;)I

    move-result v4

    goto :goto_100

    :cond_fc
    move-object/from16 v18, v5

    move/from16 v4, v17

    .line 173
    :goto_100
    iget-object v5, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImdnDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 175
    iget-object v15, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImdnDataList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v19, 0x0

    :goto_110
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20
    :try_end_114
    .catch Ljava/lang/NullPointerException; {:try_start_d9 .. :try_end_114} :catch_25a

    move/from16 v21, v14

    if-eqz v20, :cond_1b6

    :try_start_118
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v14, v20

    check-cast v14, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;

    move-object/from16 v20, v15

    .line 177
    iget-object v15, v14, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnRecRouteList:Ljava/util/List;
    :try_end_124
    .catch Ljava/lang/NullPointerException; {:try_start_118 .. :try_end_124} :catch_256

    move/from16 v22, v4

    if-eqz v15, :cond_135

    .line 178
    :try_start_128
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v7, v15, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->getImdnRecRouteOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;I)[I

    move-result-object v4

    .line 179
    invoke-static {v7, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->createImdnRecRouteVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v4
    :try_end_134
    .catch Ljava/lang/NullPointerException; {:try_start_128 .. :try_end_134} :catch_25a

    goto :goto_137

    :cond_135
    move/from16 v4, v17

    .line 181
    :goto_137
    :try_start_137
    iget-object v15, v14, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnId:Ljava/lang/String;

    invoke-direct {v1, v15}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    move-object/from16 v23, v8

    .line 182
    iget-object v8, v14, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnDate:Ljava/util/Date;

    invoke-static {v8}, Lcom/sec/internal/helper/Iso8601;->formatMillis(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    move/from16 v24, v10

    .line 184
    iget-object v10, v14, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnOriginalTo:Ljava/lang/String;
    :try_end_155
    .catch Ljava/lang/NullPointerException; {:try_start_137 .. :try_end_155} :catch_256

    if-eqz v10, :cond_160

    .line 185
    :try_start_157
    invoke-direct {v1, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10
    :try_end_15f
    .catch Ljava/lang/NullPointerException; {:try_start_157 .. :try_end_15f} :catch_25a

    goto :goto_162

    :cond_160
    move/from16 v10, v17

    .line 188
    :goto_162
    :try_start_162
    new-instance v1, Ljava/util/HashSet;

    move/from16 v25, v12

    const/4 v12, 0x1

    new-array v12, v12, [Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move/from16 v26, v11

    iget-object v11, v14, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    const/16 v16, 0x0

    aput-object v11, v12, v16

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFwImdnNoti(Ljava/util/Set;)[I

    move-result-object v1

    .line 189
    invoke-static {v7, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->createStatusVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v1

    .line 191
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->startImNotificationParam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 192
    invoke-static {v7, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->addImdnMessageId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 193
    invoke-static {v7, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->addStatus(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 194
    invoke-static {v7, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->addImdnDateTime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 196
    iget-object v1, v14, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnRecRouteList:Ljava/util/List;

    if-eqz v1, :cond_193

    .line 197
    invoke-static {v7, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->addImdnRecRoute(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 200
    :cond_193
    iget-object v1, v14, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnOriginalTo:Ljava/lang/String;

    if-eqz v1, :cond_19a

    .line 201
    invoke-static {v7, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->addImdnOriginalTo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_19a
    add-int/lit8 v1, v19, 0x1

    .line 204
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->endImNotificationParam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    aput v4, v5, v19

    move/from16 v19, v1

    move-object/from16 v15, v20

    move/from16 v14, v21

    move/from16 v4, v22

    move-object/from16 v8, v23

    move/from16 v10, v24

    move/from16 v12, v25

    move/from16 v11, v26

    move-object/from16 v1, p0

    goto/16 :goto_110

    :cond_1b6
    move/from16 v22, v4

    move-object/from16 v23, v8

    move/from16 v24, v10

    move/from16 v26, v11

    move/from16 v25, v12

    .line 207
    invoke-static {v7, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->createNotificationsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v1
    :try_end_1c4
    .catch Ljava/lang/NullPointerException; {:try_start_162 .. :try_end_1c4} :catch_256

    .line 216
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->startRequestSendImNotificationStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v3, v3

    .line 217
    invoke-static {v7, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 218
    invoke-static {v7, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addNotifications(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    int-to-long v3, v6

    .line 219
    invoke-static {v7, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 220
    invoke-static {v7, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 221
    invoke-static {v7, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addService(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 222
    invoke-static {v7, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addCpimDateTime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 224
    iget-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mConversationId:Ljava/lang/String;

    if-eqz v0, :cond_1e4

    move/from16 v0, v26

    .line 225
    invoke-static {v7, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addConversationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 228
    :cond_1e4
    iget-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mContributionId:Ljava/lang/String;

    if-eqz v0, :cond_1ed

    move/from16 v0, v25

    .line 229
    invoke-static {v7, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 232
    :cond_1ed
    iget-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_1f6

    move/from16 v0, v24

    .line 233
    invoke-static {v7, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addDeviceId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 236
    :cond_1f6
    iget-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImExtensionMNOHeaders:Ljava/util/Map;

    if-eqz v0, :cond_21d

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21d

    .line 237
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v23

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImExtensionMNOHeaders:Ljava/util/Map;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v4, v22

    .line 239
    invoke-static {v7, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addExtension(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 241
    :cond_21d
    iget-boolean v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mIsGroupChat:Z

    invoke-static {v7, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addIsGroupChat(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 242
    iget-boolean v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mIsBotSessionAnonymized:Z

    invoke-static {v7, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addIsBotSessionAnonymized(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    move/from16 v0, v21

    .line 243
    invoke-static {v7, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 244
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->endRequestSendImNotificationStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 247
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x1fa

    .line 248
    invoke-static {v7, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x2d

    .line 249
    invoke-static {v7, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 250
    invoke-static {v7, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 251
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    const/16 v3, 0x1fa

    .line 253
    iget-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mCallback:Landroid/os/Message;

    const/4 v2, 0x1

    move-object/from16 v1, p0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v2, v18

    move-object v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/UserAgent;ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void

    :catch_256
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_25b

    :catch_25a
    move-exception v0

    .line 210
    :goto_25b
    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discard sendDispositionNotification(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_285

    .line 212
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_285
    return-void
.end method

.method unregisterForImdnNotification(Landroid/os/Handler;)V
    .registers 2

    .line 100
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->mImdnNotificationRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method unregisterForImdnResponse(Landroid/os/Handler;)V
    .registers 2

    .line 108
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->mImdnResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
