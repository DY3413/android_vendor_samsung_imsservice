.class Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NSDSSimEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DeviceReadyReceiver: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NSDSSimEventManager"

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->-$$Nest$misDeviceReady(Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;)Z

    move-result p1

    if-eqz p1, :cond_59

    .line 88
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    iget-object p1, p1, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimManagers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;)Landroid/content/Context;

    move-result-object v0

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->makeDeviceId(Landroid/content/Context;I)V

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->-$$Nest$monEventSimReady(Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;II)V

    goto :goto_2a

    .line 92
    :cond_4e
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_59
    return-void
.end method
