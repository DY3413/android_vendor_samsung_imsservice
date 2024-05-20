.class Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;
.super Ljava/lang/Object;
.source "WorkflowPrimaryDevice.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Store"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getUserMessage(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 470
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    .line 479
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    const/4 v4, 0x6

    if-eq v1, v4, :cond_0

    const/4 v4, 0x7

    if-eq v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 491
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v5, v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v5}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion(Ljava/util/Map;)I

    move-result v4

    .line 492
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-virtual {v5}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v5

    if-eq v5, v4, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-ge v4, v2, :cond_2

    move v3, v2

    :cond_2
    if-eqz v5, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    if-nez v3, :cond_4

    .line 495
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Previously working configuration available for this IMSI. Don\'t display T&C."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 497
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getUserAcceptWithDialog(Ljava/util/Map;)Z

    move-result v2

    .line 501
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setOpModeWithUserAccept(ZLjava/util/Map;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v0, v1, :cond_6

    .line 503
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getValidity()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    .line 505
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setTcUserAccept(I)V

    .line 506
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

    return-object v0
.end method
