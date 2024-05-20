.class public Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "OpenApiServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/openapi/IOpenApiServiceModule;


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
.method public static synthetic $r8$lambda$bs0F6wEYum7qZwLg-kSTs84iTYw(Lcom/sec/internal/helper/AsyncResult;Lcom/sec/ims/openapi/ISipDialogListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->lambda$onSipMessageReceived$0(Lcom/sec/internal/helper/AsyncResult;Lcom/sec/ims/openapi/ISipDialogListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDialogEventListener(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mDialogEventListener:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsCallEventListener(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsCallEventListener:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsService(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Lcom/sec/ims/IImsService;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegiListener(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegiListener:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSipDialogListeners(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVolteService(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Lcom/sec/ims/volte2/IVolteService;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmImsService(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;Lcom/sec/ims/IImsService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVolteService(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;Lcom/sec/ims/volte2/IVolteService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    .line 55
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegistrationId:I

    .line 59
    new-instance v0, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    invoke-direct {v0}, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mDialogEventListener:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegiListener:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsCallEventListener:Ljava/util/ArrayList;

    .line 67
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mContext:Landroid/content/Context;

    .line 68
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRawSipIntf:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    const/16 p2, 0x64

    .line 69
    invoke-interface {p3, p0, p2, p1}, Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;->registerForIncomingMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    return p0
.end method

.method private connectImsService()V
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    if-eqz v0, :cond_0

    return-void

    .line 288
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.ImsService"

    .line 289
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;-><init>(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)V

    const/4 p0, 0x1

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2, p0, v3}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method private connectVoLteService()V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    if-eqz v0, :cond_0

    return-void

    .line 249
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.VolteService2"

    .line 250
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;-><init>(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)V

    const/4 p0, 0x1

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2, p0, v3}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method private static synthetic lambda$onSipMessageReceived$0(Lcom/sec/internal/helper/AsyncResult;Lcom/sec/ims/openapi/ISipDialogListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    const-string v0, "message"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/ims/openapi/ISipDialogListener;->onSipReceived(Ljava/lang/String;)V

    return-void
.end method

.method private onSipMessageReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 1

    .line 213
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/helper/AsyncResult;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;->broadcastCallback(Lcom/sec/internal/helper/os/RemoteCallbackListWrapper$Broadcaster;)V

    return-void
.end method


# virtual methods
.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 2

    .line 322
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegistrationId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 323
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegistrationId:I

    .line 324
    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 1

    const-string p0, "mmtel"

    const-string v0, "presence"

    .line 74
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 223
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 224
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

    .line 226
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 p0, 0x65

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 232
    iget-object p1, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 233
    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/ims/openapi/ISipDialogListener;

    .line 235
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/ims/openapi/ISipDialogListener;->onSipReceived(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 237
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 228
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->onSipMessageReceived(Lcom/sec/internal/helper/AsyncResult;)V

    :goto_0
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 1

    .line 108
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    const/4 v0, -0x1

    .line 109
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegistrationId:I

    .line 110
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "OpenApiServiceModule"

    const-string p1, "regiInfo is null"

    .line 91
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 95
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 96
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getRegistrationInfoId(Lcom/sec/ims/ImsRegistration;)I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegistrationId:I

    :cond_1
    return-void
.end method

.method public registerDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    if-eqz v0, :cond_0

    .line 116
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/ims/IImsService;->registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mDialogEventListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public registerImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 1

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IVolteService;->registerForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsCallEventListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 183
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegiListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public registerIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V
    .locals 3

    .line 148
    :try_start_0
    invoke-interface {p1}, Lcom/sec/ims/openapi/ISipDialogListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$1;-><init>(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;Lcom/sec/ims/openapi/ISipDialogListener;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    monitor-enter v0

    .line 161
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 162
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRawSipIntf:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;->openSipDialog(Z)V

    return-void

    :catchall_0
    move-exception p0

    .line 162
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public sendSip(Ljava/lang/String;Lcom/sec/ims/openapi/ISipDialogListener;)Z
    .locals 3

    .line 196
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRawSipIntf:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    const/16 v2, 0x65

    .line 201
    invoke-virtual {p0, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 200
    invoke-interface {v1, v0, p1, p0}, Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;->sendSip(ILjava/lang/String;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public setFeatureTags([Ljava/lang/String;)V
    .locals 1

    .line 142
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

    .line 143
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->setThirdPartyFeatureTags([Ljava/lang/String;)V

    return-void
.end method

.method public setupMediaPath([Ljava/lang/String;)V
    .locals 4

    .line 205
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object p0

    .line 206
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const/16 v3, 0xb

    .line 207
    invoke-interface {p0, v3, v2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->requestRouteToHostAddress(ILjava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "OpenApiServiceModule"

    const-string v1, "connect VoLteService/ImsService"

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 84
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->connectVoLteService()V

    .line 85
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->connectImsService()V

    return-void
.end method

.method public unregisterDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/ims/IImsService;->unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    return-void
.end method

.method public unregisterImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 0

    .line 189
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IVolteService;->deregisterForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 191
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    return-void
.end method

.method public unregisterIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 169
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 171
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRawSipIntf:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;->openSipDialog(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 169
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
