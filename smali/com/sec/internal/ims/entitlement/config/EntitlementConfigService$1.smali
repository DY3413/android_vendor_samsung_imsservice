.class Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$1;
.super Landroid/content/BroadcastReceiver;
.source "EntitlementConfigService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;
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

    .line 73
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$1;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 76
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 78
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$1;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p1, "changed_config"

    .line 81
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 83
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$1;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-static {v3}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "https://eas3.msg.t-mobile.com/generic_devices"

    invoke-static {v3, v2, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getEntitlementServerUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$1;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-static {v3}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->-$$Nest$fgetmEventLog(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " URL : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 85
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$1;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->-$$Nest$fgetmEventLog(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " DEVICE_CONFIG_UPDATED result ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "request_status"

    .line 86
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "],  errorcode ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "orig_error_code"

    .line 87
    invoke-virtual {p2, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], changed ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const/high16 p0, 0x14020000

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RESULT:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",ERRC:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p2, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.sec.vsim.ericssonnsds.REFRESH_DEVICE_CONFIG"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.sec.vsim.ericssonnsds.RETRY_DEVICE_CONFIG"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    :cond_1
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 95
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$1;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-static {p2}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x3

    invoke-static {p2, v2, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->saveActionTrigger(Landroid/content/Context;Ljava/lang/String;I)V

    .line 99
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$1;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-static {p2}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->-$$Nest$fgetmServiceHandler(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    move-result-object p2

    const/16 v0, 0x6b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 100
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$1;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->-$$Nest$fgetmServiceHandler(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_0
    return-void
.end method
