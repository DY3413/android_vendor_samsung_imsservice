.class public final synthetic Lcom/sec/internal/ims/core/RegistrationEvents$$ExternalSyntheticLambda1;
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
    check-cast p1, Ljava/lang/reflect/Field;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationEvents;->$r8$lambda$XUGTHCr5fyFhgVfWljmYG5bYw-8(Ljava/lang/reflect/Field;)Z

    move-result p0

    return p0
.end method
