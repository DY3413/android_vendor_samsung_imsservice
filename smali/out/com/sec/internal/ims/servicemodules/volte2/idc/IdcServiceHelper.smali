.class public Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;
.super Landroid/os/Handler;
.source "IdcServiceHelper.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IIdcServiceHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;,
        Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$ImsDataChannelCallback;
    }
.end annotation


# static fields
.field private static final EVT_TRY_RECONNECT:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "[IDC][FW]IdcServiceHelper"

.field private static final SERVICE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.imsdcservice.SecImsDataChannelService"

.field private static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.imsdcservice"

.field private static mImsDataChannelCallback:Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;

.field protected static mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

.field protected mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

.field mServiceConn:Landroid/content/ServiceConnection;

.field private mState:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;


# direct methods
.method static bridge synthetic -$$Nest$fputmState(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mState:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    return-void
.end method

.method static bridge synthetic -$$Nest$monConnected(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->onConnected()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)V
    .registers 5

    .line 112
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->IDLE:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mState:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    .line 43
    new-instance p2, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$1;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;)V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 113
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mContext:Landroid/content/Context;

    .line 114
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 115
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    return-void
.end method

.method private connectToDcManager()V
    .registers 5

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DcManager state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mState:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[IDC][FW]IdcServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mState:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->IDLE:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    if-ne v0, v2, :cond_3b

    const-string v0, "connectToDcManager"

    .line 128
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.imsdcservice"

    const-string v2, "com.samsung.android.imsdcservice.SecImsDataChannelService"

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 132
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->SERVICE_CONNECTING:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mState:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    :cond_3b
    return-void
.end method

