.class Lcom/sec/internal/ims/core/RegistrationGovernorSpr$1;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationGovernorSpr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationGovernorSpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSpr;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorSpr;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSpr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "intent = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RegiGvnSpr"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "com.sec.sprint.wfc.HRADRESET_SUCCESS"

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 98
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSpr;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 99
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->resetRetry()V

    .line 100
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSpr;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopRetryTimer()V

    .line 101
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSpr;

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    :cond_3c
    return-void
.end method
