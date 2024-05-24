.class public abstract Lcom/sec/internal/ims/core/handler/VolteHandler;
.super Lcom/sec/internal/ims/core/handler/BaseHandler;
.source "VolteHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/BaseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public addParticipantToNWayConferenceCall(II)I
    .registers 3

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public addParticipantToNWayConferenceCall(ILjava/lang/String;)I
    .registers 3

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public addUserForConferenceCall(ILcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;Z)I
    .registers 4

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public answerCallWithCallType(II)I
    .registers 3

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public answerCallWithCallType(IILjava/lang/String;)I
    .registers 4

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public answerCallWithCallType(IILjava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public cancelTransferCall(I)I
    .registers 2

    .line 303
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "cancelTransferCall: not implemented."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public clearAllCallInternal(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public deleteTcpSocket(II)I
    .registers 3

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public enableQuantumSecurityService(IZ)I
    .registers 3

    .line 366
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "enableQuantumSecurityService: not implemented."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public endCall(IILcom/sec/internal/constants/ims/SipReason;)I
    .registers 4

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public handleCmcCsfb(I)I
    .registers 2

    .line 392
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleCmcCsfb: not implemented."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public handleDtmf(IIIILandroid/os/Message;)I
    .registers 6

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 339
    iget v0, p1, Landroid/os/Message;->what:I

    .line 341
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public holdCall(I)I
    .registers 2

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public makeCall(ILcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;Ljava/util/HashMap;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public modifyCallType(III)I
    .registers 4

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public proceedIncomingCall(ILjava/util/HashMap;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    .registers 7

    .line 317
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "publishDialog: not implemented."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public pullingCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/Dialog;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 310
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "pullingCall: not implemented."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public registerForCallStateEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public registerForCdpnInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public registerForCmcInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public registerForDedicatedBearerNotifyEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public registerForDialogEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public registerForDialogSubscribeStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public registerForDtmfEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public registerForIncomingCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public registerForReferStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public registerForRtpLossRateNoti(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public registerForSIPMSGEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public registerForTextEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public registerForUssdEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public registerQuantumSecurityStatusEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public rejectCall(IILcom/sec/ims/util/SipError;)I
    .registers 4

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public rejectModifyCallType(II)I
    .registers 3

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public removeParticipantFromNWayConferenceCall(II)I
    .registers 3

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public removeParticipantFromNWayConferenceCall(ILjava/lang/String;)I
    .registers 3

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public replaceSipCallId(ILjava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method public replaceUserAgent(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public replyModifyCallType(IIII)I
    .registers 5

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public replyModifyCallType(IIIILjava/lang/String;)I
    .registers 6

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public replyWithIdc(IIIILjava/lang/String;)I
    .registers 6

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public resumeCall(I)I
    .registers 2

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public sendCmcInfo(ILandroid/os/Bundle;)I
    .registers 3

    .line 354
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendCmcInfo: not implemented."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public sendDtmfEvent(ILjava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method public sendInfo(IILjava/lang/String;I)I
    .registers 5

    .line 348
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendInfo: not implemented."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public sendNegotiatedLocalSdp(ILjava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method public sendReInvite(ILcom/sec/internal/constants/ims/SipReason;)I
    .registers 3

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public sendReInviteWithIdcExtra(ILjava/lang/String;)I
    .registers 3

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public sendText(ILjava/lang/String;I)I
    .registers 4

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public sendTtyData(I[B)I
    .registers 3

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public sendVcsInfo(ILandroid/os/Bundle;)I
    .registers 3

    .line 360
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendVcsInfo: not implemented."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public setAutomaticMode(IZ)V
    .registers 3

    .line 0
    return-void
.end method

.method public setOutOfService(ZI)V
    .registers 3

    .line 0
    return-void
.end method

.method public setQuantumSecurityInfo(ILandroid/os/Bundle;)I
    .registers 3

    .line 372
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "setQuantumSecurityInfo: not implemented."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public setRttMode(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public setTtyMode(III)I
    .registers 4

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public setTtyMode(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setVideoCrtAudio(IZ)V
    .registers 3

    .line 0
    return-void
.end method

.method public startNWayConferenceCall(ILcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;)I
    .registers 3

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public startVideoEarlyMedia(I)I
    .registers 2

    .line 378
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "startVideoEarlyMedia: not implemented."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public transferCall(ILjava/lang/String;)I
    .registers 3

    .line 297
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "transferCall: not implemented."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public unregisterForCallStateEvent(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public unregisterForCdpnInfoEvent(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public unregisterForCmcInfoEvent(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public unregisterForDedicatedBearerNotifyEvent(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public unregisterForDialogEvent(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public unregisterForDialogSubscribeStatus(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public unregisterForDtmfEvent(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public unregisterForIncomingCallEvent(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public unregisterForReferStatus(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public unregisterForRrcConnectionEvent(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public unregisterForRtpLossRateNoti(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public unregisterForSIPMSGEvent(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public unregisterForTextEvent(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public unregisterForUssdEvent(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public unregisterQuantumSecurityStatusEvent(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public updateAudioInterface(ILjava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method public updateAudioInterface(ILjava/lang/String;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .registers 4

    .line 0
    return-void
.end method

.method public updateNrSaModeOnStart(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public updateScreenOnOff(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public updateXqEnable(IZ)V
    .registers 3

    .line 0
    return-void
.end method
