.class Lcom/sec/internal/ims/core/sim/MnoInfoStorage;
.super Ljava/lang/Object;
.source "MnoInfoStorage.java"


# instance fields
.field private final mMnoInfo:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->mMnoInfo:Landroid/content/ContentValues;

    .line 20
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->init()V

    return-void
.end method


# virtual methods
.method getAll()Landroid/content/ContentValues;
    .registers 2

    .line 48
    const-class v0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    monitor-enter v0

    .line 49
    :try_start_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->mMnoInfo:Landroid/content/ContentValues;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 50
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method getBoolean(Ljava/lang/String;Z)Z
    .registers 3

    .line 62
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->mMnoInfo:Landroid/content/ContentValues;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method getInt(Ljava/lang/String;I)I
    .registers 3

    .line 58
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->mMnoInfo:Landroid/content/ContentValues;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/CollectionUtils;->getIntValue(Landroid/content/ContentValues;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 66
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method init()V
    .registers 3

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 25
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->mMnoInfo:Landroid/content/ContentValues;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "imsSwitchType"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method size()I
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 31
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->mMnoInfo:Landroid/content/ContentValues;

    const-string v1, "imsi"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-object v0

    .line 38
    :cond_15
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "***************"

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_21
    return-object v0
.end method

.method update(Landroid/content/ContentValues;)V
    .registers 3

    .line 42
    const-class v0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    monitor-enter v0

    .line 43
    :try_start_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 44
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
