.class public final synthetic Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/net/wifi/WifiInfo;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->$r8$lambda$cRNcmcatK1Lm7VNrjWhQawch92k(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method