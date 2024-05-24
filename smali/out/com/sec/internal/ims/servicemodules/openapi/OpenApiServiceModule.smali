.class public Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "OpenApiServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/openapi/IOpenApiServiceModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$ParseResult;,
        Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;
    }
.end annotation


# static fields
.field private static final EVENT_INCOMING_SIP_MESSAGE:I = 0x64

.field private static final EVENT_SIP_DIALOG_SEND_SIP_RESP:I = 0x65

.field private static final LOG_TAG:Ljava/lang/String; = "OpenApiServiceModule"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialogEventListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/IDialogEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImsCallEventListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/volte2/IImsCallEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImsService:Lcom/sec/ims/IImsService;

.field private mRawSipIntf:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

.field private mRegiListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistrationId:I

.field private mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/os/RemoteCallbackListWrapper<",
            "Lcom/sec/ims/openapi/ISipDialogListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVolteService:Lcom/sec/ims/volte2/IVolteService;


# direct methods
.method public static synthetic $r8$lambda$YR-qXKqkHU1qt5jq0DC2NNOnKI0(ILjava/lang/String;ZLcom/sec/ims/openapi/ISipDialogListener;)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->lambda$onSipParamsReceived$1(ILjava/lang/String;ZLcom/sec/ims/openapi/ISipDialogListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bs0F6wEYum7qZwLg-kSTs84iTYw(Lcom/sec/internal/helper/AsyncResult;Lcom/sec/ims/openapi/ISipDialogListener;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->lambda$onSipMessageReceived$0(Lcom/sec/internal/helper/AsyncResult;Lcom/sec/ims/openapi/ISipDialogListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDialogEventListener(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mDialogEventListener:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsCallEventListener(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsCallEventListener:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsService(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Lcom/sec/ims/IImsService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegiListener(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegiListener:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSipDialogListeners(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVolteService(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Lcom/sec/ims/volte2/IVolteService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmImsService(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;Lcom/sec/ims/IImsService;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVolteService(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;Lcom/sec/ims/volte2/IVolteService;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;)V
    .registers 5

    .line 88
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    .line 59
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegistrationId:I

    .line 63
    new-instance v0, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    invoke-direct {v0}, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mDialogEventListener:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegiListener:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsCallEventListener:Ljava/util/ArrayList;

    .line 89
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mContext:Landroid/content/Context;

    .line 90
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRawSipIntf:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    const/16 p2, 0x64

    .line 91
    invoke-interface {p3, p0, p2, p1}, Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;->registerForIncomingMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)I
    .registers 1

    .line 53
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    return p0
.end method

.method private connectImsService()V
    .registers 5

    .line 314
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    if-eqz v0, :cond_5

    return-void

    .line 319
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.ImsService"

    .line 320
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;-><init>(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)V

    const/4 p0, 0x1

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2, p0, v3}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method private connectVoLteService()V
    .registers 5

    .line 275
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    if-eqz v0, :cond_5

    return-void

    .line 280
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.VolteService2"

    .line 281
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;-><init>(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)V

    const/4 p0, 0x1

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2, p0, v3}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method private static synthetic lambda$onSipMessageReceived$0(Lcom/sec/internal/helper/AsyncResult;Lcom/sec/ims/openapi/ISipDialogListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    const-string v0, "message"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/ims/openapi/ISipDialogListener;->onSipReceived(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onSipParamsReceived$1(ILjava/lang/String;ZLcom/sec/ims/openapi/ISipDialogListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    invoke-interface {p3, p0, p1, p2}, Lcom/sec/ims/openapi/ISipDialogListener;->onSipParamsReceived(ILjava/lang/String;Z)V

    return-void
.end method

.method private onSipMessageReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .registers 3

    .line 235
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/helper/AsyncResult;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;->broadcastCallback(Lcom/sec/internal/helper/os/RemoteCallbackListWrapper$Broadcaster;)V

    return-void
.end method

.method private onSipParamsReceived(ILjava/lang/String;Z)V
    .registers 5

    .line 239
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;->broadcastCallback(Lcom/sec/internal/helper/os/RemoteCallbackListWrapper$Broadcaster;)V

    return-void
.end method

.method private parseSipMsg(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$ParseResult;
    .registers 14

    .line 363
    sget-object p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;->MESSAGE_TYPE_UNKNOWN:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

    const-string v0, "\r\n"

    .line 365
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 366
    aget-object v1, p1, v0

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v3, "OpenApiServiceModule"

    const/4 v4, 0x1

    if-gez v1, :cond_27

    const-string v1, "onSipMessageReceived: response message"

    .line 367
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    aget-object v1, p1, v0

    const-string v5, "200"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    move v1, v4

    goto :goto_2d

    :cond_27
    const-string v1, "onSipMessageReceived: request message"

    .line 372
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    move v1, v0

    .line 374
    :goto_2d
    array-length v5, p1

    const/4 v6, 0x0

    move v7, v0

    :goto_30
    if-ge v7, v5, :cond_86

    aget-object v8, p1, v7

    .line 375
    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_3b

    goto :goto_83

    .line 378
    :cond_3b
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 379
    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "cseq"

    .line 380
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_71

    const-string/jumbo v9, "publish"

    .line 381
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_57

    .line 382
    sget-object p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;->MESSAGE_TYPE_PUBLISH:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

    goto :goto_83

    :cond_57
    const-string v9, "notify"

    .line 383
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_63

    .line 385
    sget-object p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;->MESSAGE_TYPE_SUBSCRIBE:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

    move v1, v4

    goto :goto_83

    :cond_63
    const-string/jumbo v9, "subscribe"

    .line 386
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_83

    if-nez v1, :cond_83

    .line 387
    sget-object p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;->MESSAGE_TYPE_SUBSCRIBE:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

    goto :goto_83

    :cond_71
    const-string v11, "event"

    .line 389
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_83

    add-int/lit8 v9, v9, 0x1

    .line 390
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    :cond_83
    :goto_83
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 394
    :cond_86
    new-instance p1, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$ParseResult;

    invoke-direct {p1, p0, v6, v1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$ParseResult;-><init>(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;Ljava/lang/String;Z)V

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " eventType = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " result = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method


# virtual methods
.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .registers 3

    .line 353
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegistrationId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 354
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegistrationId:I

    .line 355
    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .registers 2

    const-string p0, "mmtel"

    const-string v0, "presence"

    .line 96
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .registers 2

    .line 0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 249
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: what "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenApiServiceModule"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_48

    const/16 v1, 0x65

    if-eq v0, v1, :cond_26

    goto :goto_6a

    .line 260
    :cond_26
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 261
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 262
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/openapi/ISipDialogListener;

    .line 264
    :try_start_32
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->parseSipMsg(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$ParseResult;

    move-result-object p0

    .line 265
    invoke-interface {p1, v0}, Lcom/sec/ims/openapi/ISipDialogListener;->onSipReceived(Ljava/lang/String;)V

    .line 266
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$ParseResult;->msgType:I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$ParseResult;->event:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$ParseResult;->result:Z

    invoke-interface {p1, v0, v1, p0}, Lcom/sec/ims/openapi/ISipDialogListener;->onSipParamsReceived(ILjava/lang/String;Z)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_42} :catch_43

    goto :goto_6a

    :catch_43
    move-exception p0

    .line 268
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6a

    .line 254
    :cond_48
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->onSipMessageReceived(Lcom/sec/internal/helper/AsyncResult;)V

    .line 255
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "message"

    .line 256
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->parseSipMsg(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$ParseResult;

    move-result-object p1

    .line 257
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$ParseResult;->msgType:I

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$ParseResult;->event:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$ParseResult;->result:Z

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->onSipParamsReceived(ILjava/lang/String;Z)V

    :goto_6a
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .registers 4

    .line 130
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    const/4 v0, -0x1

    .line 131
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegistrationId:I

    .line 132
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 3

    if-nez p1, :cond_b

    const-string p0, "OpenApiServiceModule"

    const-string/jumbo p1, "regiInfo is null"

    .line 113
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 117
    :cond_b
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 118
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 119
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_20

    .line 120
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getRegistrationInfoId(Lcom/sec/ims/ImsRegistration;)I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegistrationId:I

    :cond_20
    return-void
.end method

.method public registerDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    if-eqz v0, :cond_a

    .line 138
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/ims/IImsService;->registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    goto :goto_f

    .line 140
    :cond_a
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mDialogEventListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f
    return-void
.end method

.method public registerImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .registers 3

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    if-eqz v0, :cond_8

    .line 200
    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IVolteService;->registerForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    goto :goto_12

    .line 202
    :cond_8
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsCallEventListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p0

    .line 205
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_12
    return-void
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    if-eqz v0, :cond_8

    .line 152
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    goto :goto_d

    .line 154
    :cond_8
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegiListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d
    return-void
.end method

.method public registerIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V
    .registers 5

    .line 170
    :try_start_0
    invoke-interface {p1}, Lcom/sec/ims/openapi/ISipDialogListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$1;-><init>(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;Lcom/sec/ims/openapi/ISipDialogListener;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    .line 180
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 182
    :goto_12
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    monitor-enter v0

    .line 183
    :try_start_15
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 184
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_22

    .line 185
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRawSipIntf:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;->openSipDialog(Z)V

    return-void

    :catchall_22
    move-exception p0

    .line 184
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public sendSip(Ljava/lang/String;Lcom/sec/ims/openapi/ISipDialogListener;)Z
    .registers 6

    .line 218
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 222
    :cond_8
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRawSipIntf:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    const/16 v2, 0x65

    .line 223
    invoke-virtual {p0, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 222
    invoke-interface {v1, v0, p1, p0}, Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;->sendSip(ILjava/lang/String;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public setFeatureTags([Ljava/lang/String;)V
    .registers 3

    .line 164
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setFeatureTags: featureTags["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpenApiServiceModule"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->setThirdPartyFeatureTags([Ljava/lang/String;)V

    return-void
.end method

.method public setupMediaPath([Ljava/lang/String;)V
    .registers 6

    .line 227
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object p0

    .line 228
    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_12

    aget-object v2, p1, v1

    const/16 v3, 0xb

    .line 229
    invoke-interface {p0, v3, v2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->requestRouteToHostAddress(ILjava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method public start()V
    .registers 3

    const-string v0, "OpenApiServiceModule"

    const-string v1, "connect VoLteService/ImsService"

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 106
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->connectVoLteService()V

    .line 107
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->connectImsService()V

    return-void
.end method

.method public unregisterDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/ims/IImsService;->unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    return-void
.end method

.method public unregisterImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .registers 2

    .line 211
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IVolteService;->deregisterForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    .line 213
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    return-void
.end method

.method public unregisterIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    monitor-enter v0

    .line 190
    :try_start_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 191
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_18

    .line 192
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_17

    .line 193
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRawSipIntf:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;->openSipDialog(Z)V

    :cond_17
    return-void

    :catchall_18
    move-exception p0

    .line 191
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method
