.class public final synthetic Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

.field public final synthetic f$1:Lcom/sec/internal/ims/core/RegisterTask;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda0;->f$1:Lcom/sec/internal/ims/core/RegisterTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda0;->f$1:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->$r8$lambda$VjA6kEwjpbXlTTMOtNVfT8s9GD0(Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method
