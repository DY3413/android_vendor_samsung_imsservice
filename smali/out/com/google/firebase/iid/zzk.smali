.class public final Lcom/google/firebase/iid/zzk;
.super Ljava/lang/Object;


# static fields
.field private static zzokw:Lcom/google/firebase/iid/zzk;


# instance fields
.field private final zzaiq:Landroid/content/Context;

.field private final zzind:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzinf:I

.field private zzokx:Lcom/google/firebase/iid/zzm;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/firebase/iid/zzm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/iid/zzm;-><init>(Lcom/google/firebase/iid/zzk;Lcom/google/firebase/iid/zzl;)V

    iput-object v0, p0, Lcom/google/firebase/iid/zzk;->zzokx:Lcom/google/firebase/iid/zzm;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firebase/iid/zzk;->zzinf:I

    iput-object p2, p0, Lcom/google/firebase/iid/zzk;->zzind:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/zzk;->zzaiq:Landroid/content/Context;

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/iid/zzk;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/google/firebase/iid/zzk;->zzaiq:Landroid/content/Context;

    return-object p0
.end method

.method private final declared-synchronized zza(Lcom/google/firebase/iid/zzt;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/iid/zzt<",
            "TT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    .line 0
    monitor-enter p0

    :try_start_1
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "MessengerIpcClient"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Queueing "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    iget-object v0, p0, Lcom/google/firebase/iid/zzk;->zzokx:Lcom/google/firebase/iid/zzm;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzm;->zzb(Lcom/google/firebase/iid/zzt;)Z

    move-result v0

    if-nez v0, :cond_3d

    new-instance v0, Lcom/google/firebase/iid/zzm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/iid/zzm;-><init>(Lcom/google/firebase/iid/zzk;Lcom/google/firebase/iid/zzl;)V

    iput-object v0, p0, Lcom/google/firebase/iid/zzk;->zzokx:Lcom/google/firebase/iid/zzm;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzm;->zzb(Lcom/google/firebase/iid/zzt;)Z

    :cond_3d
    iget-object p1, p1, Lcom/google/firebase/iid/zzt;->zzgyc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    monitor-exit p0

    return-object p1

    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzaws()I
    .registers 3

    .line 0
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/zzk;->zzinf:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/firebase/iid/zzk;->zzinf:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic zzb(Lcom/google/firebase/iid/zzk;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/google/firebase/iid/zzk;->zzind:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static declared-synchronized zzfa(Landroid/content/Context;)Lcom/google/firebase/iid/zzk;
    .registers 4

    .line 0
    const-class v0, Lcom/google/firebase/iid/zzk;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/firebase/iid/zzk;->zzokw:Lcom/google/firebase/iid/zzk;

    if-nez v1, :cond_12

    new-instance v1, Lcom/google/firebase/iid/zzk;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/firebase/iid/zzk;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v1, Lcom/google/firebase/iid/zzk;->zzokw:Lcom/google/firebase/iid/zzk;

    :cond_12
    sget-object p0, Lcom/google/firebase/iid/zzk;->zzokw:Lcom/google/firebase/iid/zzk;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final zzj(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lcom/google/firebase/iid/zzv;

    invoke-direct {p0}, Lcom/google/firebase/iid/zzk;->zzaws()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, p2}, Lcom/google/firebase/iid/zzv;-><init>(IILandroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzk;->zza(Lcom/google/firebase/iid/zzt;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public final zzm(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lcom/google/firebase/iid/zzs;

    invoke-direct {p0}, Lcom/google/firebase/iid/zzk;->zzaws()I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1, p2}, Lcom/google/firebase/iid/zzs;-><init>(IILandroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzk;->zza(Lcom/google/firebase/iid/zzt;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method
