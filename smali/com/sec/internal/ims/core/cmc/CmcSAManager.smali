.class public Lcom/sec/internal/ims/core/cmc/CmcSAManager;
.super Ljava/lang/Object;
.source "CmcSAManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;,
        Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback;,
        Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;,
        Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CmcSAManager"


# instance fields
.field private final ID_REQUEST_ACCESSTOKEN:I

.field private final mAppId:Ljava/lang/String;

.field private final mAppSecret:Ljava/lang/String;

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
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmISaService(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/msc/sa/aidl/ISAService;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mListener:Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegistrationCode(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mRegistrationCode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSACallback(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/msc/sa/aidl/ISACallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mSACallback:Lcom/msc/sa/aidl/ISACallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmISaService(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/msc/sa/aidl/ISAService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRegistrationCode(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mRegistrationCode:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSACallback(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/msc/sa/aidl/ISACallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mSACallback:Lcom/msc/sa/aidl/ISACallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmState(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAccessTokenInternal(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->getAccessTokenInternal()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "8f9l37bswj"

    .line 23
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mAppId:Ljava/lang/String;

    const-string v0, "5AC671E87C25F004543DEC42D8982E02"

    .line 24
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mAppSecret:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mSAConnection:Landroid/content/ServiceConnection;

    .line 28
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    .line 29
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mSACallback:Lcom/msc/sa/aidl/ISACallback;

    .line 30
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mRegistrationCode:Ljava/lang/String;

    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->ID_REQUEST_ACCESSTOKEN:I

    .line 33
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mIsLocal:Z

    .line 34
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    .line 63
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 65
    iput-object p3, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mListener:Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

    return-void
.end method

.method private getAccessTokenInternal()V
    .locals 14

    .line 217
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->REQUESTING:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    const-string v2, "CmcSAManager"

    if-ne v0, v1, :cond_0

    const-string p0, "getAccessTokenInternal: Already requesting access token state"

    .line 218
    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    const-string v0, "getAccessTokenInternal: Try to Get Access Token"

    .line 222
    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "user_id"

    const-string v4, "birthday"

    const-string v5, "email_id"

    const-string v6, "mcc"

    const-string v7, "server_url"

    const-string v8, "cc"

    const-string v9, "api_server_url"

    const-string v10, "auth_server_url"

    const-string v11, "device_physical_address_text"

    const-string v12, "login_id "

    const-string v13, "login_id_type"

    .line 223
    filled-new-array/range {v3 .. v13}, [Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "client_id"

    const-string v5, "8f9l37bswj"

    .line 229
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v4, "client_secret"

    const-string v5, "5AC671E87C25F004543DEC42D8982E02"

    .line 230
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 233
    iget-object v4, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getAccessTokenFromCmcPref()Ljava/lang/String;

    move-result-object v4

    .line 234
    iget-boolean v5, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mIsLocal:Z

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/sec/internal/ims/core/cmc/CmcConstants$SA;->TOKEN_DEFAULT:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "getAccessTokenInternal: Adding expired_access_token"

    .line 235
    invoke-static {v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "expired_access_token"

    .line 236
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v4, "additional"

    .line 238
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    .line 241
    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mRegistrationCode:Ljava/lang/String;

    invoke-interface {v0, v4, v5, v3}, Lcom/msc/sa/aidl/ISAService;->requestAccessToken(ILjava/lang/String;Landroid/os/Bundle;)Z

    const-string v0, "getAccessTokenInternal: Request Access Token"

    .line 242
    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    .line 244
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mListener:Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

    invoke-interface {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;->onSARequested()V

    goto :goto_0

    .line 246
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mListener:Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->SERVICE_DISCONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string v2, "getAccessTokenInternal: ISaService is null"

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->setDescription(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;->onSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 251
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    .line 252
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mListener:Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->SERVICE_DISCONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string v1, "getAccessTokenInternal: RemoteException"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->setDescription(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;->onSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V

    :goto_0
    return-void
.end method

.method private isSaLogined()Z
    .locals 1

    .line 281
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.osp.app.signin"

    .line 282
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 283
    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public connectToSamsungAccountService(Z)V
    .locals 5

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect to Samsung Account AIDL() from cache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSAManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->isSaLogined()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "connectToSamsungAccountService Not Logined"

    .line 72
    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mListener:Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

    sget-object p1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->NOT_LOGGED_IN:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string v0, "onServiceConnected"

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->setDescription(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;->onSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V

    return-void

    .line 76
    :cond_0
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mIsLocal:Z

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    .line 78
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.osp.app.signin"

    const-string v3, "com.msc.sa.service.RequestService"

    .line 79
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    new-instance v2, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)V

    iput-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mSAConnection:Landroid/content/ServiceConnection;

    .line 124
    sget-object v3, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->SERVICE_CONNECTING:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    iput-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    .line 125
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v2, "connectToSamsungAccountService: bindService failed"

    .line 127
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    .line 130
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mListener:Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;->onSAServiceBindResult(ZZ)V

    return-void
.end method

.method public disconnectToSamsungAccountService()V
    .locals 2

    const-string v0, "CmcSAManager"

    const-string v1, "disconnectToSamsungAccountService"

    .line 257
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    if-eqz v1, :cond_0

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mRegistrationCode:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/msc/sa/aidl/ISAService;->unregisterCallback(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 262
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "disconnectToSamsungAccountService: service is null"

    .line 265
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mSAConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 270
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    .line 277
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    return-void
.end method

.method public isLocalCachedAccessTokenRequestState()Z
    .locals 0

    .line 299
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mIsLocal:Z

    return p0
.end method

.method public isSAServiceIdle()Z
    .locals 1

    .line 295
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tryGetAccessToken()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    if-nez v0, :cond_0

    .line 288
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mIsLocal:Z

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->connectToSamsungAccountService(Z)V

    goto :goto_0

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->getAccessTokenInternal()V

    :goto_0
    return-void
.end method
