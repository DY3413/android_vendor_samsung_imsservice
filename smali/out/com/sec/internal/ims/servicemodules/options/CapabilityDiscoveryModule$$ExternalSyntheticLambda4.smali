.class public final synthetic Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/ims/util/ImsUri;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/ims/util/ImsUri;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda4;->f$0:Lcom/sec/ims/util/ImsUri;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda4;->f$0:Lcom/sec/ims/util/ImsUri;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->$r8$lambda$Fx25x4HZ9SRkk0OQb_NLyOmS5E8(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0
.end method
