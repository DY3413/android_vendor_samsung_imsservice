.class Lcom/sec/internal/google/cmc/CmcConnectivityController$1;
.super Ljava/lang/Object;
.source "CmcConnectivityController.java"

# interfaces
.implements Lcom/samsung/android/cmcnsd/CmcNsdManager$BindStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/cmc/CmcConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;


# direct methods
.method constructor <init>(Lcom/sec/internal/google/cmc/CmcConnectivityController;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBound()V
    .locals 3

    .line 218
    invoke-static {}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBound()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->-$$Nest$fputmRetryCountBound(Lcom/sec/internal/google/cmc/CmcConnectivityController;I)V

    .line 222
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->-$$Nest$fputmNsdBound(Lcom/sec/internal/google/cmc/CmcConnectivityController;Z)V

    .line 224
    new-instance v0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;

    invoke-direct {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;-><init>()V

    .line 225
    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->addTransport(I)Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;

    move-result-object v0

    .line 227
    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->addCapability(I)Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;

    move-result-object v0

    .line 228
    invoke-virtual {v0, v2}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->addCapability(I)Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->build()Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->-$$Nest$fgetmNsdManager(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/samsung/android/cmcnsd/CmcNsdManager;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->-$$Nest$fgetmNsdNetworkCallbackListener(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->registerNetworkCallback(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;)Z

    return-void
.end method

.method public onUnbound()V
    .locals 2

    .line 235
    invoke-static {}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUnbound()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->-$$Nest$fputmRetryCountBound(Lcom/sec/internal/google/cmc/CmcConnectivityController;I)V

    .line 239
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v0, v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->-$$Nest$fputmNsdBound(Lcom/sec/internal/google/cmc/CmcConnectivityController;Z)V

    .line 241
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->-$$Nest$fgetmNsdManager(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/samsung/android/cmcnsd/CmcNsdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->-$$Nest$fgetmNsdNetworkCallbackListener(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->unregisterNetworkCallback(Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;)V

    .line 243
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->-$$Nest$monShutDownNsd(Lcom/sec/internal/google/cmc/CmcConnectivityController;Z)V

    return-void
.end method
