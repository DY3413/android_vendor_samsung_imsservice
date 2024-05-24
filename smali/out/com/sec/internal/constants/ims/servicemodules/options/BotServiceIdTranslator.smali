.class public Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;
.super Ljava/lang/Object;
.source "BotServiceIdTranslator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BotServiceIdTranslator"

.field private static mInstance:Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;


# instance fields
.field private mBotServiceIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mBotServiceIdMap:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;
    .registers 2

    .line 30
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mInstance:Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    if-nez v0, :cond_17

    .line 31
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    monitor-enter v0

    .line 32
    :try_start_7
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mInstance:Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    if-nez v1, :cond_12

    .line 33
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;-><init>()V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mInstance:Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    .line 35
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 37
    :cond_17
    :goto_17
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mInstance:Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    return-object v0
.end method

.method private getOrCreateBotServiceIdMap(I)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    .line 61
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 64
    :cond_c
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mBotServiceIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_32

    .line 66
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mBotServiceIdMap:Ljava/util/Map;

    monitor-enter v1

    .line 67
    :try_start_19
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mBotServiceIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_2d

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mBotServiceIdMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_2d
    monitor-exit v1

    goto :goto_32

    :catchall_2f
    move-exception p0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_2f

    throw p0

    :cond_32
    :goto_32
    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;I)Ljava/lang/Boolean;
    .registers 5

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contains: serviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BotServiceIdTranslator"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    invoke-direct {p0, p2}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->getOrCreateBotServiceIdMap(I)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    if-eqz p2, :cond_28

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "register: msisdn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BotServiceIdTranslator"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 43
    invoke-direct {p0, p3}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->getOrCreateBotServiceIdMap(I)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    return-void
.end method

.method public translate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 48
    invoke-direct {p0, p2}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->getOrCreateBotServiceIdMap(I)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "translate: msisdn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", serviceId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BotServiceIdTranslator"

    invoke-static {v0, p2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0
.end method
