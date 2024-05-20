.class Lcom/sec/internal/ims/config/workflow/WorkflowSec$7;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchOtp;
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

    .line 568
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchOtp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

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

    .line 571
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "FetchOtp:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 573
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchOtp;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 574
    instance-of v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Finish;

    if-eqz v1, :cond_0

    .line 575
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object p0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->setStatusCode(I)V

    :cond_0
    return-object v0
.end method

.method protected setHttp()V
    .locals 2

    .line 583
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchOtp;->setHttp()V

    .line 584
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 585
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Set-Cookie"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "Cookie"

    .line 584
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpHeader(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
