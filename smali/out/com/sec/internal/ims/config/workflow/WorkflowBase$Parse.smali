.class public abstract Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;
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
    name = "Parse"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V
    .registers 2

    .line 289
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseParam(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 301
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->parseParam(Ljava/util/Map;)V

    return-void
.end method

.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getParsedXmlFromBody()Ljava/util/Map;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isRequiredAuthentication(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 294
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 296
    :cond_1a
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;->parseParam(Ljava/util/Map;)V

    .line 297
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setParsedXml(Ljava/util/Map;)V

    .line 298
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0
.end method
