.class Lcom/sec/internal/ims/core/sim/SimManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/sim/SimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/sim/SimManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .locals 0

    .line 1509
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$2;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1512
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1513
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.google.android.gts.telephony"

    .line 1514
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 1517
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "LOADED"

    const-string v1, "SimManager"

    const/4 v2, 0x1

    if-nez p2, :cond_2

    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 1519
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$2;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManager;->-$$Nest$mgetGtsAppInstalled(Lcom/sec/internal/ims/core/sim/SimManager;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "ADD GTS package, SendMessage SIM LOAD again"

    .line 1520
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$2;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {p1, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->-$$Nest$msetGtsAppInstalled(Lcom/sec/internal/ims/core/sim/SimManager;Z)V

    .line 1522
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager$2;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    sget-object p1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 1523
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1527
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$2;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManager;->-$$Nest$mgetGtsAppInstalled(Lcom/sec/internal/ims/core/sim/SimManager;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Remove GTS package, SendMessage SIM LOAD again"

    .line 1528
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$2;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->-$$Nest$msetGtsAppInstalled(Lcom/sec/internal/ims/core/sim/SimManager;Z)V

    .line 1530
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager$2;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    sget-object p1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 1531
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_0
    return-void
.end method
