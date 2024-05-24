.class Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;
.super Landroid/content/BroadcastReceiver;
.source "ProvisionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;)V
    .registers 2

    .line 257
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 260
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Factory Reset Added received intent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "android.intent.action.FACTORY_RESET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_31

    .line 263
    :cond_2c
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->-$$Nest$mfactoryReset(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;)V

    :goto_31
    return-void
.end method
