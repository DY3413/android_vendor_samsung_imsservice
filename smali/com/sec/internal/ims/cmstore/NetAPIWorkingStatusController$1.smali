.class Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$1;
.super Landroid/content/BroadcastReceiver;
.source "NetAPIWorkingStatusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->registerDefaultSmsPackageChangeReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$1;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    .line 238
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$1;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string p1, "registerDefaultSmsPackageChangeReceiver, onReceive: intent is null."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 241
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 242
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$1;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    iget-object p2, p2, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerDefaultSmsPackageChangeReceiver, onReceive: anction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    .line 244
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 245
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$1;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
