.class public Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsInstanceIdListenerService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "NsdsInstanceIdListenerService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsInstanceIdListenerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsInstanceIdListenerService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method

.method private getAllFcmTokenDetails()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "sender_id"

    const-string v1, "protocol_to_server"

    const-string v2, "device_uid"

    .line 64
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v5

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$GcmTokens;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 72
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 74
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 75
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 76
    new-instance v2, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;

    invoke-direct {v2}, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;-><init>()V

    .line 77
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;->senderId:Ljava/lang/String;

    const/4 v1, 0x1

    .line 78
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;->protocolToServer:Ljava/lang/String;

    const/4 v1, 0x2

    .line 79
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;->deviceUid:Ljava/lang/String;

    .line 80
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p0, :cond_1

    .line 83
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_2

    .line 70
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0
.end method

.method private startTokenRefresh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "gcm_sender_id"

    .line 54
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "gcm_protocol_to_server"

    .line 55
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "device_id"

    .line 56
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 4

    .line 44
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsInstanceIdListenerService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onTokenRefresh()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsInstanceIdListenerService;->getAllFcmTokenDetails()Ljava/util/List;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;

    .line 47
    iget-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;->senderId:Ljava/lang/String;

    iget-object v3, v1, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;->protocolToServer:Ljava/lang/String;

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;->deviceUid:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsInstanceIdListenerService;->startTokenRefresh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
