.class public Lcom/google/android/gms/tasks/TaskCompletionSource;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzlel:Lcom/google/android/gms/tasks/zzp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/zzp<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zzlel:Lcom/google/android/gms/tasks/zzp;

    return-void
.end method


# virtual methods
.method public getTask()Lcom/google/android/gms/tasks/Task;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zzlel:Lcom/google/android/gms/tasks/zzp;

    return-object p0
.end method

.method public setException(Ljava/lang/Exception;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zzlel:Lcom/google/android/gms/tasks/zzp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/zzp;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zzlel:Lcom/google/android/gms/tasks/zzp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/zzp;->setResult(Ljava/lang/Object;)V

    return-void
.end method
