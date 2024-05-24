.class Lcom/sec/internal/ims/cmstore/mcs/MCSClient$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MCSClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getDefaultNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)V
    .registers 2

    .line 677
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 5

    .line 680
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    const-string v2, "onAvailable"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p1, :cond_20

    .line 681
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getProvisionStatus()Z

    move-result p1

    if-nez p1, :cond_20

    .line 682
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$mstartProvisioning(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)V

    :cond_20
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    .line 687
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string v0, "onLost"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
