.class Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "EntitlementConfigService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->getDefaultNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$2;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 305
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAvailable"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 307
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$2;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->isDeviceReady()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 308
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$2;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->-$$Nest$monDeviceReady(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)V

    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 315
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onLost"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
