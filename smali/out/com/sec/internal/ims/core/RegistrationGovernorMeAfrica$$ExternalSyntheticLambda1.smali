.class public final synthetic Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica$$ExternalSyntheticLambda1;
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
    check-cast p1, Ljava/util/concurrent/ScheduledFuture;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->$r8$lambda$Wdna7x5CM2i2QBAL5bo1ie-lYVU(Ljava/util/concurrent/ScheduledFuture;)Z

    move-result p0

    return p0
.end method
