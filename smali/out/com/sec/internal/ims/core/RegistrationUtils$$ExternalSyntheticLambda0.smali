.class public final synthetic Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/interfaces/ims/core/IRegisterTask;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    check-cast p1, Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->$r8$lambda$KP8XDdJYTAru61fqwwAl6FGXCsY(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/ImsIconManager;)V

    return-void
.end method
