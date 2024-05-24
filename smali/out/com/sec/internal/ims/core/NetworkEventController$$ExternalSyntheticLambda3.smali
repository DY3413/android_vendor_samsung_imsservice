.class public final synthetic Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/NetworkEventController;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/NetworkEventController;III)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda3;->f$0:Lcom/sec/internal/ims/core/NetworkEventController;

    iput p2, p0, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda3;->f$1:I

    iput p3, p0, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda3;->f$2:I

    iput p4, p0, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda3;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda3;->f$0:Lcom/sec/internal/ims/core/NetworkEventController;

    iget v1, p0, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda3;->f$1:I

    iget v2, p0, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda3;->f$2:I

    iget p0, p0, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda3;->f$3:I

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->$r8$lambda$ewKqLB7lzcDqaI2qpdo2UnFPMrY(Lcom/sec/internal/ims/core/NetworkEventController;IIILcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method
