.class public final synthetic Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$$ExternalSyntheticLambda2;
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
    check-cast p1, Landroid/net/NetworkCapabilities;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->$r8$lambda$B_dZ1C0Kil-f05CTvnh1jib-99Y(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method
