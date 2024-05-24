.class public Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;
.super Ljava/lang/Object;
.source "WorkflowFactory.java"


# static fields
.field private static volatile mInstance:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;


# instance fields
.field private final mWorkflowArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkflowThreads:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowArray:Landroid/util/SparseArray;

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowThreads:Landroid/util/SparseArray;

    return-void
.end method

.method private declared-synchronized createWorkflow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/HandlerThread;Landroid/os/Handler;)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "ts43"

    .line 34
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string p3, "Dish_US"

    .line 35
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_22

    .line 36
    new-instance p2, Lcom/sec/internal/ims/aec/workflow/WorkflowDSH;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    const-class p4, Lcom/sec/internal/ims/aec/workflow/WorkflowDSH;

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p1, p3, p5, p4}, Lcom/sec/internal/ims/aec/workflow/WorkflowDSH;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_73

    :cond_22
    const-string p3, "GenericIR92_US:CSpire"

    .line 37
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3a

    .line 38
    new-instance p2, Lcom/sec/internal/ims/aec/workflow/WorkflowCSpire;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    const-class p4, Lcom/sec/internal/ims/aec/workflow/WorkflowDSH;

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p1, p3, p5, p4}, Lcom/sec/internal/ims/aec/workflow/WorkflowCSpire;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_73

    .line 40
    :cond_3a
    new-instance p2, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    const-class p4, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p1, p3, p5, p4}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_73

    :cond_4a
    const-string v0, "nsds_eur"

    .line 42
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_72

    const-string p3, "Telefonica_GB"

    .line 43
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_62

    const-string p3, "TelefonicaLAB_GB"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_72

    .line 44
    :cond_62
    new-instance p2, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    const-class p4, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p1, p3, p5, p4}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_1 .. :try_end_71} :catchall_75

    goto :goto_73

    :cond_72
    const/4 p2, 0x0

    .line 47
    :goto_73
    monitor-exit p0

    return-object p2

    :catchall_75
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance()Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;
    .registers 2

    .line 21
    sget-object v0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mInstance:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    if-nez v0, :cond_17

    .line 22
    const-class v0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    monitor-enter v0

    .line 23
    :try_start_7
    sget-object v1, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mInstance:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    if-nez v1, :cond_12

    .line 24
    new-instance v1, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-direct {v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mInstance:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    .line 26
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 28
    :cond_17
    :goto_17
    sget-object v0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mInstance:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clearWorkflow(I)V
    .registers 3

    monitor-enter p0

    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowThreads:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    if-eqz v0, :cond_20

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowThreads:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowThreads:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 84
    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createWorkflow(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Z
    .registers 14

    monitor-enter p0

    .line 51
    :try_start_1
    new-instance v6, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Workflow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, v6

    move-object v5, p6

    .line 54
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->createWorkflow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/HandlerThread;Landroid/os/Handler;)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p1

    if-nez p1, :cond_2f

    .line 56
    invoke-virtual {v6}, Landroid/os/HandlerThread;->quit()Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_52

    .line 57
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 59
    :cond_2f
    :try_start_2f
    iget-object p5, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowArray:Landroid/util/SparseArray;

    invoke-virtual {p5, p2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 60
    iget-object p5, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowThreads:Landroid/util/SparseArray;

    invoke-virtual {p5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_47

    .line 61
    iget-object p5, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowThreads:Landroid/util/SparseArray;

    invoke-virtual {p5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/os/HandlerThread;

    invoke-virtual {p5}, Landroid/os/HandlerThread;->quit()Z

    .line 63
    :cond_47
    iget-object p5, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowThreads:Landroid/util/SparseArray;

    invoke-virtual {p5, p2, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 64
    invoke-interface {p1, p2, p3, p4}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->initWorkflow(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_2f .. :try_end_4f} :catchall_52

    .line 65
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAllWorkflow()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowArray:Landroid/util/SparseArray;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    .registers 3

    monitor-enter p0

    .line 70
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
