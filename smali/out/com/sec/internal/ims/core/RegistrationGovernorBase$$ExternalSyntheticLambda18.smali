.class public final synthetic Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->$r8$lambda$M6wdyaGi7fXrub2on8iwR_I5-qI(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method
