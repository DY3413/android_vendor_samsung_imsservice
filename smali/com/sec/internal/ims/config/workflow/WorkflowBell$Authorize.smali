.class public Lcom/sec/internal/ims/config/workflow/WorkflowBell$Authorize;
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
    name = "Authorize"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

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

    .line 219
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "get OTP & save it to shared info"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 222
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getOtp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    .line 225
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    return-object v0

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setOtp(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 229
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchOtp;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchOtp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    return-object v0
.end method
