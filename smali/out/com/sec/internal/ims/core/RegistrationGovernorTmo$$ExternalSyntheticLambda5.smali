.class public final synthetic Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationGovernorTmo;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorTmo;Ljava/util/Set;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda5;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorTmo;

    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda5;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda5;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorTmo;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda5;->f$1:Ljava/util/Set;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->$r8$lambda$HXbUuM3QqN6w78h94QmTRJIWggU(Lcom/sec/internal/ims/core/RegistrationGovernorTmo;Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method
