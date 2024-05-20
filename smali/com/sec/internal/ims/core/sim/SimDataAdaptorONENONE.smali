.class Lcom/sec/internal/ims/core/sim/SimDataAdaptorONENONE;
.super Lcom/sec/internal/ims/core/sim/SimDataAdaptor;
.source "SimDataAdaptor.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SimDataAdaptorONENONE"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .locals 0

    .line 407
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    const/4 p1, 0x0

    .line 408
    iput p1, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mPreferredImpuIndex:I

    return-void
.end method
