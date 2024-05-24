.class public Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;
.super Landroid/app/IntentService;
.source "FcmIntentService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-class v0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 18
    sget-object v0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private updateFcmToken(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 46
    invoke-static {}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getInstance()Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    move-result-object p0

    .line 48
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 50
    invoke-interface {p0, p2, p3}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->updateFcmToken(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 7

    .line 23
    sget-object v0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->LOG_TAG:Ljava/lang/String;

    monitor-enter v0

    :try_start_3
    const-string v1, "phoneId"

    const/4 v2, 0x0

    .line 24
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "senderId"

    .line 25
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_5b

    const/4 v2, 0x0

    .line 27
    :try_start_12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string p1, "fcm senderId not ready"

    .line 28
    invoke-direct {p0, v1, v2, p1}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->updateFcmToken(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_59

    .line 30
    :cond_1e
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v3

    const-string v4, "FCM"

    .line 31
    invoke-virtual {v3, p1, v4}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_34

    const-string p1, "fcm token not ready"

    .line 33
    invoke-direct {p0, v1, v2, p1}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->updateFcmToken(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_59

    .line 35
    :cond_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/AECLog;->s(Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "fcm token ready"

    .line 36
    invoke-direct {p0, v1, v3, p1}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->updateFcmToken(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_50} :catch_51
    .catchall {:try_start_12 .. :try_end_50} :catchall_5b

    goto :goto_59

    :catch_51
    move-exception p1

    .line 40
    :try_start_52
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, v2, p1}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->updateFcmToken(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    :goto_59
    monitor-exit v0

    return-void

    :catchall_5b
    move-exception p0

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_52 .. :try_end_5d} :catchall_5b

    throw p0
.end method
