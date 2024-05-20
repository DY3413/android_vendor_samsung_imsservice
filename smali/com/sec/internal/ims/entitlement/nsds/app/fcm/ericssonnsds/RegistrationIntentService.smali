.class public Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;
.super Landroid/app/IntentService;
.source "RegistrationIntentService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private notifyAndsfPushTokenReady(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 100
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->TAG:Ljava/lang/String;

    const-string v1, "notifyNonConnMgrPushTokenReady()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.nsds.action.DEVICE_PUSH_TOKEN_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "device_push_token"

    .line 102
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "gcm_sender_id"

    .line 103
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v0}, Landroid/app/IntentService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendRegistrationToServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 87
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received token from FCM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string v0, "push_token"

    .line 89
    invoke-static {p0, p2, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""

    .line 94
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    invoke-static {p0, p2, v0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "gcm_sender_id"

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gcm_protocol_to_server"

    .line 30
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_id"

    .line 31
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :try_start_1
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v3

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->TAG:Ljava/lang/String;

    const-string v3, "FCM_Sender_ID is not ready yet. Will get token once its ready"

    invoke-static {v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    monitor-exit v2

    return-void

    .line 47
    :cond_0
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FCMSenderID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "FCM"

    .line 49
    invoke-virtual {v3, v0, v5}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FCM Registration Token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for FCMsenderId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v4, 0x14080000

    const-string v5, "TKN:GET_TKN_SUCCESS"

    .line 53
    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const-string v4, "managePushToken"

    .line 55
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    invoke-direct {p0, v3, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->sendRegistrationToServer(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sent_token_to_server"

    const/4 v3, 0x1

    .line 60
    invoke-static {p0, p1, v0, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v4, "broadcastToAndsfApp"

    .line 61
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    invoke-direct {p0, v3, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->notifyAndsfPushTokenReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_2
    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 67
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to complete token refresh"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "managePushToken"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "sent_token_to_server"

    .line 71
    invoke-static {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sent_token_to_server"

    const/4 v1, 0x0

    .line 72
    invoke-static {p0, p1, v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-void
.end method
