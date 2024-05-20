.class Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;
.source "WorkflowInterop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowInterop;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 455
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "Store:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v1

    .line 457
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion(Ljava/util/Map;)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 458
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "versionChange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsDisabledState(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    .line 461
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    .line 462
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 463
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 467
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v0, v1, :cond_2

    .line 468
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getValidity()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    .line 470
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0
.end method
