.class Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "WorkflowVzw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->registerImsRegistrationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .registers 3

    .line 136
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 2

    .line 132
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
