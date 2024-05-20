.class public final synthetic Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda4;->f$0:Lcom/sec/internal/ims/core/RegistrationManager;

    iput p2, p0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda4;->f$0:Lcom/sec/internal/ims/core/RegistrationManager;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda4;->f$1:I

    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManager;->$r8$lambda$Dv1Fa4Ycp_T8nU9O522txMI-EHY(Lcom/sec/internal/ims/core/RegistrationManager;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
