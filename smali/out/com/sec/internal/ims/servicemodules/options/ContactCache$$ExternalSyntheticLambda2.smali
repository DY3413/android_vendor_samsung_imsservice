.class public final synthetic Lcom/sec/internal/ims/servicemodules/options/ContactCache$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/ContactCache;ZI)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$$ExternalSyntheticLambda2;->f$1:Z

    iput p3, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$$ExternalSyntheticLambda2;->f$1:Z

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->$r8$lambda$IKtDxFcije4IlbWOQC0DUet_UTM(Lcom/sec/internal/ims/servicemodules/options/ContactCache;ZI)V

    return-void
.end method
