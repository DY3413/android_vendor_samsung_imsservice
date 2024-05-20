.class Lcom/sec/internal/ims/servicemodules/im/ImModule$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ImModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/im/ImModule;->setNetworkCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;I)V
    .locals 0

    .line 1587
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->val$phoneId:I

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method private handleNetworkForCancelFtWiFiDisconnection(Landroid/net/Network;Z)V
    .locals 5

    .line 1618
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1619
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1623
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    .line 1624
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->val$phoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNetworkForCancelFtWiFiDisconnection: isWifi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isAvailable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1625
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->-$$Nest$fgetmIsWifiConnected(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1626
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->val$phoneId:I

    invoke-static {p1, v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->-$$Nest$monWifiConnectionChanged(Lcom/sec/internal/ims/servicemodules/im/ImModule;ZI)V

    goto :goto_1

    .line 1627
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->-$$Nest$fgetmIsWifiConnected(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    .line 1628
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->val$phoneId:I

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->-$$Nest$monWifiConnectionChanged(Lcom/sec/internal/ims/servicemodules/im/ImModule;ZI)V

    .line 1629
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->-$$Nest$fgetmCache(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1630
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->WIFI_DISCONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->forceCancelFt(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 1590
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->val$phoneId:I

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 1593
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INET  : onAvailable, phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->val$phoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->-$$Nest$fputmInternetAvailable(Lcom/sec/internal/ims/servicemodules/im/ImModule;Z)V

    .line 1595
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->val$phoneId:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v2, "cancel_ft_wifi_disconnected"

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1596
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->handleNetworkForCancelFtWiFiDisconnection(Landroid/net/Network;Z)V

    goto :goto_0

    .line 1597
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->-$$Nest$fgetmConfigs(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Lcom/sec/internal/helper/PhoneIdKeyMap;

    move-result-object p1

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->val$phoneId:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1598
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    const/16 v0, 0x17

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->val$phoneId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    .line 1604
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->val$phoneId:I

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 1607
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INET : onLost, phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->val$phoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->-$$Nest$fputmInternetAvailable(Lcom/sec/internal/ims/servicemodules/im/ImModule;Z)V

    .line 1609
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->val$phoneId:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v2, "cancel_ft_wifi_disconnected"

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1610
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->handleNetworkForCancelFtWiFiDisconnection(Landroid/net/Network;Z)V

    goto :goto_0

    .line 1611
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->-$$Nest$fgetmConfigs(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Lcom/sec/internal/helper/PhoneIdKeyMap;

    move-result-object p1

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->val$phoneId:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1613
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    const/16 v0, 0x18

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;->val$phoneId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    return-void
.end method
