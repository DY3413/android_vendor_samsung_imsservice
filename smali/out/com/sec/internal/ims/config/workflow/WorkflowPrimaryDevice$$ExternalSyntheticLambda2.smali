.class public final synthetic Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$$ExternalSyntheticLambda2;
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
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->$r8$lambda$6-D1RbWJWE4uQXU9Q6EBPVVT5As(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
