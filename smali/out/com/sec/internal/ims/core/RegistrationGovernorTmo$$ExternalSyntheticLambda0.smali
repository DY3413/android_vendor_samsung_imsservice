.class public final synthetic Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationGovernorTmo;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorTmo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorTmo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorTmo;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->$r8$lambda$krLEApmz6TyuMg75ble8un3LMaI(Lcom/sec/internal/ims/core/RegistrationGovernorTmo;Lcom/sec/internal/interfaces/ims/core/IGeolocationController;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
