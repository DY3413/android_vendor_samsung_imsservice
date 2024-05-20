.class final Lcom/google/android/gms/tasks/zzp;
.super Lcom/google/android/gms/tasks/Task;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/tasks/Task<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final zzlen:Lcom/google/android/gms/tasks/zzn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/zzn<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private zzleo:Z

.field private zzlep:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private zzleq:Ljava/lang/Exception;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/tasks/Task;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzp;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/tasks/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzp;->zzlen:Lcom/google/android/gms/tasks/zzn;

    return-void
.end method

.method private final zzbld()V
    .locals 1

    iget-boolean p0, p0, Lcom/google/android/gms/tasks/zzp;->zzleo:Z

    const-string v0, "Task is not yet complete"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzbq;->zza(ZLjava/lang/Object;)V

    return-void
.end method

.method private final zzble()V
    .locals 1

    iget-boolean p0, p0, Lcom/google/android/gms/tasks/zzp;->zzleo:Z

    xor-int/lit8 p0, p0, 0x1

    const-string v0, "Task is already complete"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzbq;->zza(ZLjava/lang/Object;)V

    return-void
.end method

.method private final zzblf()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/zzp;->zzleo:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzp;->zzlen:Lcom/google/android/gms/tasks/zzn;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzn;->zzb(Lcom/google/android/gms/tasks/Task;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzp;->zzlen:Lcom/google/android/gms/tasks/zzn;

    new-instance v1, Lcom/google/android/gms/tasks/zzg;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/zzg;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzn;->zza(Lcom/google/android/gms/tasks/zzm;)V

    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzp;->zzblf()V

    return-object p0
.end method

.method public final addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzp;->zzlen:Lcom/google/android/gms/tasks/zzn;

    new-instance v1, Lcom/google/android/gms/tasks/zzi;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/zzi;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzn;->zza(Lcom/google/android/gms/tasks/zzm;)V

    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzp;->zzblf()V

    return-object p0
.end method

.method public final getException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzp;->zzleq:Ljava/lang/Exception;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzp;->zzbld()V

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzp;->zzleq:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzp;->zzlep:Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :cond_0
    new-instance v1, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzp;->zzleq:Ljava/lang/Exception;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isComplete()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/google/android/gms/tasks/zzp;->zzleo:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isSuccessful()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/zzp;->zzleo:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzp;->zzleq:Ljava/lang/Exception;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setException(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzp;->zzble()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/zzp;->zzleo:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzp;->zzleq:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/tasks/zzp;->zzlen:Lcom/google/android/gms/tasks/zzn;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/zzn;->zzb(Lcom/google/android/gms/tasks/Task;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzp;->zzble()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/zzp;->zzleo:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzp;->zzlep:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/tasks/zzp;->zzlen:Lcom/google/android/gms/tasks/zzn;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/zzn;->zzb(Lcom/google/android/gms/tasks/Task;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
