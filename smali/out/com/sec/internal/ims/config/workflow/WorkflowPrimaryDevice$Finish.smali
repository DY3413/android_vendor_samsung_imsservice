.class Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;
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
    name = "Finish"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V
    .registers 2

    .line 511
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 515
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setLastErrorCode(I)V

    .line 517
    :cond_19
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "all workflow finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->createSharedInfo()V

    const/4 p0, 0x0

    return-object p0
.end method
