.class public final Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;
.super Ljava/lang/Object;
.source "SmsLogger.java"


# static fields
.field private static final LOG_BUFFER_SIZE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SmsLogger"

.field private static mEventLogs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->mEventLogs:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private currentTime()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "MM/dd/yyyy HH:mm:ss.SSS"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 54
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;
    .locals 2

    const-class v0, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->sInstance:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->sInstance:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    .line 49
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->sInstance:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 67
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->mEventLogs:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 68
    monitor-enter v0

    .line 69
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->currentTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "   "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 71
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/16 p2, 0x64

    if-le p0, p2, :cond_0

    .line 72
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->mEventLogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p0

    .line 74
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dump()V
    .locals 4

    const-string p0, "SmsLogger"

    const-string v0, "Dump of SMS :"

    .line 100
    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "SmsLogger"

    .line 101
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 103
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->mEventLogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 104
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 106
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v1, "SmsLogger"

    .line 108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SmsLogger"

    .line 109
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 111
    monitor-enter v0

    .line 112
    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "SmsLogger"

    .line 113
    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "SmsLogger"

    .line 116
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 115
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    const-string p0, "SmsLogger"

    .line 118
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method public logAndAdd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
