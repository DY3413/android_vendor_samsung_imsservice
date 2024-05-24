.class public final synthetic Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda2;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda2;->f$1:Z

    invoke-static {v0, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->$r8$lambda$rzjZU-WnTW40LhpYliCJbKjhNHk(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Z)V

    return-void
.end method
