.class Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;
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

    .line 590
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 593
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "Store:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 595
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v1

    .line 596
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion(Ljava/util/Map;)I

    move-result v2

    .line 597
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    .line 598
    invoke-virtual {v5}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "Store: version [%s] => [%s]"

    .line 597
    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    .line 600
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v2, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    sget-object v3, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->VERSION_ZERO:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-interface {v2, v0, v3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsDisabledState(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    .line 604
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    .line 605
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 606
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 609
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v0, v1, :cond_2

    .line 610
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getValidity()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    .line 612
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0
.end method
