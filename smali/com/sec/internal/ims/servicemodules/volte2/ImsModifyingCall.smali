.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;
.super Lcom/sec/internal/ims/servicemodules/volte2/CallState;
.source "ImsModifyingCall.java"


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    return-void
.end method

.method private error_ModifyingCall(Landroid/os/Message;)V
    .locals 4

    .line 182
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/util/SipError;

    .line 183
    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const-string v1, "Call switch failed"

    const/16 v2, 0x455

    const/16 v3, 0x1388

    if-lt v0, v3, :cond_0

    .line 184
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[ModifyingCall] big data code over 5000 means call ended"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p1, v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 187
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void

    .line 191
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p1

    const/16 v0, 0x25b

    if-ne p1, v0, :cond_1

    .line 192
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x456

    const-string v1, "Call switch rejected"

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p1, v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 196
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return-void
.end method

.method private modified_ModifyingCall(Landroid/os/Message;)V
    .locals 6

    .line 120
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 121
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 123
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modifiedCallType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", orgCallType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 126
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Modify requested but callType hasn\'t changed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x456

    const-string v1, "Call switch rejected"

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v0

    .line 132
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v1

    xor-int/2addr v1, v3

    .line 131
    invoke-interface {p1, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onSendRttSessionModifyResponse(IZZ)V

    .line 135
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget v0, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPrevUsedCamera:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    if-nez v0, :cond_1

    .line 137
    iput v1, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    .line 139
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return-void

    :cond_2
    const/16 v4, 0x9

    if-eq v0, v4, :cond_3

    .line 144
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 145
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v5, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isRequestTtyFull:Z

    if-nez v5, :cond_4

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "TTY/RTT FULL defered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void

    .line 150
    :cond_4
    iput-boolean v2, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isRequestTtyFull:Z

    :cond_5
    if-eq v0, v1, :cond_8

    .line 154
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result p1

    if-nez p1, :cond_6

    .line 155
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 156
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v4

    .line 157
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 158
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v1

    if-ne v1, v3, :cond_7

    move v2, v3

    .line 156
    :cond_7
    invoke-interface {p1, v4, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onSendRttSessionModifyResponse(IZZ)V

    .line 161
    :cond_8
    new-instance p1, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {p1}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 162
    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 163
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->onCallModified(Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 164
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return-void
.end method

.method private switchRequest_ModifyingCall(Landroid/os/Message;)V
    .locals 5

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->modifyCallType(Lcom/sec/ims/volte2/data/CallProfile;Z)Z

    .line 171
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string p1, "[ModifyingCall] accept a call modification in progress of resolving race condition"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[ModifyingCall] Rejecting switch request while processing modify"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x1eb

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->rejectModifyCallType(I)I

    move-result p1

    if-gez p1, :cond_1

    .line 175
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 p1, 0x4

    const/4 v0, -0x1

    new-instance v2, Lcom/sec/ims/util/SipError;

    const/16 v3, 0x3ee

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v1, -0x1

    .line 27
    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const-string v1, ""

    .line 28
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getModifyRequestedProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v1, v0}, Lcom/sec/internal/helper/ImsCallUtil;->isUpgradeCall(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendCmcPublishDialog()V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Enter [ModifyingCall]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onCallModifyRequested(I)V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->setPreviousState(Lcom/sec/internal/helper/State;)V

    .line 202
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ModifyingCall] processMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    const/4 v3, 0x1

    if-eq v0, v1, :cond_5

    const/16 v1, 0x33

    if-eq v0, v1, :cond_4

    const/16 v1, 0x34

    if-eq v0, v1, :cond_3

    const/16 v1, 0x50

    if-eq v0, v1, :cond_2

    const/16 v1, 0x51

    if-eq v0, v1, :cond_1

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    const/16 v1, 0x55

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] msg:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ignored !!!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 104
    :sswitch_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ModifyingCall] Re-INVITE defered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 43
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;->modified_ModifyingCall(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 53
    :sswitch_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[ModifyingCall] Rejecting resume request while processing modify"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x458

    const-string v0, "Call resume failed"

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    goto :goto_0

    .line 109
    :sswitch_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ModifyingCall] SEND_TEXT defered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 63
    :sswitch_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->handleRemoteHeld(Z)V

    goto :goto_0

    .line 59
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;->switchRequest_ModifyingCall(Landroid/os/Message;)V

    goto :goto_0

    .line 73
    :sswitch_6
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->handleRemoteHeld(Z)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ModifyingCall] Resume video defered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isDeferedVideoResume:Z

    .line 100
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ModifyingCall] Hold video defered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 83
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x455

    const/16 v0, 0xa

    const-string v1, "Call switch failed"

    invoke-virtual {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    goto :goto_0

    .line 47
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[ModifyingCall] Rejecting hold request while processing modify"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x457

    const-string v0, "Call hold failed"

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;->error_ModifyingCall(Landroid/os/Message;)V

    :goto_0
    return v3

    :cond_6
    :sswitch_7
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x29 -> :sswitch_6
        0x37 -> :sswitch_5
        0x3e -> :sswitch_4
        0x40 -> :sswitch_3
        0x47 -> :sswitch_2
        0x5b -> :sswitch_1
        0x64 -> :sswitch_7
        0x190 -> :sswitch_7
        0x1f6 -> :sswitch_0
        0x1388 -> :sswitch_7
    .end sparse-switch
.end method
