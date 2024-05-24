.class Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$SerialExecutor;
.super Ljava/lang/Object;
.source "AsyncFileTask.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerialExecutor"
.end annotation


# instance fields
.field private mActive:Ljava/lang/Runnable;

.field private final mTasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8zYMAgSZ6HbPzEPwXQkZ2Zsr5c4(Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$SerialExecutor;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$SerialExecutor;->lambda$execute$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$SerialExecutor-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$SerialExecutor;-><init>()V

    return-void
.end method

.method private synthetic lambda$execute$0(Ljava/lang/Runnable;)V
    .registers 2

    .line 183
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 185
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$SerialExecutor;->scheduleNext()V

    return-void

    :catchall_7
    move-exception p1

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$SerialExecutor;->scheduleNext()V

    .line 186
    throw p1
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .registers 4

    monitor-enter p0

    .line 181
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$SerialExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$SerialExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$SerialExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 188
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-nez p1, :cond_12

    .line 189
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$SerialExecutor;->scheduleNext()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 191
    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized scheduleNext()V
    .registers 3

    monitor-enter p0

    .line 194
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    .line 195
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 197
    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
