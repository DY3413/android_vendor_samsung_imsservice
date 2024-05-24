.class Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MdmnNsdWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4

    .line 105
    sget-object p1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onWiFiAvailable:"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object v0, v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    sget-object v1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTING:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    if-ne v0, v1, :cond_28

    const-string v0, "The p2p transport manager is restarted"

    .line 107
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object p1, p1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->stopReceive()V

    .line 109
    iget-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object p1, p1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->startReceive()V

    .line 110
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    sget-object p1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTED:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    :cond_28
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 4

    .line 116
    sget-object p1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onWiFiLost:"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object v0, v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    sget-object v1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTED:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    if-ne v0, v1, :cond_21

    const-string v0, "The p2p transport manager is stopped"

    .line 118
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object p1, p1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->mTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->stopReceive()V

    .line 120
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    sget-object p1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTING:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    :cond_21
    return-void
.end method
