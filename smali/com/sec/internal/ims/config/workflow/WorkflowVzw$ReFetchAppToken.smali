.class Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ReFetchAppToken;
.super Ljava/lang/Object;
.source "WorkflowVzw.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowVzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReFetchAppToken"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V
    .locals 0

    .line 1269
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1272
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoAppTokenRetryCount:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    .line 1273
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reFetchAppToken: noAppTokenRetryCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoAppTokenRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " noAppTokenRetryTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->GENERAL_ERROR_RETRY_TIME:[J

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoAppTokenRetryCount:I

    aget-wide v5, v4, v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1275
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoAppTokenRetryCount:I

    aget-wide v3, v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->startGeneralErrorRetryTimer(J)V

    .line 1276
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchAppToken;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchAppToken;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    iput-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 1277
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoAppTokenRetryCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoAppTokenRetryCount:I

    goto :goto_0

    .line 1279
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v3, "reFetchAppToken: no need to retry anymore for no apptoken"

    invoke-static {v1, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1280
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 1281
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsGeneralErrorRetryFailed:Z

    .line 1282
    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    .line 1284
    :goto_0
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    return-object v0
.end method
