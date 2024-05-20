.class Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;
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
    name = "FetchHttp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

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

    .line 227
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpDefault()V

    .line 228
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 229
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1ff

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleResponse2(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    if-ne v0, v1, :cond_2

    .line 232
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mIsheaderEnrichment:Z

    .line 234
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

    return-object v0
.end method
