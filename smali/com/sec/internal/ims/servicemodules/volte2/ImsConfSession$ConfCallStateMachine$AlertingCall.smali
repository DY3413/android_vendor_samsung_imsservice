.class Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$AlertingCall;
.super Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;
.source "ImsConfSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlertingCall"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$AlertingCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    .line 368
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$AlertingCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v1, -0x1

    .line 374
    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const-string v1, ""

    .line 375
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 376
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Enter [AlertingCall]"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 381
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AlertingCall] processMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/16 v3, 0x450

    if-eq v0, v1, :cond_4

    const/16 v1, 0x29

    if-eq v0, v1, :cond_2

    const/16 v1, 0x68

    if-eq v0, v1, :cond_0

    .line 412
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;->processMessage(Landroid/os/Message;)Z

    move-result p0

    return p0

    .line 404
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->SFR:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_1

    .line 405
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$AlertingCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    const-string p1, "Conf call setup timeout"

    invoke-virtual {p0, v3, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$AlertingCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$AlertingCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->-$$Nest$monConferenceEstablished(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;)V

    return v2

    .line 388
    :cond_3
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;->processMessage(Landroid/os/Message;)Z

    move-result p0

    return p0

    .line 391
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$AlertingCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 392
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/util/SipError;

    .line 393
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AlertingCall] conference error code: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": errorMessage "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 393
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$AlertingCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 398
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$AlertingCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->-$$Nest$monConferenceFailError(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;)V

    return v2

    .line 401
    :cond_5
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;->processMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
