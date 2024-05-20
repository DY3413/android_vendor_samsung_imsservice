.class public Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;
.super Ljava/lang/Object;
.source "WorkflowBell.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowBell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Initialize"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 85
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "Initialize:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->initUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->clearCookie()V

    .line 90
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-boolean v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    if-eqz v2, :cond_0

    .line 91
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttp;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    goto :goto_0

    .line 93
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell$1;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 102
    :cond_1
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    goto :goto_0

    .line 97
    :cond_2
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttp;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    .line 107
    :goto_0
    instance-of v1, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttp;

    if-eqz v1, :cond_3

    .line 108
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    if-nez v1, :cond_3

    const-string v1, "now use wifi. try non-ps step directly."

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    :cond_3
    return-object v2
.end method
