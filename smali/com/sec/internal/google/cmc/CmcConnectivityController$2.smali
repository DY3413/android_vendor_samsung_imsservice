.class Lcom/sec/internal/google/cmc/CmcConnectivityController$2;
.super Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;
.source "CmcConnectivityController.java"


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

    .line 247
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$2;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-direct {p0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)V
    .locals 2

    .line 250
    invoke-static {}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAvailable: cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnected(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V
    .locals 3

    .line 255
    invoke-static {}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected: net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 256
    invoke-virtual {p1, v0}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$2;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->isConnected()Z

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->getInterfaceNameList()Ljava/util/ArrayList;

    move-result-object p1

    .line 257
    invoke-static {p0, v0, v1, v2, p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->-$$Nest$monWifiConnectionChanged(Lcom/sec/internal/google/cmc/CmcConnectivityController;ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 259
    invoke-virtual {p1, v0}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$2;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->isConnected()Z

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->getAuthenticationToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->-$$Nest$monWifiDirectConnectionChanged(Lcom/sec/internal/google/cmc/CmcConnectivityController;ZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDisconnected(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V
    .locals 3

    .line 266
    invoke-static {}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnected: net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p1, v0}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$2;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->isConnected()Z

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->getInterfaceNameList()Ljava/util/ArrayList;

    move-result-object p1

    .line 268
    invoke-static {p0, v0, v1, v2, p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->-$$Nest$monWifiConnectionChanged(Lcom/sec/internal/google/cmc/CmcConnectivityController;ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 270
    invoke-virtual {p1, v0}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$2;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->isConnected()Z

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->getAuthenticationToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->-$$Nest$monWifiDirectConnectionChanged(Lcom/sec/internal/google/cmc/CmcConnectivityController;ZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
