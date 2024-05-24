.class public Lcom/sec/internal/helper/PreciseAlarmManager;
.super Ljava/lang/Object;
.source "PreciseAlarmManager.java"


# static fields
.field protected static final INTENT_ALARM_TIMEOUT:Ljava/lang/String; = "com.sec.internal.ims.imsservice.alarmmanager"

.field private static final LOG_TAG:Ljava/lang/String; = "PreciseAlarmManager"

.field private static final PRECISION:I = 0xfa

.field private static final WAKE_LOCK_TIMEOUT:I = 0x2710

.field private static volatile sInstance:Lcom/sec/internal/helper/PreciseAlarmManager;


# instance fields
.field mContext:Landroid/content/Context;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mLog:Lcom/sec/internal/helper/SimpleEventLog;

.field mThread:Ljava/lang/Thread;

.field private final mTimers:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/sec/internal/helper/DelayedMessage;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTimers(Lcom/sec/internal/helper/PreciseAlarmManager;)Ljava/util/concurrent/PriorityBlockingQueue;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mregisterAlarmManager(Lcom/sec/internal/helper/PreciseAlarmManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->registerAlarmManager()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mThread:Ljava/lang/Thread;

    .line 41
    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 48
    iput-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 210
    new-instance v0, Lcom/sec/internal/helper/PreciseAlarmManager$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/helper/PreciseAlarmManager$2;-><init>(Lcom/sec/internal/helper/PreciseAlarmManager;)V

    iput-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object p1, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    .line 71
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sec.internal.ims.imsservice.alarmmanager"

    .line 72
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    invoke-direct {p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->createWakelock()V

    .line 76
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "PreciseAlarmManager"

    const/16 v2, 0x1f4

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method private createWakelock()V
    .registers 4

    .line 206
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ImsService"

    .line 207
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;
    .registers 4

    const-class v0, Lcom/sec/internal/helper/PreciseAlarmManager;

    monitor-enter v0

    .line 51
    :try_start_3
    sget-object v1, Lcom/sec/internal/helper/PreciseAlarmManager;->sInstance:Lcom/sec/internal/helper/PreciseAlarmManager;

    if-nez v1, :cond_25

    .line 52
    const-class v1, Lcom/sec/internal/helper/PreciseAlarmManager;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_29

    .line 53
    :try_start_a
    sget-object v2, Lcom/sec/internal/helper/PreciseAlarmManager;->sInstance:Lcom/sec/internal/helper/PreciseAlarmManager;

    if-nez v2, :cond_20

    .line 54
    new-instance v2, Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-direct {v2, p0}, Lcom/sec/internal/helper/PreciseAlarmManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/sec/internal/helper/PreciseAlarmManager;->sInstance:Lcom/sec/internal/helper/PreciseAlarmManager;

    .line 55
    invoke-static {}, Lcom/sec/internal/helper/PreciseAlarmManager;->isRoboUnitTest()Z

    move-result p0

    if-nez p0, :cond_20

    .line 56
    sget-object p0, Lcom/sec/internal/helper/PreciseAlarmManager;->sInstance:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-direct {p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->start()V

    .line 59
    :cond_20
    monitor-exit v1

    goto :goto_25

    :catchall_22
    move-exception p0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_22

    :try_start_24
    throw p0

    .line 62
    :cond_25
    :goto_25
    sget-object p0, Lcom/sec/internal/helper/PreciseAlarmManager;->sInstance:Lcom/sec/internal/helper/PreciseAlarmManager;
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_29

    monitor-exit v0

    return-object p0

    :catchall_29
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isRoboUnitTest()Z
    .registers 2

    const-string/jumbo v0, "robolectric"

    .line 66
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private registerAlarmManager()V
    .registers 12

    .line 81
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    monitor-enter v0

    .line 82
    :try_start_3
    iget-object v1, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v1

    const/high16 v2, 0x2000000

    const/4 v3, 0x0

    if-lez v1, :cond_99

    .line 83
    iget-object v1, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 85
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/helper/DelayedMessage;

    .line 88
    invoke-virtual {v4}, Lcom/sec/internal/helper/DelayedMessage;->getMsg()Landroid/os/Message;

    move-result-object v5

    if-eqz v5, :cond_90

    .line 89
    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v6

    if-nez v6, :cond_2d

    goto :goto_90

    .line 94
    :cond_2d
    invoke-virtual {v4}, Lcom/sec/internal/helper/DelayedMessage;->getTimeout()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-string v8, "PreciseAlarmManager"

    .line 95
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "next the soonest timer: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v5, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " timeout="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v4}, Lcom/sec/internal/helper/DelayedMessage;->getTimeout()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " after msec="

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-lez v4, :cond_14

    .line 101
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.internal.ims.imsservice.alarmmanager"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    iget-object v4, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v4, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 105
    iget-object p0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, v6, v7}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    goto :goto_bb

    :cond_90
    :goto_90
    const-string v4, "PreciseAlarmManager"

    const-string v5, "message is wrong do not handle"

    .line 90
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    :cond_99
    const-string v1, "PreciseAlarmManager"

    const-string v4, "No pended alarm Timer. remove the registered timer from alarmManager."

    .line 111
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.internal.ims.imsservice.alarmmanager"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    iget-object v4, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v4, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 117
    iget-object p0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 119
    :cond_bb
    :goto_bb
    monitor-exit v0

    return-void

    :catchall_bd
    move-exception p0

    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_3 .. :try_end_bf} :catchall_bd

    throw p0
.end method

.method private start()V
    .registers 3

    .line 151
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/helper/PreciseAlarmManager$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/helper/PreciseAlarmManager$1;-><init>(Lcom/sec/internal/helper/PreciseAlarmManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mThread:Ljava/lang/Thread;

    .line 202
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private wakeLockInfo(Ljava/lang/String;Landroid/os/Message;J)V
    .registers 6

    if-eqz p2, :cond_26

    .line 220
    iget-object p0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    goto :goto_3f

    .line 222
    :cond_26
    iget-object p0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    :goto_3f
    return-void
.end method


# virtual methods
.method public dump()V
    .registers 3

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreciseAlarmManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object p0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    return-void
.end method

.method public declared-synchronized removeMessage(Landroid/os/Message;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "PreciseAlarmManager"

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Lcom/sec/internal/helper/DelayedMessage;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/sec/internal/helper/DelayedMessage;-><init>(Landroid/os/Message;J)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 140
    invoke-direct {p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->registerAlarmManager()V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 141
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMessage(Lcom/sec/internal/helper/DelayedMessage;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "PreciseAlarmManager"

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 147
    invoke-direct {p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->registerAlarmManager()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 148
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;
    .registers 10

    monitor-enter p0

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_44

    .line 125
    :try_start_4
    new-instance v1, Lcom/sec/internal/helper/DelayedMessage;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p3

    invoke-direct {v1, p2, v2, v3}, Lcom/sec/internal/helper/DelayedMessage;-><init>(Landroid/os/Message;J)V

    .line 126
    iget-object v2, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->put(Ljava/lang/Object;)V

    const-string v2, "PreciseAlarmManager"

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendMessageDelayed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", remaining timers:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_41

    .line 130
    :try_start_39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/helper/PreciseAlarmManager;->wakeLockInfo(Ljava/lang/String;Landroid/os/Message;J)V

    .line 131
    invoke-direct {p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->registerAlarmManager()V
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_44

    .line 133
    monitor-exit p0

    return-object v1

    :catchall_41
    move-exception p1

    .line 128
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw p1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method
