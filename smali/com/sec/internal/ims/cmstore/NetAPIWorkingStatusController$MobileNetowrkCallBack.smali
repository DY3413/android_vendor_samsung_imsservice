.class Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetAPIWorkingStatusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobileNetowrkCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V
    .locals 0

    .line 1109
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 1114
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "mobile network on available"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->-$$Nest$mbindToNetwork(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;Landroid/net/Network;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1116
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v0, "bind to MOBILE_HIPRI successfully"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    const-string v0, "http"

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->setProtocol(Ljava/lang/String;)V

    .line 1118
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->-$$Nest$fputmIsUsingMobileHipri(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;Z)V

    .line 1119
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-static {p1, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->-$$Nest$msetNetworkStatus(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;Z)V

    .line 1120
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->-$$Nest$mshouldEnableOMANetAPIWorking(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1121
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "shouldEnableOMANetAPIWorking: true"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    goto :goto_0

    .line 1125
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string p1, "bind to MOBILE_HIPRI failed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 1131
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string p1, "mobile network on lost"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
