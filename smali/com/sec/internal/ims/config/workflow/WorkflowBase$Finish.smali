.class public abstract Lcom/sec/internal/ims/config/workflow/WorkflowBase$Finish;
.super Ljava/lang/Object;
.source "WorkflowBase.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "Finish"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Finish;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Finish;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Finish;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setLastErrorCode(I)V

    .line 354
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "workflow is finished"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
