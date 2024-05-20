.class Lcom/sec/internal/ims/core/sim/SimDataAdaptorCmcc;
.super Lcom/sec/internal/ims/core/sim/SimDataAdaptor;
.source "SimDataAdaptor.java"


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    const/4 p1, 0x0

    .line 140
    iput p1, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mPreferredImpuIndex:I

    return-void
.end method
