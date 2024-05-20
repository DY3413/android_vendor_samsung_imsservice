.class Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;
.super Ljava/lang/Object;
.source "WorkflowChn.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowChn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Store"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion(Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    .line 514
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "version is 0. need to be retry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->setValidityTimer(I)V

    .line 516
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    return-object v0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getUserAccept(Ljava/util/Map;)Z

    move-result v0

    .line 520
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v2, v0, v1, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setOpModeWithUserAccept(ZLjava/util/Map;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    if-nez v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->-$$Nest$menableRcs(Lcom/sec/internal/ims/config/workflow/WorkflowChn;Z)V

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v0, v1, :cond_2

    .line 525
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getValidity()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->setValidityTimer(I)V

    .line 527
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    return-object v0
.end method
