.class public final synthetic Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->$r8$lambda$r3XTg95ezXEg1NUZDA7xvEVdvhM(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
