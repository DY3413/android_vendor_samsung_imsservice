.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;
.super Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;
.source "ImsConfSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfCallStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$EndingCall;,
        Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ResumingCall;,
        Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$HeldCall;,
        Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$HoldingCall;,
        Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$InCall;,
        Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$AlertingCall;,
        Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$OutgoingCall;,
        Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;
    }
.end annotation


# static fields
.field public static final ON_CONFERENCE_CALL_TIMEOUT:I = 0x68

.field static final ON_PARTICIPANT_ADDED:I = 0x65

.field static final ON_PARTICIPANT_REMOVED:I = 0x66

.field static final ON_PARTICIPANT_UPDATED:I = 0x67


# instance fields
.field private mConfErrorCode:I

.field private mConfUpdateCmd:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

.field private mPrevActiveSession:I

.field private mSentConfData:Z

.field final mThisConfSm:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConfUpdateCmd(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;)Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mConfUpdateCmd:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrevActiveSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;)I
    .locals 0

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mPrevActiveSession:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmPrevActiveSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;I)V
    .locals 0

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mPrevActiveSession:I

    return-void
.end method

.method static bridge synthetic -$$Nest$monConferenceEstablished(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->onConferenceEstablished()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monConferenceFailError(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->onConferenceFailError()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monReferStatusFailError(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->onReferStatusFailError()V

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            "Lcom/sec/ims/ImsRegistration;",
            "Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;",
            "Lcom/sec/internal/constants/Mno;",
            "Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/volte2/IImsCallSessionEventListener;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;",
            "Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    move-object v12, p0

    move-object v0, p1

    .line 97
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    const-string v10, "ConfCallStateMachine"

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v11, p11

    .line 98
    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Ljava/lang/String;Landroid/os/Looper;)V

    const/4 v0, -0x1

    .line 89
    iput v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mPrevActiveSession:I

    .line 90
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->UNKNOWN:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    iput-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mConfUpdateCmd:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    .line 91
    iput v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mConfErrorCode:I

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mSentConfData:Z

    .line 100
    iput-object v12, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mThisConfSm:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    .line 103
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;

    invoke-direct {v0, p0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ReadyToCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    .line 104
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$OutgoingCall;

    invoke-direct {v0, p0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$OutgoingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    .line 105
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$AlertingCall;

    invoke-direct {v0, p0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$AlertingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    .line 106
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$InCall;

    invoke-direct {v0, p0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$InCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    .line 107
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$HeldCall;

    invoke-direct {v0, p0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$HeldCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

    .line 108
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$HoldingCall;

    invoke-direct {v0, p0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$HoldingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

    .line 109
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ResumingCall;

    invoke-direct {v0, p0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ResumingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

    .line 110
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$EndingCall;

    invoke-direct {v0, p0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$EndingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    return-void
.end method

.method private addConferenceParticipant(Landroid/os/Message;)V
    .locals 6

    .line 739
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->ADD_PARTICIPANT:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mConfUpdateCmd:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    .line 741
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getConferenceType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 743
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmIsExtendToConference(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    .line 746
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "\\$"

    .line 747
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 750
    :goto_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    aget-object v2, p1, v1

    .line 751
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    const/4 v4, 0x0

    iget-object v5, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->buildUri(Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 752
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addConferenceParticipant "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmGroupInvitingParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v4

    .line 755
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 754
    invoke-interface {v3, v4, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->addParticipantToNWayConferenceCall(ILjava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    .line 756
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "addConferenceParticipant failed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 761
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 762
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_3

    .line 764
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ANY_STATE] ADD_PARTICIPANT: session not exist with callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 767
    :cond_3
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p1, v1, :cond_4

    .line 768
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p1, v1, :cond_4

    .line 769
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "[ANY_STATE] call to be added is neither InCall nor HeldCall."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 772
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmInvitingParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, v1, :cond_5

    .line 774
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mPrevActiveSession:I

    .line 776
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    .line 777
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    .line 776
    invoke-interface {p1, v1, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->addParticipantToNWayConferenceCall(II)I

    move-result p1

    if-gez p1, :cond_6

    .line 778
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "addConferenceParticipant: fail."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method private checkParticipantCount()V
    .locals 4

    .line 1128
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkParticipantCount mParticipants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mGroupParticipants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmGroupParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseArray;

    move-result-object v2

    .line 1129
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1128
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getConferenceType()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmInvitingParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1132
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    goto :goto_0

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getConferenceType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_1

    .line 1136
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmGroupParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1137
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleConferenceFailError(Landroid/os/Message;Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;)V
    .locals 5

    .line 920
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confUpdateCmd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/util/SipError;

    .line 922
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    .line 924
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->ADD_PARTICIPANT:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    const/16 v2, 0x1388

    if-eq p2, v1, :cond_5

    const/16 p2, 0x320

    if-ne v0, p2, :cond_0

    .line 927
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p2, v1, :cond_6

    :cond_0
    const/16 p2, 0x1f4

    const/4 v1, 0x7

    if-ne v0, p2, :cond_1

    .line 928
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->DLOG:Lcom/sec/internal/constants/Mno;

    if-eq p2, v3, :cond_2

    :cond_1
    if-ne v0, v2, :cond_3

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELIA_FINLAND:Lcom/sec/internal/constants/Mno;

    if-ne p2, v2, :cond_3

    .line 930
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mPrevActiveSession:I

    invoke-interface {p2, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 932
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conf fail; resume session:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mPrevActiveSession:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", errorCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->resume()V

    goto :goto_1

    .line 938
    :cond_3
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {p2, v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    .line 939
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 940
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conf fail; terminate callsession; session::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 940
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 946
    :cond_4
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getSipReasonFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;

    move-result-object p2

    .line 948
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-interface {v0, v1, v2, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->endCall(IILcom/sec/internal/constants/ims/SipReason;)I

    .line 951
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->onConferenceEnded()V

    .line 952
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 953
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->unhandledMessage(Landroid/os/Message;)V

    goto :goto_2

    :cond_5
    if-lt v0, v2, :cond_6

    .line 957
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->onConferenceEnded()V

    .line 958
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    const/4 p1, 0x3

    .line 959
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 963
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method

.method private handleConferenceFailResumeError(Landroid/os/Message;)V
    .locals 5

    .line 896
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mPrevActiveSession:I

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 897
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/ims/util/SipError;

    .line 898
    invoke-virtual {v1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    if-eqz v0, :cond_0

    .line 900
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conf fail; resume session:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mPrevActiveSession:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->resume()V

    :cond_0
    const/16 v0, 0x1e7

    if-eq v1, v0, :cond_1

    const/16 v0, 0x25e

    if-ne v1, v0, :cond_2

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const/16 v0, 0x193

    if-eq v1, v0, :cond_3

    const/16 v0, 0x1e0

    if-ne v1, v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->IDEA_INDIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_5

    :cond_4
    const/4 v0, 0x7

    .line 904
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getSipReasonFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;

    move-result-object v0

    .line 906
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->endCall(IILcom/sec/internal/constants/ims/SipReason;)I

    .line 909
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->onConferenceEnded()V

    .line 910
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 911
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->unhandledMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 914
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method private isErrorCodeToResumeSession(I)Z
    .locals 0

    const/16 p0, 0x1e6

    if-eq p1, p0, :cond_1

    const/16 p0, 0x1e7

    if-eq p1, p0, :cond_1

    const/16 p0, 0x1e0

    if-eq p1, p0, :cond_1

    const/16 p0, 0x193

    if-eq p1, p0, :cond_1

    const/16 p0, 0x1f7

    if-eq p1, p0, :cond_1

    const/16 p0, 0x190

    if-eq p1, p0, :cond_1

    const/16 p0, 0x25e

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private onConferenceCallTimeout()V
    .locals 3

    .line 1143
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConferenceCallTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmInvitingParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    const/4 v2, 0x7

    .line 1146
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1149
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1152
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    return-void
.end method

.method private onConferenceEnded()V
    .locals 4

    .line 986
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mSentConfData:Z

    if-nez v0, :cond_0

    .line 987
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 988
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARN"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 989
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    const-string v3, "PSCI"

    invoke-static {v1, v2, v3, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    const/4 v0, 0x1

    .line 990
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mSentConfData:Z

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmParticipantStatus(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 993
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 994
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mThisConfSm:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    return-void
.end method

.method private onConferenceEstablished()V
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$mnotifyOnConferenceEstablished(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)V

    .line 1002
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return-void
.end method

.method private onConferenceFailError()V
    .locals 4

    .line 712
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->UNKNOWN:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mConfUpdateCmd:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    .line 713
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 714
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->onConferenceEnded()V

    .line 715
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_0

    .line 716
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    const/4 v0, 0x3

    .line 717
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 723
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    .line 726
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mPrevActiveSession:I

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 728
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "conf fail; resume session:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mPrevActiveSession:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->resume()V

    :cond_1
    const/4 v0, -0x1

    .line 731
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mPrevActiveSession:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 733
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private onConferenceFailError(Landroid/os/Message;Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;)V
    .locals 4

    .line 968
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->UNKNOWN:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mConfUpdateCmd:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    .line 969
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/util/SipError;

    .line 970
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    .line 972
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ANY_STATE] onConferenceFailError : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 974
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 976
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->isErrorCodeToResumeSession(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->handleConferenceFailResumeError(Landroid/os/Message;)V

    goto :goto_0

    .line 979
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->handleConferenceFailError(Landroid/os/Message;Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;)V

    :goto_0
    const/4 p1, -0x1

    .line 981
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mPrevActiveSession:I

    :cond_1
    return-void
.end method

.method private onConferenceParticipantAdded(Landroid/os/Message;)V
    .locals 6

    .line 819
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 820
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;

    .line 821
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getSessionId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$mgetSessionFromInvitingParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    .line 823
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getParticipantId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 824
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ANY_STATE] already added participantId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getParticipantId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 824
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 830
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ANY_STATE] ON_PARTICIPANT_ADDED: session not exist with sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getSessionId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 830
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    .line 835
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isRemoteHeld()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x6

    .line 838
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ANY_STATE] participant status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->notifyParticipantAdded(I)V

    .line 840
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onConferenceParticipantAdded(ILjava/lang/String;)V

    .line 841
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmInvitingParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 842
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getParticipantId()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 843
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmParticipantStatus(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getParticipantId()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 845
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ANY_STATE] participant added - sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " participantId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getParticipantId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 845
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmInvitingParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ANY_STATE] all participant add success!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mThisConfSm:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    goto/16 :goto_0

    .line 854
    :cond_4
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->UNKNOWN:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mConfUpdateCmd:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    return-void
.end method

.method private onConferenceParticipantRemoved(Landroid/os/Message;)V
    .locals 4

    .line 858
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 859
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;

    .line 860
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getParticipantId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-nez v1, :cond_0

    .line 863
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ANY_STATE] ON_PARTICIPANT_REMOVED: participant not exist. participantId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getParticipantId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 863
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 868
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->notifyParticipantRemoved(I)V

    .line 869
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onConferenceParticipantRemoved(ILjava/lang/String;)V

    .line 870
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getParticipantId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 871
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmParticipantStatus(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getParticipantId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 872
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ANY_STATE] partcitipant removed - sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " participantId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getParticipantId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 872
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 878
    :cond_1
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->UNKNOWN:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mConfUpdateCmd:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    .line 879
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->checkParticipantCount()V

    return-void
.end method

.method private onConferenceParticipantUpdated(Landroid/os/Message;)V
    .locals 0

    .line 883
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 884
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->updateConferenceParticipants(Ljava/util/List;)V

    .line 885
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->checkParticipantCount()V

    .line 886
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "[ANY_STATE] participant list updated "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onReferStatusFailError()V
    .locals 4

    .line 1175
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mConfUpdateCmd:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->ADD_PARTICIPANT:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    const/16 v2, 0x451

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "On_Refer_Status ADD USER FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    .line 1181
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmInvitingParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 1182
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->REMOVE_PARTICIPANT:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    if-ne v0, v1, :cond_1

    .line 1183
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "On_Refer_Status REMOVE USER FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x452

    .line 1184
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    goto :goto_0

    .line 1188
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmIsExtendToConference(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1189
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "On_Refer_Status extendToConference failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fputmIsExtendToConference(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;Z)V

    const-string v0, "Add user to session failure"

    .line 1191
    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    goto :goto_0

    .line 1194
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "On_Refer_Status TerminateConference"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    .line 1197
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mPrevActiveSession:I

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1199
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conf Fail; Resume Session:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mPrevActiveSession:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->resume()V

    :cond_3
    const/4 v0, -0x1

    .line 1203
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mPrevActiveSession:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1205
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private participantStatus(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "ON-HOLD"

    return-object p0

    :pswitch_1
    const-string p0, "ALERTING"

    return-object p0

    :pswitch_2
    const-string p0, "NON_ACTIVE"

    return-object p0

    :pswitch_3
    const-string p0, "REMOVING"

    return-object p0

    :pswitch_4
    const-string p0, "ACTIVE"

    return-object p0

    :pswitch_5
    const-string p0, "INVITING"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removeConferenceParticipant(Landroid/os/Message;)V
    .locals 3

    .line 786
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->REMOVE_PARTICIPANT:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mConfUpdateCmd:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    .line 788
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "KOR operator do not support remove participant"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getConferenceType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 794
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 795
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->buildUri(Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    .line 796
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeConferenceParticipant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    .line 798
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 797
    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->removeParticipantFromNWayConferenceCall(ILjava/lang/String;)I

    move-result p1

    if-gez p1, :cond_3

    .line 799
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "removeConferenceParticipant failed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 802
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 803
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$mgetParticipantId(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 806
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ANY_STATE] REMOVE_PARTICIPANT: session not exist with callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 810
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    .line 811
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    .line 810
    invoke-interface {p1, v1, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->removeParticipantFromNWayConferenceCall(II)I

    move-result p1

    if-gez p1, :cond_3

    .line 812
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "removeConferenceParticipant: fail."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private updateGroupConferenceParticipants(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;",
            ">;)V"
        }
    .end annotation

    .line 1096
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1098
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGroupConferenceParticipants participantSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    new-array v1, v0, [Ljava/lang/String;

    .line 1100
    new-array v2, v0, [I

    .line 1101
    new-array v3, v0, [I

    .line 1102
    new-array v4, v0, [I

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_2

    .line 1105
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;

    .line 1106
    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1107
    invoke-virtual {v8}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getUri()Ljava/lang/String;

    move-result-object v8

    :goto_1
    aput-object v8, v1, v6

    .line 1108
    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getParticipantStatus()I

    move-result v8

    aput v8, v2, v6

    .line 1109
    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getParticipantId()I

    move-result v7

    aput v7, v4, v6

    .line 1111
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmParticipantStatus(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseIntArray;

    move-result-object v7

    aget v8, v4, v6

    aget v9, v2, v6

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1112
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "participant="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v1, v6

    invoke-static {v9}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", participantId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v4, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", status="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v2, v6

    .line 1113
    invoke-direct {p0, v9}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->participantStatus(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1112
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    aget v7, v2, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 1116
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmGroupParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseArray;

    move-result-object v7

    aget v8, v4, v6

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 1117
    iget v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mConfErrorCode:I

    aput v7, v3, v6

    goto :goto_2

    .line 1119
    :cond_1
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmGroupParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseArray;

    move-result-object v7

    aget v8, v4, v6

    aget-object v9, v1, v6

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1120
    aput v5, v3, v6

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 1123
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mConfErrorCode:I

    .line 1124
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->notifyParticipantsUpdated([Ljava/lang/String;[I[I)V

    return-void
.end method

.method private updateNwayConferenceParticipants(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;",
            ">;)V"
        }
    .end annotation

    .line 1062
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;

    .line 1063
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1064
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 1065
    :goto_1
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getParticipantId()I

    move-result v2

    .line 1066
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getParticipantStatus()I

    move-result v3

    .line 1067
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1068
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateConferenceParticipants: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " status "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->participantStatus(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1068
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    .line 1073
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "old participant in non-active state. remove it."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1073
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->notifyParticipantRemoved(I)V

    .line 1076
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onConferenceParticipantRemoved(ILjava/lang/String;)V

    .line 1077
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1078
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmParticipantStatus(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_2

    .line 1080
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmParticipantStatus(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 1081
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmParticipantStatus(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->getParticipantId()I

    move-result v0

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x0

    const/4 v2, 0x6

    if-ne v3, v2, :cond_2

    if-eq v1, v2, :cond_2

    .line 1082
    sget-object v2, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    if-eq v2, v5, :cond_2

    .line 1084
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyConfParticipantOnHeld(IZ)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    if-ne v3, v2, :cond_3

    if-eq v1, v2, :cond_3

    .line 1085
    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_3

    .line 1087
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyConfParticipanOnResumed(IZ)V

    .line 1091
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "updateConferenceParticipants: new participant."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method notifyParticipantAdded(I)V
    .locals 3

    .line 1006
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1009
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 1012
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onParticipantAdded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1014
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1018
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method notifyParticipantRemoved(I)V
    .locals 3

    .line 1022
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1025
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 1028
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onParticipantRemoved(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1030
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1034
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method notifyParticipantsUpdated([Ljava/lang/String;[I[I)V
    .locals 4

    .line 1038
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1041
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 1044
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2, p3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onParticipantUpdated(I[Ljava/lang/String;[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1046
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1050
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 6

    .line 622
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ANY_STATE] unhandledMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/16 v1, 0x35

    if-eq v0, v1, :cond_1

    const/16 v1, 0x36

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 707
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->unhandledMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 703
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->onConferenceCallTimeout()V

    goto/16 :goto_2

    .line 641
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->onConferenceParticipantUpdated(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 637
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->onConferenceParticipantRemoved(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 633
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->onConferenceParticipantAdded(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 629
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->removeConferenceParticipant(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 625
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->addConferenceParticipant(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 672
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 673
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/util/SipError;

    .line 674
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v2

    .line 675
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 676
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ANY_STATE] conference error code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": errorMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ConfUpdateCmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mConfUpdateCmd:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    .line 678
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 676
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mConfUpdateCmd:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->ADD_PARTICIPANT:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_4

    .line 680
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getConferenceType()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 681
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Participant add fail, clear list"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmInvitingParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_3
    const/16 v1, 0x451

    .line 685
    invoke-virtual {p0, v1, v0, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    goto :goto_0

    .line 689
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->REMOVE_PARTICIPANT:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    if-ne v3, v1, :cond_5

    const/16 v1, 0x452

    .line 690
    invoke-virtual {p0, v1, v0, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    .line 695
    :cond_5
    :goto_0
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mConfErrorCode:I

    .line 696
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->mConfUpdateCmd:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->onConferenceFailError(Landroid/os/Message;Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;)V

    goto :goto_2

    .line 698
    :cond_6
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->unhandledMessage(Landroid/os/Message;)V

    goto :goto_2

    .line 650
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmInvitingParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 651
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ANY_STATE] Conference call ended before merge request is not completed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->-$$Nest$fgetmInvitingParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x7

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 655
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 660
    :cond_8
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getSipReasonFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;

    move-result-object v0

    .line 661
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->endCall(IILcom/sec/internal/constants/ims/SipReason;)I

    .line 663
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->onConferenceEnded()V

    .line 664
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 665
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->unhandledMessage(Landroid/os/Message;)V

    goto :goto_2

    .line 667
    :cond_9
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->unhandledMessage(Landroid/os/Message;)V

    goto :goto_2

    .line 645
    :cond_a
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->onConferenceEnded()V

    .line 646
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->unhandledMessage(Landroid/os/Message;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method updateConferenceParticipants(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;",
            ">;)V"
        }
    .end annotation

    .line 1054
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getConferenceType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1055
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->updateNwayConferenceParticipants(Ljava/util/List;)V

    goto :goto_0

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getConferenceType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1057
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->updateGroupConferenceParticipants(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method
