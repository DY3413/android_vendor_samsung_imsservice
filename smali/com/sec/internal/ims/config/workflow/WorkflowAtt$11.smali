.class Lcom/sec/internal/ims/config/workflow/WorkflowAtt$11;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;Landroid/os/Handler;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$11;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 584
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$11;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "onChange: Airplane Mode Observer"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$11;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 587
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$11;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Airplane Mode On: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v0, :cond_0

    .line 589
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$11;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object p1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$11;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    const/16 v0, 0x11

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
