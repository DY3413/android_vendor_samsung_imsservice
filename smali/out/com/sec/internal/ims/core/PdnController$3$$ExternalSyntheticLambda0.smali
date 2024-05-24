.class public final synthetic Lcom/sec/internal/ims/core/PdnController$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/PdnController$3;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/PdnController$3;Landroid/content/Intent;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController$3$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/PdnController$3;

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController$3$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$3$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/PdnController$3;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController$3$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/PdnController$3;->$r8$lambda$JVIM-yoqb5kPubsBe13-jqhaxtI(Lcom/sec/internal/ims/core/PdnController$3;Landroid/content/Intent;)V

    return-void
.end method
