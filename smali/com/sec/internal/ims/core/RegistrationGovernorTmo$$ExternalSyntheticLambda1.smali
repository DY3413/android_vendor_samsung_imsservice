.class public final synthetic Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationGovernorTmo;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorTmo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorTmo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorTmo;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->$r8$lambda$ZJ2OwsjoPlhCHaWdXtKjL3I-ocU(Lcom/sec/internal/ims/core/RegistrationGovernorTmo;Lcom/sec/internal/interfaces/ims/core/IGeolocationController;)V

    return-void
.end method
