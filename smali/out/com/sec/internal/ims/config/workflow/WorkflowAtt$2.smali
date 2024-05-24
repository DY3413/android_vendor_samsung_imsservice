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
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .registers 3

    .line 134
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string p2, "onDeregistered"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 5

    .line 117
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "onRegistered"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-boolean v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mIsFirstImsRegistrationDone:Z

    if-nez v2, :cond_47

    const/4 v2, 0x1

    .line 119
    iput-boolean v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mIsFirstImsRegistrationDone:Z

    .line 121
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mMsisdn:Ljava/lang/String;

    .line 122
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mMsisdn:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 123
    iget p1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "MSISDN is registered."

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 126
    :cond_27
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": IMS registered, start autoconfig"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 128
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-static {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->-$$Nest$munregisterImsRegistrationListener(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V

    :cond_47
    return-void
.end method
