.class public final synthetic Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda2;
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
    check-cast p1, Landroid/net/TransportInfo;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->$r8$lambda$Z7Q6k5NaiewBD_N3JyxntkB0jbc(Landroid/net/TransportInfo;)Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method
