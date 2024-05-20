.class public final synthetic Lcom/sec/internal/constants/ims/config/LongCarrierConfig$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/constants/ims/config/LongCarrierConfig;

.field public final synthetic f$1:Landroid/os/PersistableBundle;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/constants/ims/config/LongCarrierConfig;Landroid/os/PersistableBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/constants/ims/config/LongCarrierConfig$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/constants/ims/config/LongCarrierConfig;

    iput-object p2, p0, Lcom/sec/internal/constants/ims/config/LongCarrierConfig$$ExternalSyntheticLambda0;->f$1:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/constants/ims/config/LongCarrierConfig$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/constants/ims/config/LongCarrierConfig;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/config/LongCarrierConfig$$ExternalSyntheticLambda0;->f$1:Landroid/os/PersistableBundle;

    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/constants/ims/config/LongCarrierConfig;->$r8$lambda$1tqlmpSGVkD-enOv6PzARgg9f0M(Lcom/sec/internal/constants/ims/config/LongCarrierConfig;Landroid/os/PersistableBundle;Lcom/google/gson/JsonElement;)V

    return-void
.end method
