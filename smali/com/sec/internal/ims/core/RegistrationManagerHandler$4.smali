.class Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationManagerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationManagerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private onT3396Expired(I)V
    .locals 5

    .line 298
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/NetworkEventController;->hasRetryIntentOnPdnFail()Z

    move-result v1

    const-string v2, "RegiMgr-Handler"

    if-eqz v1, :cond_1

    const-string p0, "Operator default timer is running, No need update T3396 timer"

    .line 303
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 307
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 308
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 311
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isNonVoLteSimByPdnFail()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "ignore T3396 expired, it is Non Volte sim"

    .line 312
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 315
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 285
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received Intent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RegiMgr-Handler"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.retryTimeExpired"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p1, "EXTRA_PHONE_ID"

    .line 289
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 290
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->onRetryTimeExpired(I)V

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.retrySetupData"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "phone"

    .line 292
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 293
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;->onT3396Expired(I)V

    :cond_1
    :goto_0
    return-void
.end method
