.class Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;
.super Ljava/lang/Object;
.source "WorkflowRjil.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowRjil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Initialize"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

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

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->initUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->clearCookie()V

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    if-eqz v1, :cond_20

    .line 112
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttp;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    goto :goto_4c

    .line 114
    :cond_20
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$1;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_45

    const/4 v1, 0x2

    if-eq v0, v1, :cond_45

    const/4 v1, 0x3

    if-eq v0, v1, :cond_45

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x0

    goto :goto_4c

    .line 123
    :cond_3d
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Finish;

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    goto :goto_4c

    .line 118
    :cond_45
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttp;

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    .line 128
    :goto_4c
    instance-of v0, v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttp;

    if-eqz v0, :cond_64

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    if-nez v0, :cond_64

    .line 130
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "now use wifi. try non-ps step directly."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    :cond_64
    return-object v1
.end method
