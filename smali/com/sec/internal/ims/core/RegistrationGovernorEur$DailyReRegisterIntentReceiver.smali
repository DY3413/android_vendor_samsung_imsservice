.class Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationGovernorEur.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationGovernorEur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DailyReRegisterIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorEur;)V
    .locals 0

    .line 1125
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorEur;Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorEur;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.intent.ACTION_CHECK_REGISTRATION_DAILY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "RegiGvnEur"

    const-string p2, "DailyReRegisterIntentReceiver : CHECK_REGISTRATION_DAILY received"

    .line 1129
    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    iget-object v0, p2, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget p2, p2, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result p2

    .line 1132
    invoke-static {p2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "DailyReRegisterIntentReceiver : NETWORK_TYPE_LTE/NR"

    .line 1133
    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    iget-object p2, p2, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "DailyReRegisterIntentReceiver : state not REGISTERED, proceeding with initial registration"

    .line 1137
    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    iget-object p2, p1, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p1, p1, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {p2, p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1139
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    iget-object p1, p1, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1140
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->releaseThrottle(I)V

    .line 1141
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(I)Z

    goto :goto_0

    .line 1142
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    iget-boolean p2, p2, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasVoLteCall:Z

    const/4 v0, 0x1

    if-nez p2, :cond_1

    const-string p2, "DailyReRegisterIntentReceiver : state REGISTERED, proceeding with re-register message"

    .line 1144
    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    iget-object p1, p1, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setHasForcedPendingUpdate(Z)V

    .line 1146
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->addPendingUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V

    goto :goto_0

    :cond_1
    const-string p2, "DailyReRegisterIntentReceiver : state REGISTERED, but call active - postponing re-registration until call ended"

    .line 1151
    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mHasPendingReRegistration:Z

    :cond_2
    :goto_0
    return-void
.end method
