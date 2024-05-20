.class Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$2;
.super Landroid/content/BroadcastReceiver;
.source "NSDSConfigModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$2;->this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 85
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$2;->this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-static {p2}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;)I

    move-result p2

    if-eq p1, p2, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$2;->this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-static {p2}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->-$$Nest$fgetmEventLog(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;)Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p2

    const-string v0, "eSIM timeout"

    invoke-virtual {p2, p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const p1, 0x14010004

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$2;->this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",eSIM timeout"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$2;->this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->-$$Nest$fputmTimeoutEsimReady(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;Z)V

    .line 92
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$2;->this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->onDeviceReady()V

    return-void
.end method
