.class public final synthetic Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda5;->f$0:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iput p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda5;->f$0:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda5;->f$1:I

    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->$r8$lambda$NSyczS9N64qJCwnzxDiP5LPdVoQ(Lcom/sec/internal/ims/core/RegistrationManagerInternal;I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p0

    return-object p0
.end method