.method private onConnected()V
    .registers 3

    const-string v0, "[IDC][FW]IdcServiceHelper"

    const-string v1, "onConnected()"

    .line 140
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    if-eqz v0, :cond_24

    .line 142
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->SERVICE_CONNECTED:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mState:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    .line 143
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$ImsDataChannelCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$ImsDataChannelCallback;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$ImsDataChannelCallback-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mImsDataChannelCallback:Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;

    .line 145
    :try_start_17
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;->setImsDataChannelCallback(Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_24

    :catch_1d
    move-exception p0

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_24
    :goto_24
    return-void
.end method

.method private setLocalBdcTlsId(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Ljava/lang/String;)V
    .registers 6

    .line 389
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_42

    const-string p0, "\r\n"

    .line 390
    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 391
    array-length p2, p0

    const/4 v0, 0x0

    :goto_e
    if-ge v0, p2, :cond_42

    aget-object v1, p0, v0

    const-string v2, "a=tls-id:"

    .line 392
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/16 p0, 0x9

    .line 393
    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 394
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->setLocalBdcTlsId(Ljava/lang/String;)V

    .line 395
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setLocalBdcTlsId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[IDC][FW]IdcServiceHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_42
    :goto_42
    return-void
.end method


# virtual methods
.method public createBootstrapDataChannel(I)V
    .registers 4

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createBootstrapDataChannel slotId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[IDC][FW]IdcServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->isBinderReady()Z

    move-result p0

    if-nez p0, :cond_1d

    return-void

    .line 211
    :cond_1d
    :try_start_1d
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    invoke-interface {p0, p1}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;->createBootstrapDataChannel(I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p0

    .line 213
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_27
    return-void
.end method

.method public finishIDCApp()V
    .registers 1

    .line 0
    return-void
.end method

.method public getBootstrapLocalSdp(I)Ljava/lang/String;
    .registers 4

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBootstrapLocalSdp slotId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[IDC][FW]IdcServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->isBinderReady()Z

    move-result p0

    const-string v0, ""

    if-nez p0, :cond_1f

    return-object v0

    .line 224
    :cond_1f
    :try_start_1f
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    invoke-interface {p0, p1}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;->getBootstrapLocalSdp(I)Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    move-exception p0

    .line 226
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

.method public getNegotiatedLocalSdp(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNegotiatedLocalSdp telecomCallId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[IDC][FW]IdcServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->isBinderReady()Z

    move-result p0

    const-string v0, ""

    if-nez p0, :cond_1f

    return-object v0

    .line 238
    :cond_1f
    :try_start_1f
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    invoke-interface {p0, p1}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;->getNegotiatedLocalSdp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    move-exception p0

    .line 240
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 194
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_9

    .line 196
    :cond_6
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->connectToDcManager()V

    :goto_9
    return-void
.end method

.method public init()V
    .registers 2

    .line 119
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->IDLE:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mState:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    return-void
.end method

.method protected isBinderReady()Z
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mState:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->SERVICE_CONNECTED:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    if-ne v0, v1, :cond_d

    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x1

    return p0

    .line 382
    :cond_d
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder not ready mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mState:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[IDC][FW]IdcServiceHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public notifyCallEnded(I)V
    .registers 4

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCallEnded sessionId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[IDC][FW]IdcServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->isBinderReady()Z

    move-result v0

    if-nez v0, :cond_1d

    return-void

    .line 315
    :cond_1d
    :try_start_1d
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getTelecomCallIdBySessionId(I)Ljava/lang/String;

    move-result-object p0

    .line 316
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyCallEnded telecomCallId : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    invoke-interface {p1, p0}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;->endImsDataChannel(Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception p0

    .line 319
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_41
    return-void
.end method

.method public notifyCallEstablished(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onImsIncomingCallIdcEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V
    .registers 5

    const-string v0, "[IDC][FW]IdcServiceHelper"

    const-string v1, "onImsIncomingCallIdcEvent"

    .line 291
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->createBootstrapDataChannel(I)V

    .line 293
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->setBootstrapRemoteOfferSdp(ILcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V

    .line 295
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->getBootstrapLocalSdp(I)Ljava/lang/String;

    move-result-object p2

    .line 296
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->setLocalBdcSdp(Ljava/lang/String;)V

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->setLocalBdcTlsId(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Ljava/lang/String;)V

    return-void
.end method

.method public onImsOutgoingCallIdcEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .registers 6

    const-string v0, "onImsOutgoingCallIdcEvent"

    const-string v1, "[IDC][FW]IdcServiceHelper"

    .line 276
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->createBootstrapDataChannel(I)V

    .line 278
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->getBootstrapLocalSdp(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localSdp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->setLocalBdcSdp(Ljava/lang/String;)V

    .line 281
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->setLocalBdcTlsId(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getIsNotifiedTelecomCallId()Z

    move-result v0

    if-nez v0, :cond_59

    .line 284
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getLocalBdcTlsId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->setTelecomCallId(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->setIsNotifiedTelecomCallId(Z)V

    :cond_59
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 3

    if-eqz p1, :cond_10

    .line 374
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isSupportImsDataChannel(I)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    if-eqz p1, :cond_1c

    .line 375
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->isBinderReady()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 376
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->connectToDcManager()V

    :cond_1c
    return-void
.end method

.method protected processingRFC8841v5(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 337
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "[IDC][FW]IdcServiceHelper"

    if-eqz p0, :cond_e

    const-string p0, "processingRFC8841v5: sdp is null or empty"

    .line 338
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_e
    const-string p0, "UDP/DTLS/SCTP webrtc-datachannel"

    .line 342
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 344
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processingRFC8841v5: isRFC8841currentVersion? "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_2b
    const-string v1, "practice processingRFC8841v5()"

    .line 348
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\r?\\n"

    .line 351
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 352
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_3e
    if-ge v3, v1, :cond_92

    aget-object v4, p1, v3

    const-string v5, " DTLS/SCTP "

    .line 353
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "\r\n"

    if-eqz v5, :cond_65

    const-string v5, "DTLS/SCTP"

    .line 354
    invoke-virtual {v4, v5, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "datachannel"

    .line 355
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0xb

    .line 356
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8f

    :cond_65
    const-string/jumbo v5, "sctpmap"

    .line 357
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_89

    const-string/jumbo v7, "sctp-port"

    .line 358
    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "webrtc"

    .line 359
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 360
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8f

    .line 362
    :cond_89
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_8f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 365
    :cond_92
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public receiveSdpAnswer(ILcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V
    .registers 5

    .line 182
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getTelecomCallIdBySessionId(I)Ljava/lang/String;

    move-result-object p0

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "receiveSdpAnswer telecomCallId : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[IDC][FW]IdcServiceHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :try_start_1d
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    const-string v0, "dc_app_id"

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "sdp"

    .line 186
    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 185
    invoke-interface {p1, p0, v0, p2}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;->receiveSdpAnswer(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception p0

    .line 188
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public receiveSdpOffer(ILcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V
    .registers 6

    .line 170
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getTelecomCallIdBySessionId(I)Ljava/lang/String;

    move-result-object p0

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "receiveSdpOffer telecomCallId : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[IDC][FW]IdcServiceHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :try_start_1d
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    const-string v0, "dc_app_id"

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "sdp"

    .line 174
    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "change_type"

    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 173
    invoke-interface {p1, p0, v0, v1, p2}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;->receiveSdpOffer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_35} :catch_36

    return-void

    :catch_36
    move-exception p0

    .line 176
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setBootstrapRemoteAnswerSdp(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V
    .registers 6

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBootstrapRemoteAnswerSdp telecomCallId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " remoteAnswerSdp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sdp"

    .line 155
    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[IDC][FW]IdcServiceHelper"

    .line 154
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->isBinderReady()Z

    move-result v0

    if-nez v0, :cond_2d

    return-void

    .line 159
    :cond_2d
    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->processingRFC8841v5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 161
    :try_start_35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "modifiedSDP : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;->setBootstrapRemoteAnswerSdp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception p0

    .line 164
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_53
    return-void
.end method

.method public setBootstrapRemoteOfferSdp(ILcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V
    .registers 6

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBootstrapRemoteOfferSdp slotId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " offeredSdp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sdp"

    .line 261
    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[IDC][FW]IdcServiceHelper"

    .line 260
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->isBinderReady()Z

    move-result v0

    if-nez v0, :cond_2d

    return-void

    .line 266
    :cond_2d
    :try_start_2d
    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->processingRFC8841v5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 267
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "modifiedSDP : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;->setBootstrapRemoteOfferSdp(ILjava/lang/String;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception p0

    .line 270
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_53
    return-void
.end method

.method public setTelecomCallId(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTelecomCallId tlsId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " telecomCallId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[IDC][FW]IdcServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->isBinderReady()Z

    move-result p0

    if-nez p0, :cond_26

    return-void

    .line 252
    :cond_26
    :try_start_26
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;->setTelecomCallId(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception p0

    .line 254
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_30
    return-void
.end method
