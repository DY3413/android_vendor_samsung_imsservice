.class public Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
.super Lcom/sec/internal/helper/StateMachine;
.source "CloudMessageServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;,
        Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState;,
        Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$DefaultState;
    }
.end annotation


# static fields
.field private static final EVENT_CREATE_PARTICIPANT:I = 0xd

.field private static final EVENT_CREATE_SESSION:I = 0xe

.field private static final EVENT_DELETE_RCSMESSAGELIST_USINGCHATID:I = 0xb

.field private static final EVENT_DELETE_RCSMESSAGELIST_USINGIMDNID:I = 0x10

.field private static final EVENT_DELETE_RCSMESSAGELIST_USINGMSGID:I = 0xa

.field private static final EVENT_GETPROFILE:I = 0x3

.field private static final EVENT_ON_IMSREGISTERED:I = 0xf

.field private static final EVENT_READ_RCSMESSAGE_LIST:I = 0xc

.field private static final EVENT_RECEIVE_RCS_MESSAGE:I = 0x8

.field private static final EVENT_SENT_RCS_MESSAGE:I = 0x9

.field private static final EVENT_SERVICE_ACTIVE:I = 0x6

.field private static final EVENT_SERVICE_CONNECTED:I = 0x4

.field private static final EVENT_SERVICE_DEACTIVE:I = 0x7

.field private static final EVENT_SERVICE_DISCONNECTED:I = 0x5

.field private static final EVENT_SIM_READY:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x2

.field private static final mReadImsProfileValueDelay:I = 0x4b0


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private isCmsServiceActive:Z

.field private mCloudMessageConnection:Landroid/content/ServiceConnection;

.field private mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/sec/internal/helper/State;

.field private mServiceConnectedState:Lcom/sec/internal/helper/State;

.field private mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field private mSimReadyState:Lcom/sec/internal/helper/State;

.field private mSimSlot:I


