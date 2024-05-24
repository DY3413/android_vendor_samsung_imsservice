.class public Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;
.super Ljava/lang/Object;
.source "FcmNotification.java"

# interfaces
.implements Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;


# static fields
.field private static final FCM_APP:Ljava/lang/String; = "app"

.field private static final FCM_DATA:Ljava/lang/String; = "data"

.field private static final FCM_FROM:Ljava/lang/String; = "from"

.field private static final FCM_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final LOG_TAG:Ljava/lang/String; = "FcmNotification"

.field private static final filterStr:[Ljava/lang/String;


# instance fields
.field private final mPhoneId:I

.field private final mWorkflowHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "\\]"

    const-string v1, "app="

    const-string v2, "\""

    const-string v3, "\\["

    .line 26
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;->filterStr:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/os/Handler;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;->mPhoneId:I

    .line 34
    iput-object p2, p0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;->mWorkflowHandler:Landroid/os/Handler;

    return-void
.end method

.method private sendFcmNotification(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "from"

    .line 54
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app"

    .line 55
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "timestamp"

    .line 56
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;->mWorkflowHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v1, 0x3f6

    .line 59
    iput v1, p1, Landroid/os/Message;->what:I

    .line 60
    iget v1, p0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;->mPhoneId:I

    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 61
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 62
    iget-object p0, p0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;->mWorkflowHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method filterStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string p0, "&"

    const-string v0, ","

    .line 87
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 88
    sget-object p1, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;->filterStr:[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1d

    aget-object v2, p1, v1

    const-string v3, ""

    .line 89
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1d
    return-object p0
.end method

.method getFcmNotification(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    const-string v1, "data"

    .line 66
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :try_start_9
    const-string v3, "from"

    .line 68
    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_12} :catch_60

    const-string/jumbo v3, "timestamp"

    const-string v4, "app"

    if-eqz p1, :cond_39

    .line 70
    :try_start_19
    new-instance p1, Lorg/json/JSONObject;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;->filterStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    .line 74
    :cond_39
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7d

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7d

    .line 75
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;->filterStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_5f} :catch_60

    goto :goto_7d

    :catch_60
    move-exception p1

    .line 80
    sget-object p2, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFcmNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;->mPhoneId:I

    invoke-static {p2, p1, p0}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7d
    :goto_7d
    return-object v2
.end method

.method public onMessageReceived(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    .line 39
    sget-object p1, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessageReceived: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;->mPhoneId:I

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/AECLog;->s(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;->getFcmNotification(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;->sendFcmNotification(Ljava/util/Map;)V

    return-void
.end method

.method public onTokenRefresh(Landroid/content/Context;)V
    .registers 4

    .line 45
    sget-object p1, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onTokenRefresh"

    iget v1, p0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;->mPhoneId:I

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    iget-object p1, p0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;->mWorkflowHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x3f7

    .line 47
    iput v0, p1, Landroid/os/Message;->what:I

    .line 48
    iget v0, p0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;->mPhoneId:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 49
    iget-object p0, p0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;->mWorkflowHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
