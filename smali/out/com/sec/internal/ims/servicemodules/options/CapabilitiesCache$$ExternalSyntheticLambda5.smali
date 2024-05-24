.class public final synthetic Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

.field public final synthetic f$1:Lcom/sec/ims/options/Capabilities;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Lcom/sec/ims/options/Capabilities;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda5;->f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda5;->f$1:Lcom/sec/ims/options/Capabilities;

    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda5;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda5;->f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda5;->f$1:Lcom/sec/ims/options/Capabilities;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda5;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->$r8$lambda$-g7gO9T8CxnTWX6AbbtekqBZc4E(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Lcom/sec/ims/options/Capabilities;Z)V

    return-void
.end method
