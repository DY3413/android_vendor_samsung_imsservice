.class public Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;
.super Ljava/lang/Object;
.source "NsdsFcmListenerService.java"

# interfaces
.implements Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmEventListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NsdsFcmListenerService"

.field private static sInstance:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;
    .locals 2

    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->sInstance:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;

    invoke-direct {v1}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->sInstance:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;

    .line 71
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->sInstance:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getPnsParser(Ljava/util/Map;)Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/IFcmMessageParser;
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    .line 48
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getPnsParser: data null, vail"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string v0, "messageType"

    .line 52
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getPnsParser: AndsfMessageParser"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/AndsfMessageParser;

    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/AndsfMessageParser;-><init>()V

    return-object p0

    :cond_1
    const-string v0, "push-message"

    .line 55
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 56
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getPnsParser: PushMessageParser"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/PushMessageParser;

    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/PushMessageParser;-><init>()V

    return-object p0

    :cond_2
    const-string v0, "message"

    .line 58
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 59
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getPnsParser: EventListMessageParser"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/EventListMessageParser;

    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/EventListMessageParser;-><init>()V

    :cond_3
    return-object p0
.end method


# virtual methods
.method public onMessageReceived(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    .line 24
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageReceived: From: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "data: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->getPnsParser(Ljava/util/Map;)Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/IFcmMessageParser;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 28
    invoke-interface {p0, p3}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/IFcmMessageParser;->parseMessage(Ljava/util/Map;)Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 36
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;->shouldBroadcast(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 37
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;->broadcastFcmMessage(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p0, "onMessageReceived: parsing failed."

    .line 41
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
