.class Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;
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

    .line 398
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

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

    .line 401
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "Initialize:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 403
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    const/4 v2, 0x0

    iput v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mHttpResponse:I

    .line 404
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    .line 405
    instance-of v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;

    if-eqz v2, :cond_1

    .line 406
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 407
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "getNextWorkflow: mStorage is not ready"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x13020504

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",STOR_NR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": getNextWorkflow: mStorage is not ready"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 410
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 412
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-boolean v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    if-nez v2, :cond_1

    const-string v1, "mMobileNetwork: false, try FetchHttps step"

    .line 413
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    :cond_1
    return-object v1
.end method
