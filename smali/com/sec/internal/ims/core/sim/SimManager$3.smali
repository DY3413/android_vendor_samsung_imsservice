.class Lcom/sec/internal/ims/core/sim/SimManager$3;
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

    .line 1553
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$3;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1556
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_BACKGROUND"

    .line 1557
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1558
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$3;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGuestMode:Z

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.USER_FOREGROUND"

    .line 1559
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1560
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$3;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGuestMode:Z

    .line 1562
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$3;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManager;->-$$Nest$fgetmSimSlot(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IsGuestMode = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager$3;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGuestMode:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "SimManager"

    invoke-static {p2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
