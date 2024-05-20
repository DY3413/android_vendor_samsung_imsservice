.class Lcom/sec/internal/ims/config/workflow/WorkflowJibe$9;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Finish;
.source "WorkflowJibe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V
    .locals 0

    .line 827
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 2

    .line 830
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "Finish:"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
