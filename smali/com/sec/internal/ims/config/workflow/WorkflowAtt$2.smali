.class Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "WorkflowAtt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowAtt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 0

    .line 135
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onDeregistered()"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 3

    .line 118
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "onRegistered()"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-boolean v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mIsFirstImsRegistrationDone:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 120
    iput-boolean v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mIsFirstImsRegistrationDone:Z

    .line 122
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mMsisdn:Ljava/lang/String;

    .line 123
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object p1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mMsisdn:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p1, "MSISDN is registered."

    .line 124
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": IMS registered, start autoconfig"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 129
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-static {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->-$$Nest$munregisterImsRegistrationListener(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V

    :cond_1
    return-void
.end method
