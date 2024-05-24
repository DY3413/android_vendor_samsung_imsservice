.class public final synthetic Lcom/sec/internal/helper/SimpleEventLog$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/helper/SimpleEventLog;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/helper/SimpleEventLog;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/SimpleEventLog$$ExternalSyntheticLambda4;->f$0:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/sec/internal/helper/SimpleEventLog$$ExternalSyntheticLambda4;->f$0:Lcom/sec/internal/helper/SimpleEventLog;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->$r8$lambda$YX8QBh9qDdqyM97U0O6_b6Ma830(Lcom/sec/internal/helper/SimpleEventLog;Ljava/lang/Integer;)V

    return-void
.end method
