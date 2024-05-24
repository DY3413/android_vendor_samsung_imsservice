.class public final synthetic Lcom/sec/internal/ims/core/ImsIconManager$$ExternalSyntheticLambda0;
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
    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/ImsIconManager;->$r8$lambda$c_CcJ08Gc4J0dq5p5ZJwjSTS18o(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
