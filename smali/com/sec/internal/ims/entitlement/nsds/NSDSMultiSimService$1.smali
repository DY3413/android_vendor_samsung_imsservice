.class Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NSDSMultiSimService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getDefaultNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 414
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAvailable"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 416
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->-$$Nest$misDeviceReady(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 417
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->-$$Nest$monDeviceReady(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;)V

    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 424
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onLost"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
