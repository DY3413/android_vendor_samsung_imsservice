.class public final synthetic Lcom/sec/internal/ims/core/RegistrationGovernorKor$$ExternalSyntheticLambda1;
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
    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->$r8$lambda$7KSF9cH6P7d96UODZckhzlsphYA(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
