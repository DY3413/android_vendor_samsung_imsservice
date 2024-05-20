.class Lcom/sec/internal/ims/core/RegistrationGovernorBase$1;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationGovernorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationGovernorBase;

.field final synthetic val$profile:Lcom/sec/ims/settings/ImsProfile;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorBase;Lcom/sec/ims/settings/ImsProfile;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorBase;

    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$1;->val$profile:Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 160
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorBase;

    iget v1, v1, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " mTask:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$1;->val$profile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorBase;

    iget-object p2, p2, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "RegiGvnBase"

    invoke-static {v2, v1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const-string p2, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 163
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 164
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorBase;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onPackageDataCleared(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
