.class Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$4;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Finish;
.source "WorkflowLocalFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

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

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mLastErrorCodeNonRemote:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setLastErrorCode(I)V

    .line 217
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "all workflow finished"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v1, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget-object v2, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v2, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isGoogDmaPackageInuse(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->mIsAcsSkipped:Z

    if-nez v0, :cond_0

    .line 220
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v3, "notifyRcsAutoConfigurationReceived: local file"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget v3, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    .line 222
    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getProvisioningXml(Z)[B

    move-result-object v2

    .line 221
    invoke-interface {v0, v3, v2, v1}, Lcom/sec/internal/interfaces/google/IGoogleImsService;->notifyRcsAutoConfigurationReceived(I[BZ)V

    .line 225
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->mIsAcsSkipped:Z

    const/4 p0, 0x0

    return-object p0
.end method
