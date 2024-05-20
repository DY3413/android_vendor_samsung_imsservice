.class Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$2;
.super Landroid/content/BroadcastReceiver;
.source "NetAPIWorkingStatusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->registerAirplaneMode(Landroid/content/Context;)V
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

    .line 265
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$2;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 268
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 269
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$2;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    iget-object p2, p2, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerAirplaneMode, BroadcastReceiver, action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.AIRPLANE_MODE"

    .line 270
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 271
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$2;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 272
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 273
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$2;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method
