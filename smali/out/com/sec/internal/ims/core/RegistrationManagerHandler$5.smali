.class Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;
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
    .registers 2

    .line 322
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 325
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.ims.hvolte.MODE_SWITCH"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 329
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p1, :cond_26

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionCount()I

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 330
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasEmergencyCall(I)Z

    move-result p1

    if-eqz p1, :cond_7b

    :cond_26
    const-string p1, "modeType"

    const/4 v0, 0x1

    .line 331
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 332
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DsacEventReceiver, dsac Mode : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object p2, p2, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getVolteAllowedWithDsac()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_58

    if-ne p1, v0, :cond_58

    .line 335
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->setVolteAllowedWithDsac(Z)V

    goto :goto_6e

    .line 337
    :cond_58
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object p2, p2, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getVolteAllowedWithDsac()Z

    move-result p2

    if-nez p2, :cond_6d

    const/4 p2, 0x2

    if-ne p1, p2, :cond_6d

    .line 338
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->setVolteAllowedWithDsac(Z)V

    goto :goto_6e

    :cond_6d
    move v0, v1

    :goto_6e
    if-eqz v0, :cond_7b

    .line 343
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 p1, 0x92

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_7b
    return-void
.end method
