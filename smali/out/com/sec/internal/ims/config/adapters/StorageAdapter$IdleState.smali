.class Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;
.super Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;
.source "StorageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/StorageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)V
    .registers 3

    .line 205
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    const-string v0, "IDLE"

    .line 206
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;-><init>(Lcom/sec/internal/ims/config/adapters/StorageAdapter;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getState()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public open(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open storage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->-$$Nest$fputmPhoneId(Lcom/sec/internal/ims/config/adapters/StorageAdapter;I)V

    .line 218
    iget-object p3, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    iput-object p2, p3, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mIdentity:Ljava/lang/String;

    .line 219
    new-instance v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    iget v2, v1, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mDBTableMax:I

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;-><init>(Lcom/sec/internal/ims/config/adapters/StorageAdapter;Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p3, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mSQLite:Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    .line 220
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    new-instance p1, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)V

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    return-void
.end method
