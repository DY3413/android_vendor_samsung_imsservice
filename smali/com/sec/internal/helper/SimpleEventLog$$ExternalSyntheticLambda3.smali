.class public final synthetic Lcom/sec/internal/helper/SimpleEventLog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/helper/SimpleEventLog;

.field public final synthetic f$1:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/helper/SimpleEventLog;Ljava/util/concurrent/CompletableFuture;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/SimpleEventLog$$ExternalSyntheticLambda3;->f$0:Lcom/sec/internal/helper/SimpleEventLog;

    iput-object p2, p0, Lcom/sec/internal/helper/SimpleEventLog$$ExternalSyntheticLambda3;->f$1:Ljava/util/concurrent/CompletableFuture;

    iput-object p3, p0, Lcom/sec/internal/helper/SimpleEventLog$$ExternalSyntheticLambda3;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/helper/SimpleEventLog$$ExternalSyntheticLambda3;->f$0:Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v1, p0, Lcom/sec/internal/helper/SimpleEventLog$$ExternalSyntheticLambda3;->f$1:Ljava/util/concurrent/CompletableFuture;

    iget-object p0, p0, Lcom/sec/internal/helper/SimpleEventLog$$ExternalSyntheticLambda3;->f$2:Ljava/util/List;

    invoke-static {v0, v1, p0}, Lcom/sec/internal/helper/SimpleEventLog;->$r8$lambda$bOC3ff4jZBYbID3N7eium_VjJH8(Lcom/sec/internal/helper/SimpleEventLog;Ljava/util/concurrent/CompletableFuture;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
