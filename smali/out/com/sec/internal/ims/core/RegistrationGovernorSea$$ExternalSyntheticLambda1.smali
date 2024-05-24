.class public final synthetic Lcom/sec/internal/ims/core/RegistrationGovernorSea$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Ljava/util/concurrent/ScheduledFuture;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->$r8$lambda$0GQ10q8Fo8j49gDWU5soXyuJyO4(Ljava/util/concurrent/ScheduledFuture;)V

    return-void
.end method
