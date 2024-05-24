.class Lcom/sec/internal/ims/core/iil/IilManager$1;
.super Landroid/content/BroadcastReceiver;
.source "IilManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/iil/IilManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/iil/IilManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/iil/IilManager;)V
    .registers 2

    .line 416
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IilManager$1;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 418
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 422
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    const-string/jumbo p1, "ss"

    .line 423
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "phone"

    const/4 v1, 0x0

    .line 424
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 425
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager$1;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    iget v0, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimStateChanaged: phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IilManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 426
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IilManager$1;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    if-ne p2, v0, :cond_43

    const/16 p2, 0x9

    .line 427
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_43
    return-void
.end method
