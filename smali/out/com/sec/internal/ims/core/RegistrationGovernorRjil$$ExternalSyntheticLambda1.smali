.class public final synthetic Lcom/sec/internal/ims/core/RegistrationGovernorRjil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationGovernorRjil;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorRjil;Ljava/util/Set;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorRjil;

    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorRjil;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->$r8$lambda$Ny6LFXsQA43kcokl4V4XpDdd-zY(Lcom/sec/internal/ims/core/RegistrationGovernorRjil;Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method
