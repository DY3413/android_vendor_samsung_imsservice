.class public final synthetic Lcom/sec/internal/ims/core/PhoneStateTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/PhoneStateTracker;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/telephony/PreciseDataConnectionState;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/PhoneStateTracker;ILandroid/telephony/PreciseDataConnectionState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/PhoneStateTracker$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/PhoneStateTracker;

    iput p2, p0, Lcom/sec/internal/ims/core/PhoneStateTracker$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/sec/internal/ims/core/PhoneStateTracker$$ExternalSyntheticLambda0;->f$2:Landroid/telephony/PreciseDataConnectionState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/ims/core/PhoneStateTracker$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/PhoneStateTracker;

    iget v1, p0, Lcom/sec/internal/ims/core/PhoneStateTracker$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/sec/internal/ims/core/PhoneStateTracker$$ExternalSyntheticLambda0;->f$2:Landroid/telephony/PreciseDataConnectionState;

    check-cast p1, Landroid/telephony/data/ApnSetting;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/internal/ims/core/PhoneStateTracker;->$r8$lambda$73yhzdne1ygCwWgJ62A-MUIwDg0(Lcom/sec/internal/ims/core/PhoneStateTracker;ILandroid/telephony/PreciseDataConnectionState;Landroid/telephony/data/ApnSetting;)V

    return-void
.end method
