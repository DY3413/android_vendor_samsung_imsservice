.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda6;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda6;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda6;->f$1:I

    invoke-static {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->$r8$lambda$wYDx3TxgRlqiPkyulhQTfRMCK8A(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;I)V

    return-void
.end method
