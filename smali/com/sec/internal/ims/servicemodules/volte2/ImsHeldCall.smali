.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;
.super Lcom/sec/internal/ims/servicemodules/volte2/CallState;
.source "ImsHeldCall.java"


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    return-void
.end method

.method private modified_HeldCall(Landroid/os/Message;)V
    .locals 7

    .line 207
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 208
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 209
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnModified(I)V

    .line 210
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isTtyCall(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 211
    new-instance v1, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v1}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 212
    invoke-virtual {v1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 213
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoQuality()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoQuality(I)V

    .line 214
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    const/16 v4, 0xc8

    .line 216
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v6, v5, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    .line 214
    :cond_0
    invoke-interface {v2, v3, v4, v6, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 218
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 219
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result p0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    invoke-interface {p1, p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onSendRttSessionModifyRequest(IZ)V

    :cond_2
    return-void
.end method

.method private refuerStatus_HeldCall(Landroid/os/Message;)V
    .locals 9

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTransferRequested:Z

    if-eqz v1, :cond_3

    .line 133
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0xc8

    const-string v3, ")"

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    const/4 v2, -0x1

    .line 134
    new-instance v5, Lcom/sec/ims/util/SipError;

    const/16 v6, 0x45e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call transfer success ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, v6, p1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v4, v2, v5}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x45f

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call transfer failed ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionList(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 142
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldBeforeTransfer:Z

    if-eqz v2, :cond_1

    const/16 p1, 0x47

    .line 143
    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 144
    iget-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v4, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldBeforeTransfer:Z

    .line 145
    iput-boolean v4, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTransferRequested:Z

    .line 150
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldBeforeTransfer:Z

    .line 151
    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTransferRequested:Z

    :cond_3
    return-void
.end method

.method private resume_HeldCall()V
    .locals 6

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->resumeCall(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 124
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, -0x1

    new-instance v3, Lcom/sec/ims/util/SipError;

    const/16 v4, 0x3ee

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void

    .line 128
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return-void
.end method

.method private switchRequest_HeldCall(Landroid/os/Message;)Z
    .locals 4

    .line 196
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Rejecting switch request - send 603 to remote party"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x25b

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->rejectModifyCallType(I)I

    move-result p1

    if-gez p1, :cond_0

    .line 198
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 p1, 0x4

    const/4 v0, -0x1

    new-instance v1, Lcom/sec/ims/util/SipError;

    const/16 v2, 0x3ee

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return v2

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private update_HeldCall(Landroid/os/Message;)V
    .locals 6

    .line 156
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "profile"

    .line 157
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/volte2/data/CallProfile;

    .line 158
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSrvccVersion(I)I

    move-result v1

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    const/16 v0, 0x9

    if-ge v1, v0, :cond_0

    .line 160
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mid-call sRVCC supported [during held state]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "cause"

    .line 162
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    const-string v2, ","

    if-ne v0, v1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SRVCC HO STARTED"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x3000000e

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 166
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->srvccStarted:Z

    goto/16 :goto_1

    :cond_1
    const/16 v1, 0xc8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 168
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SRVCC HO SUCCESS"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x3000000f

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 170
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->srvccStarted:Z

    goto/16 :goto_1

    :cond_2
    const/16 v1, 0x1e7

    if-ne v0, v1, :cond_7

    .line 172
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v4, "SRVCC HO FAILURE OR CANCELED"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x30000010

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->srvccStarted:Z

    .line 175
    new-instance v1, Lcom/sec/internal/constants/ims/SipReason;

    const-string v2, "reasonText"

    .line 176
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "SIP"

    invoke-direct {v1, v3, v0, p1, v2}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    .line 177
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {p1, p0, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->sendReInvite(ILcom/sec/internal/constants/ims/SipReason;)I

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_6

    .line 182
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 183
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HeldCall] Held request is ongoing return fail to UPDATE from APP"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-object v0, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldProfile:Lcom/sec/ims/volte2/data/CallProfile;

    goto :goto_0

    .line 185
    :cond_4
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 186
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-object v0, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 190
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x455

    const/16 v0, 0xa

    const-string v1, "Call switch failed"

    invoke-virtual {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v1, -0x1

    .line 32
    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const-string v1, ""

    .line 33
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 35
    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldBeforeTransfer:Z

    if-eqz v1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->pushCallInternal()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnHeld(Z)V

    .line 41
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Enter [HeldCall]"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public exit()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->stopRetriggerTimer()V

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->setPreviousState(Lcom/sec/internal/helper/State;)V

    .line 118
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldProfile:Lcom/sec/ims/volte2/data/CallProfile;

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 46
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

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x33

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x34

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    .line 109
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

    goto :goto_0

    .line 105
    :sswitch_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string p1, "[HeldCall] ignore re-INVITE request"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :sswitch_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x47

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 101
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;->modified_HeldCall(Landroid/os/Message;)V

    goto :goto_0

    .line 68
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;->refuerStatus_HeldCall(Landroid/os/Message;)V

    goto :goto_0

    .line 54
    :sswitch_4
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;->resume_HeldCall()V

    goto :goto_0

    .line 58
    :sswitch_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->handleRemoteHeld(Z)V

    goto :goto_0

    .line 62
    :sswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 64
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transferCall(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;->switchRequest_HeldCall(Landroid/os/Message;)Z

    move-result p0

    return p0

    .line 85
    :sswitch_8
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->handleRemoteHeld(Z)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;->update_HeldCall(Landroid/os/Message;)V

    goto :goto_0

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[HeldCall] already in HOLD"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnHeld(Z)V

    :goto_0
    return v3

    :cond_2
    :sswitch_9
    return v2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x29 -> :sswitch_8
        0x37 -> :sswitch_7
        0x3b -> :sswitch_6
        0x3d -> :sswitch_8
        0x3f -> :sswitch_5
        0x47 -> :sswitch_4
        0x4b -> :sswitch_3
        0x5b -> :sswitch_2
        0x64 -> :sswitch_9
        0xca -> :sswitch_1
        0x190 -> :sswitch_9
        0x1f6 -> :sswitch_0
        0x1388 -> :sswitch_9
    .end sparse-switch
.end method
