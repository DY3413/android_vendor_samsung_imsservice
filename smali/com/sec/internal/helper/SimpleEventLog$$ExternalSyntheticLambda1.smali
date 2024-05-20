.class public final synthetic Lcom/sec/internal/helper/SimpleEventLog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/helper/SimpleEventLog;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/SimpleEventLog$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/helper/SimpleEventLog$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->flush()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method
