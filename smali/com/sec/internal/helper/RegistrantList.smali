.class public Lcom/sec/internal/helper/RegistrantList;
.super Ljava/lang/Object;
.source "RegistrantList.java"


# instance fields
.field registrants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/helper/Registrant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/RegistrantList;->registrants:Ljava/util/ArrayList;

    return-void
.end method

.method private declared-synchronized internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/helper/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 60
    iget-object v2, p0, Lcom/sec/internal/helper/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/helper/Registrant;

    .line 61
    invoke-virtual {v2, p1, p2}, Lcom/sec/internal/helper/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized add(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 28
    :try_start_0
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized add(Lcom/sec/internal/helper/Registrant;)V
    .locals 1

    monitor-enter p0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/RegistrantList;->removeCleared()V

    .line 39
    iget-object v0, p0, Lcom/sec/internal/helper/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addUnique(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 33
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 34
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public find(Landroid/os/Handler;)I
    .locals 2

    .line 101
    iget-object p0, p0, Lcom/sec/internal/helper/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/helper/Registrant;

    .line 102
    invoke-virtual {v1}, Lcom/sec/internal/helper/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-ne v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public notifyRegistrants()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0, v0}, Lcom/sec/internal/helper/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 1

    .line 78
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/helper/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyResult(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/helper/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public declared-synchronized remove(Landroid/os/Handler;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/helper/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 83
    iget-object v2, p0, Lcom/sec/internal/helper/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/helper/Registrant;

    .line 86
    invoke-virtual {v2}, Lcom/sec/internal/helper/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    if-ne v3, p1, :cond_1

    .line 92
    :cond_0
    invoke-virtual {v2}, Lcom/sec/internal/helper/Registrant;->clear()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/helper/RegistrantList;->removeCleared()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeCleared()V
    .locals 2

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/helper/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 44
    iget-object v1, p0, Lcom/sec/internal/helper/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/helper/Registrant;

    .line 46
    iget-object v1, v1, Lcom/sec/internal/helper/Registrant;->refH:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/sec/internal/helper/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 50
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/helper/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
