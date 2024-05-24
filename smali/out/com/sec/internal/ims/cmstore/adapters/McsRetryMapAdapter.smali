.class public Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;
.super Ljava/lang/Object;
.source "McsRetryMapAdapter.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field private final transient mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/cmstore/utils/RetryParam;",
            ">;"
        }
    .end annotation
.end field

.field private messageStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    .line 16
    const-class v0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    const-string p0, "McsRetryMapAdapter Constructor"

    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public declared-synchronized checkAndIncreaseRetry(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    .line 30
    :try_start_4
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    if-nez v1, :cond_9

    goto :goto_1b

    .line 35
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->increaseRetryCount(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z

    move-result p1

    if-nez p1, :cond_18

    .line 36
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    const-string p2, "checkAndIncreaseRetry, Already exhausted Max Counts"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    .line 37
    monitor-exit p0

    return v0

    .line 39
    :cond_18
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 31
    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    const-string p2, "checkAndIncreaseRetry, param or mMap is null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_24

    .line 32
    monitor-exit p0

    return v0

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearRetryHistory()V
    .registers 3

    monitor-enter p0

    .line 76
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    const-string v1, "clearRetryCounter: retry history cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_f

    .line 79
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 81
    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRetryCount(Ljava/lang/String;)I
    .registers 3

    monitor-enter p0

    .line 116
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_19

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/utils/RetryParam;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->getRetryCount()I

    move-result p1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    monitor-exit p0

    return p1

    .line 119
    :cond_19
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getRetryParam(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/utils/RetryParam;
    .registers 3

    monitor-enter p0

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_14

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/utils/RetryParam;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_17

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    .line 127
    :goto_15
    monitor-exit p0

    return-object p1

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized increaseRetryCount(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z
    .registers 8

    monitor-enter p0

    .line 53
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_87

    .line 55
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_55

    .line 56
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/utils/RetryParam;

    .line 57
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "increaseRetryCount, Already Exists in Map with retried count :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->getRetryCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->getRetryCount()I

    move-result p2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_4c

    .line 59
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    const-string p2, "increaseRetryCount, removed key retry limit reached "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_89

    .line 61
    monitor-exit p0

    return v2

    .line 63
    :cond_4c
    :try_start_4c
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->getRetryCount()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->setRetryCount(I)V

    goto :goto_85

    .line 65
    :cond_55
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "increaseRetryCount, New to Map, added entry for request and errorCode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v1, Lcom/sec/internal/ims/cmstore/utils/RetryParam;

    invoke-direct {v1, p1, v3, p2}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;II)V

    .line 67
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_85
    .catchall {:try_start_4c .. :try_end_85} :catchall_89

    .line 69
    :goto_85
    monitor-exit p0

    return v3

    .line 71
    :cond_87
    monitor-exit p0

    return v2

    :catchall_89
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initRetryMapAdapter(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .registers 4

    monitor-enter p0

    .line 25
    :try_start_1
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->messageStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 27
    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isAlreadyInRetry(Ljava/lang/String;)Z
    .registers 5

    monitor-enter p0

    .line 43
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isAlreadyInRetry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/utils/RetryParam;

    .line 46
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->getRetryCount()I

    move-result p1
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_35

    if-eqz p1, :cond_31

    const/4 v1, 0x1

    :cond_31
    monitor-exit p0

    return v1

    .line 48
    :cond_33
    monitor-exit p0

    return v1

    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .registers 3

    monitor-enter p0

    .line 84
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_14

    goto :goto_1b

    .line 89
    :cond_14
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1d

    .line 90
    monitor-exit p0

    return-void

    .line 86
    :cond_1b
    :goto_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)Z
    .registers 6

    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retryApi : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_6c

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6c

    if-eqz p2, :cond_6c

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/utils/RetryParam;

    if-eqz v0, :cond_6c

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time Exhausted, Last Retry Val: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->messageStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->messageStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1, p2, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;->getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_6d

    :cond_6c
    const/4 p1, 0x0

    :goto_6d
    if-eqz p1, :cond_91

    .line 108
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retryLastApi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_1 .. :try_end_8e} :catchall_94

    .line 109
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 112
    :cond_91
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_94
    move-exception p1

    monitor-exit p0

    throw p1
.end method
