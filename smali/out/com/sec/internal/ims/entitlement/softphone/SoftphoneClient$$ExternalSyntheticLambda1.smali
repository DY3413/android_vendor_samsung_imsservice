.class public final synthetic Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    check-cast p1, Landroid/net/Network;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->$r8$lambda$jVeDcsFWOoT6x77TMg3uyLTNTds(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    return-object p0
.end method
