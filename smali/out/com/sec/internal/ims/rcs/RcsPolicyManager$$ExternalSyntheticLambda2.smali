.class public final synthetic Lcom/sec/internal/ims/rcs/RcsPolicyManager$$ExternalSyntheticLambda2;
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
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->$r8$lambda$xjaDnYg5RmW2cB_A_b3hei-BI1w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
