.class public Lcom/sec/internal/ims/config/adapters/StorageAdapter;
.super Ljava/lang/Object;
.source "StorageAdapter.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;,
        Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;,
        Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;,
        Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "StorageAdapter"

.field public static final STATE_DEFAULT:I = -0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_READY:I = 0x1

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field protected mDBTableMax:I

.field protected mIdentity:Ljava/lang/String;

.field private mPhoneId:I

.field protected mSQLite:Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

.field mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)I
    .locals 0

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmPhoneId(Lcom/sec/internal/ims/config/adapters/StorageAdapter;I)V
    .locals 0

    iput p1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mPhoneId:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mSQLite:Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    const/16 v0, 0xa

    .line 51
    iput v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mDBTableMax:I

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mPhoneId:I

    .line 56
    sget-object p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Init StorageAdapter"

    invoke-static {p0, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 139
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->close()V

    .line 141
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public delete(Ljava/lang/String;)I
    .locals 1

    .line 125
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->delete(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public deleteAll()Z
    .locals 1

    .line 132
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->deleteAll()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 134
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public forceDeleteALL(Landroid/content/Context;)V
    .locals 3

    .line 60
    new-instance v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mDBTableMax:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;-><init>(Lcom/sec/internal/ims/config/adapters/StorageAdapter;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->forceDeleteAllConfig()Z

    return-void
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mIdentity:Ljava/lang/String;

    return-object p0
.end method

.method public getState()I
    .locals 1

    .line 75
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->getState()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public open(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 82
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->open(Landroid/content/Context;Ljava/lang/String;I)V

    .line 84
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public query([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 146
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->query([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 148
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public read(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 89
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public readAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->readAll()Ljava/util/Map;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public readAll(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 98
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDBTableMax(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mDBTableMax:I

    return-void
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 111
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 113
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public writeAll(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 118
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->writeAll(Ljava/util/Map;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
