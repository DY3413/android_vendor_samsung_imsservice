.class Lcom/sec/internal/ims/config/workflow/WorkflowAtt$12;
.super Landroid/content/BroadcastReceiver;
.source "WorkflowAtt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->registerResetTokenIntentReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V
    .registers 2

    .line 860
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$12;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "com.sec.internal.ims.config.workflow.token_expired_after_max_retry"

    .line 863
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 864
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$12;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget p2, p2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v0, "onReceive: token expired 24hrs after no_more_retry state"

    invoke-static {p1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 865
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$12;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-static {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->-$$Nest$mstopResetTokenTimer(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V

    .line 866
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$12;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->TOKEN_EXPIRED:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->removeToken(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)I

    :cond_23
    return-void
.end method