# direct methods
.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultState(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/internal/helper/State;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mDefaultState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceConnectedState(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/internal/helper/State;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mServiceConnectedState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSimManager(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSimReadyState(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/internal/helper/State;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimReadyState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;Lcom/sec/ims/ICentralMsgStoreService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    return-void
.end method

.method static bridge synthetic -$$Nest$monDisableCms(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onDisableCms()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monProfileReady(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onProfileReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monRCSDbReady(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onRCSDbReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSimReady(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onSimReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSimRemoved(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onSimRemoved()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mserviceNotBindYet(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->serviceNotBindYet()V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloudMessageServiceWrapper["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 283
    const-class p3, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    .line 306
    new-instance p3, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$DefaultState;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$DefaultState;-><init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$DefaultState-IA;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mDefaultState:Lcom/sec/internal/helper/State;

    .line 307
    new-instance p3, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState;

    invoke-direct {p3, p0, v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState;-><init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState-IA;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimReadyState:Lcom/sec/internal/helper/State;

    .line 308
    new-instance p3, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;

    invoke-direct {p3, p0, v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;-><init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState-IA;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mServiceConnectedState:Lcom/sec/internal/helper/State;

    .line 309
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    const/4 p3, 0x0

    .line 310
    iput-boolean p3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    .line 523
    new-instance p3, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$1;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$1;-><init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageConnection:Landroid/content/ServiceConnection;

    .line 314
    iput p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    .line 315
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    .line 316
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    .line 317
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->initStates()V

    .line 318
    iget p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-eqz p1, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3, v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 321
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x2

    invoke-interface {p1, p2, p3, v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 322
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-interface {p1, p0, p3, v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private getJsonString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 373
    new-instance p0, Lcom/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 374
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string/jumbo v1, "type"

    .line 375
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "id"

    invoke-virtual {v0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "imdn_message_id"

    invoke-virtual {v0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "preferred_line"

    .line 378
    invoke-virtual {v0, p1, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 380
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getJsonStringChatIdList(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 415
    new-instance p0, Lcom/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 416
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 417
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string/jumbo v2, "type"

    const-string v3, "CHAT"

    .line 418
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "chatid"

    .line 419
    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imdn_message_id"

    const-string v2, ""

    .line 420
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "preferred_line"

    .line 421
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getJsonStringMsgImdnList(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 400
    new-instance p0, Lcom/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 401
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string/jumbo v2, "type"

    const-string v3, "CHAT"

    .line 406
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "imdn_message_id"

    .line 407
    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "preferred_line"

    const-string v2, ""

    .line 408
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getJsonStringMsgList(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 384
    new-instance p0, Lcom/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 385
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string/jumbo v2, "type"

    const-string v3, "CHAT"

    .line 390
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "id"

    .line 391
    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imdn_message_id"

    const-string v2, ""

    .line 392
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "preferred_line"

    .line 393
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 396
    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initStates()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 328
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimReadyState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 329
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mServiceConnectedState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 330
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 331
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->start()V

    return-void
.end method

.method private notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v0, :cond_0

    .line 590
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "sim_status"

    .line 591
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "cms_profile_event"

    .line 593
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 595
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sec/ims/ICentralMsgStoreService;->onRCSDBReady(Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->serviceNotBindYet()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 600
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyStatusChanged Failed due to Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onDisableCms()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDisableCms: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SimReady"

    const-string v1, "CmsProfileDisable"

    .line 513
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onProfileReady()V
    .locals 6

    .line 335
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onProfileReady: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    const-string v1, "services"

    const-string v2, ""

    .line 337
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, ","

    .line 341
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 342
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "services: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " isCmsServiceActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " cloudsvcstatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    invoke-static {v0}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AIO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "cms"

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 348
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 349
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 351
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->connect()V

    goto :goto_1

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Central message store not enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    .line 355
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_1
    return-void
.end method

.method private onRCSDbReady()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRCSDbReady: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SimReady"

    const-string v1, "CmsProfileEnable"

    .line 507
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onSimReady()V
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSimReady"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const-wide/16 v1, 0x4b0

    .line 361
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method

.method private onSimRemoved()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSimRemoved: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SimRemoved"

    const-string v1, "CmsProfileDisable"

    .line 519
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private serviceNotBindYet()V
    .locals 1

    .line 365
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Service is not binded yet"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 5

    .line 561
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 562
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sec/internal/ims/cmstore/CloudMessageService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appName"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    iget v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    const-string/jumbo v3, "sim_slot"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 566
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 568
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bind to cloud message service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    return-void
.end method

.method public createParticipant(Ljava/lang/String;)V
    .locals 3

    .line 487
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_0

    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createParticipant : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd

    .line 491
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 492
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 493
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public createSession(Ljava/lang/String;)V
    .locals 1

    .line 497
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xe

    .line 500
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 501
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 502
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deleteRCSMessageListUsingChatId(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteRCSMessageListUsingChatId, isCmsServiceActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xb

    .line 471
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 472
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->getJsonStringChatIdList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 473
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deleteRCSMessageListUsingImdnId(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteRCSMessageListUsingImdnId, isCmsServiceActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x10

    .line 461
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 462
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->getJsonStringMsgImdnList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 463
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deleteRCSMessageListUsingMsgId(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteRCSMessageListUsingMsgId, isCmsServiceActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa

    .line 451
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 452
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->getJsonStringMsgList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 453
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 575
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 577
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 582
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 584
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    return-void
.end method

.method public getImsi()Ljava/lang/String;
    .locals 0

    .line 369
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onImsRegistered(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isCmsServiceActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xf

    .line 552
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 553
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 554
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public readRCSMessageList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readRCSMessageList, isCmsServiceActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xc

    .line 481
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 482
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->getJsonStringMsgImdnList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 483
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public receiveRCSMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 428
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 431
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v1, "CHAT"

    .line 432
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->getJsonString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 433
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public sentRCSMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sentRCSMessage, isCmsServiceActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x9

    .line 441
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v1, "CHAT"

    .line 442
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->getJsonString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 443
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method
