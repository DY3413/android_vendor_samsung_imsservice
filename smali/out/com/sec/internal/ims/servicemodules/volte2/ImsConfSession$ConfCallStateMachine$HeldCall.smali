.class Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$HeldCall;
.super Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;
.source "ImsConfSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeldCall"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V
    .registers 3

    .line 505
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$HeldCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    .line 506
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 511
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$HeldCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v1, -0x1

    .line 512
    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const-string v1, ""

    .line 513
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    const/4 v1, 0x1

    .line 515
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnHeld(Z)V

    .line 516
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Enter [HeldCall]"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onReferStatus(Landroid/os/Message;)V
    .registers 4

    .line 543
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v0, 0x193

    if-eq p1, v0, :cond_12

    const/16 v0, 0x194

    if-eq p1, v0, :cond_12

    const/16 v0, 0x1e8

    if-eq p1, v0, :cond_12

    const/16 v0, 0x195

    if-ne p1, v0, :cond_25

    :cond_12
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_25

    .line 545
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[HeldCall] On_Refer_Status Fail Error"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$HeldCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->-$$Nest$monReferStatusFailError(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;)V

    goto :goto_45

    :cond_25
    const/16 v0, 0x1e7

    if-ne p1, v0, :cond_45

    .line 548
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$HeldCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->-$$Nest$fgetmConfUpdateCmd(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;)Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->ADD_PARTICIPANT:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    if-ne p1, v0, :cond_45

    .line 549
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[HeldCall] On_Refer_Status ADD USER FAILED : notify error 487"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$HeldCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmInvitingParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_45
    :goto_45
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5

    .line 521
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HeldCall] processMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_35

    const/16 v2, 0x4b

    if-eq v0, v2, :cond_31

    const/16 v1, 0x35

    if-eq v0, v1, :cond_35

    const/16 v1, 0x36

    if-eq v0, v1, :cond_35

    packed-switch v0, :pswitch_data_38

    .line 538
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;->processMessage(Landroid/os/Message;)Z

    move-result p0

    return p0

    .line 533
    :cond_31
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$HeldCall;->onReferStatus(Landroid/os/Message;)V

    return v1

    :cond_35
    :pswitch_35
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_38
    .packed-switch 0x65
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method
