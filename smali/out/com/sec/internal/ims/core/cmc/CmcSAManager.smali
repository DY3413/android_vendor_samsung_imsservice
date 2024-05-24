.class public Lcom/sec/internal/ims/core/cmc/CmcSAManager;
.super Ljava/lang/Object;
.source "CmcSAManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;,
        Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;,
        Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;,
        Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CmcSAManager"


# instance fields
.field private final ID_REQUEST_ACCESSTOKEN:I

.field private final mAppId:Ljava/lang/String;

.field private mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

.field private mContext:Landroid/content/Context;

.field private mISaService:Lcom/msc/sa/aidl/ISAService;

.field private mIsLocal:Z

.field private mListener:Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

.field private mRegistrationCode:Ljava/lang/String;

.field private mSACallback:Lcom/msc/sa/aidl/ISACallback;

.field private mSAConnection:Landroid/content/ServiceConnection;

.field private mState:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmISaService(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/msc/sa/aidl/ISAService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mListener:Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegistrationCode(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mRegistrationCode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSACallback(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/msc/sa/aidl/ISACallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mSACallback:Lcom/msc/sa/aidl/ISACallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmISaService(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/msc/sa/aidl/ISAService;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRegistrationCode(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mRegistrationCode:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSACallback(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/msc/sa/aidl/ISACallback;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mSACallback:Lcom/msc/sa/aidl/ISACallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmState(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAccessTokenInternal(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->getAccessTokenInternal()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;)V
    .registers 5

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "8f9l37bswj"

    .line 23
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mAppId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mSAConnection:Landroid/content/ServiceConnection;

    .line 26
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    .line 27
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mSACallback:Lcom/msc/sa/aidl/ISACallback;

    .line 28
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mRegistrationCode:Ljava/lang/String;

    const/4 v0, 0x1

    .line 29
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->ID_REQUEST_ACCESSTOKEN:I

    .line 31
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mIsLocal:Z

    .line 32
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    .line 61
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 63
    iput-object p3, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mListener:Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

    return-void
.end method

.method private getAccessTokenInternal()V
    .registers 8

    .line 215
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->REQUESTING:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    const-string v2, "CmcSAManager"

    if-ne v0, v1, :cond_e

    const-string p0, "getAccessTokenInternal: Already requesting access token state"

    .line 216
    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    :try_start_e
    const-string v0, "getAccessTokenInternal: Try to Get Access Token"

    .line 220
    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "user_id"

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string v3, "birthday"

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-string v3, "email_id"

    const/4 v5, 0x2

    aput-object v3, v0, v5

    const-string v3, "mcc"

    const/4 v5, 0x3

    aput-object v3, v0, v5

    const-string/jumbo v3, "server_url"

    const/4 v5, 0x4

    aput-object v3, v0, v5

    const-string v3, "cc"

    const/4 v5, 0x5

    aput-object v3, v0, v5

    const-string v3, "api_server_url"

    const/4 v5, 0x6

    aput-object v3, v0, v5

    const-string v3, "auth_server_url"

    const/4 v5, 0x7

    aput-object v3, v0, v5

    const-string v3, "device_physical_address_text"

    const/16 v5, 0x8

    aput-object v3, v0, v5

    const-string v3, "login_id "

    const/16 v5, 0x9

    aput-object v3, v0, v5

    const-string v3, "login_id_type"

    const/16 v5, 0xa

    aput-object v3, v0, v5

    .line 226
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 229
    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getAccessTokenFromCmcPref()Ljava/lang/String;

    move-result-object v5

    .line 230
    iget-boolean v6, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mIsLocal:Z

    if-nez v6, :cond_7a

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7a

    sget-object v6, Lcom/sec/internal/ims/core/cmc/CmcConstants$SA;->TOKEN_DEFAULT:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7a

    const-string v6, "getAccessTokenInternal: Adding expired_access_token"

    .line 231
    invoke-static {v2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "expired_access_token"

    .line 232
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7a
    const-string v5, "additional"

    .line 234
    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    if-eqz v0, :cond_95

    .line 237
    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mRegistrationCode:Ljava/lang/String;

    invoke-interface {v0, v4, v5, v3}, Lcom/msc/sa/aidl/ISAService;->requestAccessToken(ILjava/lang/String;Landroid/os/Bundle;)Z

    const-string v0, "getAccessTokenInternal: Request Access Token"

    .line 238
    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mListener:Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

    invoke-interface {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;->onSARequested()V

    goto :goto_bc

    .line 242
    :cond_95
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    .line 243
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mListener:Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->SERVICE_DISCONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string v2, "getAccessTokenInternal: ISaService is null"

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->setDescription(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;->onSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_a6} :catch_a7

    goto :goto_bc

    :catch_a7
    move-exception v0

    .line 246
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 247
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    .line 248
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mListener:Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->SERVICE_DISCONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string v1, "getAccessTokenInternal: RemoteException"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->setDescription(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;->onSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V

    :goto_bc
    return-void
.end method

.method private isSaLogined()Z
    .registers 2

    .line 277
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.osp.app.signin"

    .line 278
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 279
    array-length p0, p0

    if-lez p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method


# virtual methods
.method public connectToSamsungAccountService(Z)V
    .registers 7

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect to Samsung Account AIDL() from cache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSAManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->isSaLogined()Z

    move-result v0

    if-nez v0, :cond_2f

    const-string p1, "connectToSamsungAccountService Not Logined"

    .line 70
    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mListener:Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

    sget-object p1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->NOT_LOGGED_IN:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string v0, "onServiceConnected"

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->setDescription(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;->onSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V

    return-void

    .line 74
    :cond_2f
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mIsLocal:Z

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    .line 76
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.osp.app.signin"

    const-string v3, "com.msc.sa.service.RequestService"

    .line 77
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    new-instance v2, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)V

    iput-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mSAConnection:Landroid/content/ServiceConnection;

    .line 122
    sget-object v3, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->SERVICE_CONNECTING:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    iput-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    .line 123
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_5f

    const-string v2, "connectToSamsungAccountService: bindService failed"

    .line 125
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    .line 128
    :cond_5f
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mListener:Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;->onSAServiceBindResult(ZZ)V

    return-void
.end method

.method public disconnectToSamsungAccountService()V
    .registers 3

    const-string v0, "disconnectToSamsungAccountService"

    const-string v1, "CmcSAManager"

    .line 253
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    if-eqz v0, :cond_16

    .line 256
    :try_start_b
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mRegistrationCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/msc/sa/aidl/ISAService;->unregisterCallback(Ljava/lang/String;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_1b

    :catch_11
    move-exception v0

    .line 258
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1b

    :cond_16
    const-string v0, "disconnectToSamsungAccountService: service is null"

    .line 261
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_1b
    :try_start_1b
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mSAConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_29

    .line 266
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception v0

    .line 269
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_29
    :goto_29
    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    .line 273
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    return-void
.end method

.method public isLocalCachedAccessTokenRequestState()Z
    .registers 1

    .line 295
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mIsLocal:Z

    return p0
.end method

.method public isSAServiceIdle()Z
    .registers 2

    .line 291
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public tryGetAccessToken()V
    .registers 2

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    if-nez v0, :cond_a

    .line 284
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mIsLocal:Z

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->connectToSamsungAccountService(Z)V

    goto :goto_d

    .line 286
    :cond_a
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->getAccessTokenInternal()V

    :goto_d
    return-void
.end method
