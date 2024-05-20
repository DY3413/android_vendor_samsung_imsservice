.class Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;
.super Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;
.source "ImsConfSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadyToCall"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    .line 116
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    return-void
.end method

.method private conference(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 152
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "Not enough participant."

    const/16 v2, 0x3ed

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-lez v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 156
    new-instance v6, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getConferenceUri(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget v8, v8, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-direct {v6, v7, p1, v8}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 158
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getConfSubscribeEnabled(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->enableSubscription(Ljava/lang/String;)V

    .line 159
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getConfSubscribeDialogType(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->setSubscribeDialogType(Ljava/lang/String;)V

    .line 160
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getConfReferUriType(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->setReferUriType(Ljava/lang/String;)V

    .line 161
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getConfRemoveReferUriType(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->setRemoveReferUriType(Ljava/lang/String;)V

    .line 162
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getConfReferUriAsserted(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->setReferUriAsserted(Ljava/lang/String;)V

    .line 163
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V

    .line 164
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getConfUseAnonymousUpdate(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->setUseAnonymousUpdate(Ljava/lang/String;)V

    .line 165
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getConfSupportPrematureEnd(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->setSupportPrematureEnd(Z)V

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v7}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v7

    invoke-interface {v0, v7, v6}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->startNWayConferenceCall(ILcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;)I

    move-result v0

    if-gez v0, :cond_0

    .line 169
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    invoke-direct {p1, v2, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v4, v5, v3, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmGroupInvitingParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ReadyToCall] startNWayConferenceCall() returned session id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->setSessionId(I)V

    .line 186
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setDirection(I)V

    .line 188
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget v0, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-virtual {p1, v0, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->determineCamera(IZ)I

    move-result p1

    if-ltz p1, :cond_1

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startCamera(I)V

    .line 193
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return-void

    .line 176
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    invoke-direct {p1, v2, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v4, v5, v3, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private merge(II)V
    .locals 10

    .line 197
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeldCallId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " AcitveCallId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    .line 205
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Held Session Id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 210
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 212
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_1

    .line 213
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_1

    .line 214
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Active Session Id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const v3, 0x30000008

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Merge,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/16 v3, 0x3ed

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-ltz v2, :cond_d

    if-gez p1, :cond_2

    goto/16 :goto_6

    .line 232
    :cond_2
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getForegroundSessionId()I

    move-result v6

    if-ltz v6, :cond_3

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 233
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getForegroundSessionId()I

    move-result v6

    if-eq v6, v2, :cond_3

    goto :goto_2

    :cond_3
    move v9, v2

    move v2, p1

    move p1, v9

    :goto_2
    if-eqz p2, :cond_4

    .line 241
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V

    .line 244
    :cond_4
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v6, p2, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v6

    iput v6, p2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 246
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmInvitingParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    if-nez p2, :cond_5

    goto/16 :goto_5

    .line 255
    :cond_5
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget v0, p2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v6, 0x5

    if-eq v0, v6, :cond_7

    const/4 v6, 0x6

    if-ne v0, v6, :cond_6

    goto :goto_3

    :cond_6
    move v0, v5

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v0, 0x1

    .line 258
    :goto_4
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget p2, p2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v6, p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getMergeCallType(IZ)I

    move-result p2

    .line 260
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 261
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getConferenceUri(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v6

    .line 262
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v7, v8, :cond_8

    .line 263
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[KDDI]Change ConfUri for Threeway merge call."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "sip:mmtel@3pty-factory.ims.mnc051.mcc440.3gppnetwork.org"

    .line 266
    :cond_8
    new-instance v7, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;

    invoke-direct {v7, v6, p1, v2, p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;-><init>(Ljava/lang/String;III)V

    .line 268
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getConfSubscribeEnabled(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->enableSubscription(Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getConfSubscribeDialogType(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->setSubscribeDialogType(Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getConfReferUriType(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->setReferUriType(Ljava/lang/String;)V

    .line 271
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getConfRemoveReferUriType(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->setRemoveReferUriType(Ljava/lang/String;)V

    .line 272
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getConfReferUriAsserted(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->setReferUriAsserted(Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getConfUseAnonymousUpdate(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->setUseAnonymousUpdate(Ljava/lang/String;)V

    .line 274
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V

    .line 275
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getConfSupportPrematureEnd(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->setSupportPrematureEnd(Z)V

    .line 277
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getAdditionalSipHeaders()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 278
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getAdditionalSipHeaders()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->setExtraSipHeaders(Ljava/util/HashMap;)V

    .line 280
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-interface {v0, v2, v7}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->startNWayConferenceCall(ILcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;)I

    move-result v0

    if-gez v0, :cond_a

    .line 282
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    const-string p2, "remote exception."

    invoke-direct {p1, v3, p2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v4, v5, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void

    .line 287
    :cond_a
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->setSessionId(I)V

    .line 289
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    invoke-virtual {v0, p2, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->determineCamera(IZ)I

    move-result p2

    if-ltz p2, :cond_b

    .line 292
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startCamera(I)V

    .line 294
    :cond_b
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    invoke-static {p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->-$$Nest$fputmPrevActiveSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;I)V

    .line 296
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setDirection(I)V

    .line 298
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mThisConfSm:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    const/16 p2, 0x68

    const-wide/32 v0, 0xafc8

    invoke-virtual {p1, p2, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    .line 300
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return-void

    .line 249
    :cond_c
    :goto_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    const-string p2, "Not Registration."

    invoke-direct {p1, v3, p2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v4, v5, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void

    .line 223
    :cond_d
    :goto_6
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    const-string p2, "Not enough participant."

    invoke-direct {p1, v3, p2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v4, v5, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ReadyToCall] processMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x48

    if-eq v0, v1, :cond_0

    .line 143
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->processMessage(Landroid/os/Message;)Z

    move-result p0

    return p0

    .line 139
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->merge(II)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getConferenceType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "bindToNetwork for Group call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->bindToNetwork(Landroid/net/Network;)V

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fputmIsExtendToConference(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;Z)V

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getConferenceUri(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    .line 132
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;->conference(Ljava/util/List;)V

    :goto_0
    return v2

    .line 134
    :cond_3
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->processMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
