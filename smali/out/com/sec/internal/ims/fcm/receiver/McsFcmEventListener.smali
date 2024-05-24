.class public Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;
.super Ljava/lang/Object;
.source "McsFcmEventListener.java"

# interfaces
.implements Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;


# static fields
.field private static final FROM_FIELD:Ljava/lang/String; = "from"

.field private static final INTENT_RECEIVE_FCM_PUSH_NOTIFICATION:Ljava/lang/String; = "com.sec.internal.ims.fcm.action.RECEIVE_FCM_PUSH_NOTIFICATION"

.field private static final INTENT_REFRESH_FCM_REGISTRATION_TOKEN:Ljava/lang/String; = "com.sec.internal.ims.fcm.action.REFRESH_FCM_REGISTRATION_TOKEN"

.field private static final LOG_TAG:Ljava/lang/String; = "McsFcmEventListener"

.field private static final MESSAGE_FIELD:Ljava/lang/String; = "message"

.field private static sInstance:Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;
    .registers 3

    const-class v0, Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;

    monitor-enter v0

    .line 44
    :try_start_3
    sget-object v1, Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;->sInstance:Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;

    if-nez v1, :cond_15

    .line 45
    sget-object v1, Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getInstance: create McsFcmEventListener"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v1, Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;

    invoke-direct {v1}, Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;->sInstance:Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;

    .line 48
    :cond_15
    sget-object v1, Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;->sInstance:Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public onMessageReceived(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7

    if-eqz p3, :cond_4f

    const-string p0, "message"

    .line 24
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_4f

    .line 28
    :cond_b
    sget-object v0, Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageReceived: from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "onMessageReceived: sendBroadcast INTENT_RECEIVE_FCM_PUSH_NOTIFICATION"

    .line 29
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.fcm.action.RECEIVE_FCM_PUSH_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "from"

    .line 31
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    sget-object p0, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p1, v0, p0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 25
    :cond_4f
    :goto_4f
    sget-object p0, Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onMessageReceived: message is empty"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTokenRefresh(Landroid/content/Context;)V
    .registers 3

    .line 38
    sget-object p0, Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onTokenRefresh: sendBroadcast INTENT_REFRESH_FCM_REGISTRATION_TOKEN"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.sec.internal.ims.fcm.action.REFRESH_FCM_REGISTRATION_TOKEN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p1, p0, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
