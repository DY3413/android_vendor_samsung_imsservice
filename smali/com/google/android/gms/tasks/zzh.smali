.class final Lcom/google/android/gms/tasks/zzh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzldy:Lcom/google/android/gms/tasks/Task;

.field private synthetic zzlee:Lcom/google/android/gms/tasks/zzg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/zzg;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzh;->zzlee:Lcom/google/android/gms/tasks/zzg;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzh;->zzldy:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zzlee:Lcom/google/android/gms/tasks/zzg;

    invoke-static {v0}, Lcom/google/android/gms/tasks/zzg;->zza(Lcom/google/android/gms/tasks/zzg;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->zzlee:Lcom/google/android/gms/tasks/zzg;

    invoke-static {v1}, Lcom/google/android/gms/tasks/zzg;->zzb(Lcom/google/android/gms/tasks/zzg;)Lcom/google/android/gms/tasks/OnFailureListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->zzlee:Lcom/google/android/gms/tasks/zzg;

    invoke-static {v1}, Lcom/google/android/gms/tasks/zzg;->zzb(Lcom/google/android/gms/tasks/zzg;)Lcom/google/android/gms/tasks/OnFailureListener;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzh;->zzldy:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/google/android/gms/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method