.class public Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttp;
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
    name = "FetchHttp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "FetchHttp:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpDefault()V

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_58

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 125
    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1ff

    if-ne v0, v1, :cond_3e

    goto :goto_58

    .line 128
    :cond_3e
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleResponse2(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 126
    :cond_58
    :goto_58
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    return-object v0
.end method
