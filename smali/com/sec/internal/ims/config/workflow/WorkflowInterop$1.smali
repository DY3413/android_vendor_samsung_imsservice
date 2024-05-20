.class Lcom/sec/internal/ims/config/workflow/WorkflowInterop$1;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;
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

    .line 296
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/NoInitialDataException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mHttpResponse:I

    .line 313
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;->init()V

    return-void
.end method

.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 299
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "Initialize:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 300
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    .line 301
    instance-of v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;

    if-eqz v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-boolean v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    if-nez v2, :cond_0

    const-string v1, "mMobileNetwork: false, try FetchHttps step"

    .line 303
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    :cond_0
    return-object v1
.end method
