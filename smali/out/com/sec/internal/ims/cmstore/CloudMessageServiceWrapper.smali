.class public Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
.super Lcom/sec/internal/helper/StateMachine;
.source "CloudMessageServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$DefaultState;,
        Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState;,
        Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;
    }
.end annotation


# static fields
.field private static final EVENT_CANCEL_RCSMESSAGE_LIST:I = 0x13

.field private static final EVENT_CMS_SERVICE_STARTED:I = 0x14

.field private static final EVENT_CREATE_PARTICIPANT:I = 0xd

.field private static final EVENT_CREATE_SESSION:I = 0xe

.field private static final EVENT_DEFAULT_SMS_APP_CHANGED:I = 0x11

.field private static final EVENT_DELETE_RCSMESSAGELIST_USINGCHATID:I = 0xb

.field private static final EVENT_DELETE_RCSMESSAGELIST_USINGIMDNID:I = 0x10

.field private static final EVENT_DELETE_RCSMESSAGELIST_USINGMSGID:I = 0xa

.field private static final EVENT_GETPROFILE:I = 0x3

.field private static final EVENT_ON_IMSDEREGISTERED:I = 0x12

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
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultState(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/internal/helper/State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mDefaultState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceConnectedState(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/internal/helper/State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mServiceConnectedState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSimManager(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSimReadyState(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/internal/helper/State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimReadyState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;Lcom/sec/ims/ICentralMsgStoreService;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    return-void
.end method

.method static bridge synthetic -$$Nest$misCmsEnabled(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monDisableCms(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onDisableCms()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monProfileReady(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onProfileReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monRCSDbReady(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onRCSDbReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSimReady(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onSimReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSimRemoved(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onSimRemoved()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mserviceNotBindYet(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->serviceNotBindYet()V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;)V
    .registers 6

    .line 376
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

    .line 342
    const-class p3, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    .line 369
    new-instance p3, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$DefaultState;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$DefaultState;-><init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$DefaultState-IA;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mDefaultState:Lcom/sec/internal/helper/State;

    .line 370
    new-instance p3, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState;

    invoke-direct {p3, p0, v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState;-><init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState-IA;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimReadyState:Lcom/sec/internal/helper/State;

    .line 371
    new-instance p3, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;

    invoke-direct {p3, p0, v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;-><init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState-IA;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mServiceConnectedState:Lcom/sec/internal/helper/State;

    .line 372
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    const/4 p3, 0x0

    .line 373
    iput-boolean p3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    .line 563
    new-instance p3, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$2;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$2;-><init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageConnection:Landroid/content/ServiceConnection;

    .line 377
    iput p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    .line 378
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

    .line 379
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    .line 380
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->initStates()V

    .line 381
    iget p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-eqz p1, :cond_8c

    .line 383
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3, v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 384
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x2

    invoke-interface {p1, p2, p3, v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 385
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-interface {p1, p2, p3, v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 387
    :cond_8c
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->registerCMSStartIntent()V

    return-void
.end method

.method private getJsonStringChatIdList(Ljava/util/List;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 439
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;->CHAT:Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    invoke-static {p1, p0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getJsonElements(Ljava/util/List;Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initStates()V
    .registers 3

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 392
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimReadyState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 393
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mServiceConnectedState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 394
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 395
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->start()V

    return-void
.end method

.method private isCmsEnabled()Z
    .registers 3

    .line 429
    iget p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    const-string/jumbo v0, "services"

    const-string v1, ""

    .line 430
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1f

    const-string v1, ","

    .line 433
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1f
    const-string p0, "cms"

    .line 435
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 656
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v0, :cond_1e

    .line 657
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "sim_status"

    .line 658
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "cms_profile_event"

    .line 660
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 662
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sec/ims/ICentralMsgStoreService;->onRCSDBReady(Ljava/lang/String;)V

    goto :goto_3d

    .line 664
    :cond_1e
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->serviceNotBindYet()V
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_21} :catch_22
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_21} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_3d

    :catch_22
    move-exception p1

    .line 667
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

    :goto_3d
    return-void
.end method

.method private onDisableCms()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDisableCms: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SimReady"

    const-string v1, "CmsProfileDisable"

    .line 538
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onProfileReady()V
    .registers 5

    .line 399
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsEnabled()Z

    move-result v0

    .line 400
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProfileReady isCMSServiceEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isCmsServiceActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " cloudsvcstatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    goto :goto_29

    :cond_28
    const/4 v3, 0x0

    :goto_29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    invoke-static {v1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AIO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    if-eqz v0, :cond_54

    .line 404
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v0, :cond_50

    const/4 v0, 0x4

    .line 405
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_5f

    .line 407
    :cond_50
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->connect()V

    goto :goto_5f

    .line 410
    :cond_54
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Central message store not enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    .line 411
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_5f
    return-void
.end method

.method private onRCSDbReady()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRCSDbReady: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SimReady"

    const-string v1, "CmsProfileEnable"

    .line 532
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onSimReady()V
    .registers 4

    .line 416
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSimReady"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const-wide/16 v1, 0x4b0

    .line 417
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method

.method private onSimRemoved()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSimRemoved: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SimRemoved"

    const-string v1, "CmsProfileDisable"

    .line 544
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private serviceNotBindYet()V
    .registers 2

    .line 421
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Service is not binded yet"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cancelRCSMessageList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelRCSMessageList, isCmsServiceActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    const/16 v0, 0x13

    .line 506
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 507
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;->IMDN:Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    invoke-static {p1, v1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getJsonElements(Ljava/util/List;Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 508
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public connect()V
    .registers 6

    .line 620
    iget v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 621
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect mCloudMsgService:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 623
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_ConfigOpBackupSync"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    .line 624
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x21

    if-le v0, v1, :cond_52

    .line 625
    :cond_4a
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "AMBS has been disabled for this model"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 628
    :cond_52
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    const/4 v1, 0x1

    if-nez v0, :cond_b0

    .line 629
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sec/internal/ims/cmstore/CloudMessageService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 630
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

    .line 631
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appName"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "sim_slot"

    .line 632
    iget v3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 633
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 635
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bind to cloud message service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_b0
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    return-void
.end method

.method public createParticipant(Ljava/lang/String;)V
    .registers 5

    .line 512
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_5

    return-void

    .line 515
    :cond_5
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

    .line 516
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 517
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 518
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public createSession(Ljava/lang/String;)V
    .registers 3

    .line 522
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0xe

    .line 525
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 526
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 527
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deleteRCSMessageListUsingChatId(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 482
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

    .line 483
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    const/16 v0, 0xb

    .line 486
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 487
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->getJsonStringChatIdList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 488
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deleteRCSMessageListUsingImdnId(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 472
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

    .line 473
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    const/16 v0, 0x10

    .line 476
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 477
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;->IMDN:Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    invoke-static {p1, v1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getJsonElements(Ljava/util/List;Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 478
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deleteRCSMessageListUsingMsgId(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 462
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

    .line 463
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    const/16 v0, 0xa

    .line 466
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 467
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    invoke-static {p1, v1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getJsonElements(Ljava/util/List;Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 468
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public disconnect()V
    .registers 3

    .line 642
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v0, :cond_e

    .line 643
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 644
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    .line 646
    :cond_e
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception v0

    .line 649
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_1a
    const/4 v0, 0x0

    .line 651
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    return-void
.end method

.method public getImsi()Ljava/lang/String;
    .registers 1

    .line 425
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onDefaultSmsPackageChanged()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDefaultSmsPackageChanged: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/16 v0, 0x11

    .line 613
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 614
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onImsDeregistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsDeregistered: isCmsServiceActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    const/16 v0, 0x12

    .line 603
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 604
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 605
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onImsRegistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsRegistered: isCmsServiceActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    const/16 v0, 0xf

    .line 593
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 594
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 595
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public readRCSMessageList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readRCSMessageList, isCmsServiceActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    const/16 v0, 0xc

    .line 496
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 497
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;->IMDN:Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    invoke-static {p1, v1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getJsonElements(Ljava/util/List;Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 498
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public receiveRCSMessage(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 443
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x8

    .line 446
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 447
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getJsonElements(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 448
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected registerCMSStartIntent()V
    .registers 3

    .line 549
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.rcs.framework.cloudmessage.RESTART"

    .line 550
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    new-instance v1, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$1;-><init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V

    .line 560
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public sentRCSMessage(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 452
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sentRCSMessage, isCmsServiceActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    const/16 v0, 0x9

    .line 456
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 457
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getJsonElements(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 458
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method
