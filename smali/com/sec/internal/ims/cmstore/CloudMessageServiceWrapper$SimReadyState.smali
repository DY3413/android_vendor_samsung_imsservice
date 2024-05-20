.class Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState;
.super Lcom/sec/internal/helper/State;
.source "CloudMessageServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimReadyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState;-><init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 81
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    const-string v0, "SimReadyState, enter"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 115
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    const-string v0, "SimReadyState, exit"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimReadyState, processMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_2

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 102
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmServiceConnectedState(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 105
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$monProfileReady(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V

    goto :goto_1

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmSimManager(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/Util;->isSimExist(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 92
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$monSimRemoved(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 96
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->disconnect()V

    .line 97
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmDefaultState(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method
