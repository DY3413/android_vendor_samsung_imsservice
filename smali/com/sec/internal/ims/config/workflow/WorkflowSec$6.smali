.class Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;
.source "WorkflowSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method protected getOtp()Ljava/lang/String;
    .locals 3

    .line 547
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getSmsType(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "text"

    .line 549
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->-$$Nest$fgetmAuthTryCount(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 551
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->-$$Nest$fgetmAuthTryCount(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->-$$Nest$fputmAuthTryCount(Lcom/sec/internal/ims/config/workflow/WorkflowSec;I)V

    .line 552
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getOtp()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v1, "binary"

    .line 554
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->-$$Nest$fgetmAuthHiddenTryCount(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 556
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->-$$Nest$fgetmAuthHiddenTryCount(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->-$$Nest$fputmAuthHiddenTryCount(Lcom/sec/internal/ims/config/workflow/WorkflowSec;I)V

    .line 557
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getPortOtp()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 561
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "otp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 540
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "Authorize:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 541
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0
.end method
