.class abstract Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;
.super Ljava/lang/Object;
.source "StorageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/StorageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "State"
.end annotation


# instance fields
.field protected LOG_TAG:Ljava/lang/String;

.field protected mStateName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/adapters/StorageAdapter;Ljava/lang/String;)V
    .registers 3

    .line 156
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p2, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->mStateName:Ljava/lang/String;

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->mStateName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 0
    return-void
.end method

.method public delete(Ljava/lang/String;)I
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public deleteAll()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getState()I
    .registers 1

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public open(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    .line 0
    return-void
.end method

.method public query([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public read(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
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

    .line 0
    const/4 p0, 0x0

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

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 0
    const/4 p0, 0x0

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

    .line 0
    const/4 p0, 0x0

    return p0
.end method
