.class public Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/EventListMessageParser;
.super Ljava/lang/Object;
.source "EventListMessageParser.java"

# interfaces
.implements Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/IFcmMessageParser;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EventListMessageParser"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseMessage(Ljava/util/Map;)Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;
    .registers 5

    const-string p0, "message"

    .line 16
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const/4 v1, 0x0

    .line 19
    :try_start_8
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_82

    .line 20
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 21
    const-class p1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;
    :try_end_1e
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_8 .. :try_end_1e} :catch_67

    .line 22
    :try_start_1e
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;->setOrigMessage(Ljava/lang/String;)V

    .line 23
    iget-object v0, p1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;->eventList:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage$EventList;

    if-eqz v0, :cond_4c

    .line 24
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/EventListMessageParser;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseMessage: event date-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;->eventList:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage$EventList;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage$EventList;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " events-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage;->eventList:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage$EventList;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/EventListMessage$EventList;->events:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 27
    :cond_4c
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/EventListMessageParser;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseMessage: parsing failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1e .. :try_end_62} :catch_64

    :goto_62
    move-object v1, p1

    goto :goto_82

    :catch_64
    move-exception p0

    move-object v1, p1

    goto :goto_68

    :catch_67
    move-exception p0

    .line 31
    :goto_68
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/EventListMessageParser;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot parse received message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_82
    :goto_82
    return-object v1
.end method
