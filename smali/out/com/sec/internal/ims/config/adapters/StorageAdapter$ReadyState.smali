.class Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;
.super Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;
.source "StorageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/StorageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)V
    .registers 3

    .line 225
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    const-string v0, "Ready"

    .line 226
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;-><init>(Lcom/sec/internal/ims/config/adapters/StorageAdapter;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mSQLite:Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    if-eqz v0, :cond_9

    .line 237
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 239
    :cond_9
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mIdentity:Ljava/lang/String;

    .line 240
    new-instance v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    return-void
.end method

.method public delete(Ljava/lang/String;)I
    .registers 2

    .line 278
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mSQLite:Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->delete(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public deleteAll()Z
    .registers 1

    .line 283
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mSQLite:Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->deleteAll()Z

    move-result p0

    return p0
.end method

.method public getState()I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public query([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 2

    .line 288
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mSQLite:Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->query([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public read(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 245
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mSQLite:Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->read(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 246
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 247
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public readAll()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mSQLite:Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->read()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public readAll(Ljava/lang/String;)Ljava/util/Map;
    .registers 2
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

    .line 255
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mSQLite:Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->read(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 266
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 267
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mSQLite:Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->write(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public writeAll(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 273
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mSQLite:Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->write(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method
