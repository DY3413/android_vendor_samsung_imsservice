.class Lcom/sec/internal/ims/aec/util/DefaultNetwork$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DefaultNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/aec/util/DefaultNetwork;->getDefaultNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/util/DefaultNetwork;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/aec/util/DefaultNetwork;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork$1;->this$0:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 2

    if-eqz p1, :cond_c

    .line 42
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork$1;->this$0:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-static {p0}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->-$$Nest$fgetmModuleHandler(Lcom/sec/internal/ims/aec/util/DefaultNetwork;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_c
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 3

    if-eqz p1, :cond_23

    if-eqz p2, :cond_16

    const/16 p1, 0xc

    .line 50
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_16

    const/16 p1, 0x10

    .line 51
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    if-eqz p1, :cond_23

    .line 52
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork$1;->this$0:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-static {p0}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->-$$Nest$fgetmModuleHandler(Lcom/sec/internal/ims/aec/util/DefaultNetwork;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_23
    return-void
.end method
