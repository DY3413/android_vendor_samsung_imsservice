.class Lcom/sec/internal/ims/config/workflow/WorkflowInterop$2;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;
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

    .line 318
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 321
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "FetchHttp:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 322
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 323
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mHttpResponse:I

    return-object v0
.end method
