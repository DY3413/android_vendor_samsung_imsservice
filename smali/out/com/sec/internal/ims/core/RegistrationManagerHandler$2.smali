.class Lcom/sec/internal/ims/core/RegistrationManagerHandler$2;
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

    .line 262
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$2;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 265
    sget-object p1, Lcom/sec/ims/extensions/Extensions$Intent;->ACTION_USER_SWITCHED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 266
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$2;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/UserEventController;->getCurrentUserId()I

    move-result p1

    .line 267
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result p2

    if-eq p1, p2, :cond_4e

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User Switch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RegiMgr-Handler"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$2;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/UserEventController;->setCurrentUserId(I)V

    .line 271
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$Environment;->initForCurrentUser()V

    .line 272
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$2;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 273
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$2;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4e
    return-void
.end method
