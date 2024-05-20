.class Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/sim/SimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AkaEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/sim/SimManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 292
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent received : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "id"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    if-nez v0, :cond_0

    const-string p0, "mSoftphoneAccount is null, so skip handling"

    .line 296
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "com.sec.imsservice.AKA_CHALLENGE_COMPLETE"

    .line 299
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    iget-object v2, v1, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    iget v2, v2, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;->mId:I

    if-ne v0, v2, :cond_1

    const-string p0, "result"

    .line 300
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSoftphoneAuthDone(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "com.sec.imsservice.AKA_CHALLENGE_FAILED"

    .line 301
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 302
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->onSoftphoneAuthDone(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
