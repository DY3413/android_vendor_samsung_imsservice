.class public Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;
.super Lcom/sec/internal/helper/StateMachine;
.source "CallStateMachine.java"


# static fields
.field public static final ACCEPT:I = 0x16

.field public static final ADD_PARTICIPANT:I = 0x35

.field public static final CANCEL_TRANSFER:I = 0x3c

.field public static final CHECK_VIDEO_DBR:I = 0x19

.field public static final DELAYED_CAMSTART:I = 0x18

.field public static final DELAYED_EPSFB_CHECK_TIMING:I = 0x1389

.field public static final EMERGENCY_INVITE:I = 0xe

.field public static final EXTENDS_CONFERENCE:I = 0x49

.field protected static final FEATURE_FAST_ACCEPT:Z = false

.field public static final FORCE_NOTIFY_CURRENT_CODEC:I = 0x64

.field public static final HANDLE_DTMF:I = 0x38

.field public static final HOLD:I = 0x33

.field public static final HOLD_VIDEO:I = 0x50

.field public static final INCOMING:I = 0x15

.field public static final INFO:I = 0x65

.field public static final LOCATION_ACQUIRING:I = 0xd

.field public static final MERGE:I = 0x48

.field public static final NOTIFY_ERROR:I = 0x1a

.field public static final ON_100_TRYING_TIMEOUT:I = 0xd0

.field public static final ON_ACCEPT_TIMEOUT:I = 0xd4

.field public static final ON_BUSY:I = 0x2a

.field public static final ON_CALLING:I = 0x21

.field public static final ON_CAMERA_START_FAILED:I = 0xcf

.field public static final ON_CMC_DTMF_EVENT:I = 0x56

.field public static final ON_CMC_INFO_EVENT:I = 0x57

.field public static final ON_DEDICATED_BEARER_LOST:I = 0x1388

.field public static final ON_DUMMY_DNS_TIMER_EXPIRED:I = 0x131

.field public static final ON_E911_INVITE_TILL_180_TIMER_FAIL:I = 0x133

.field public static final ON_EARLYMEDIA:I = 0x20

.field public static final ON_ENDED:I = 0x3

.field public static final ON_EPDG_CONNECTION_CHANGED:I = 0x190

.field public static final ON_EPDN_SETUP_FAIL:I = 0x132

.field public static final ON_ERROR:I = 0x4

.field public static final ON_ESTABLISHED:I = 0x29

.field public static final ON_EXTEND_TO_CONFERENCE:I = 0x4a

.field public static final ON_FORCE_ESTABLISHED:I = 0x258

.field public static final ON_FORWARDED:I = 0x24

.field public static final ON_HELD_BOTH:I = 0x3f

.field public static final ON_HELD_LOCAL:I = 0x3d

.field public static final ON_HELD_REMOTE:I = 0x3e

.field public static final ON_LOCATION_ACQUIRING_SUCCESS:I = 0x1f5

.field public static final ON_LOCATION_ACQUIRING_TIMEOUT:I = 0x1f4

.field public static final ON_LTE_911_FAIL:I = 0x12f

.field public static final ON_LTE_911_FAIL_AFTER_DELAY:I = 0x130

.field public static final ON_MODIFIED:I = 0x5b

.field public static final ON_NEXT_PCSCF_CHANGED:I = 0x192

.field public static final ON_OUTGOING_CALL_REG_TIMEOUT:I = 0xd3

.field public static final ON_POOR_VIDEO_TIMER_EXPIRED:I = 0xcd

.field public static final ON_RECORD_EVENT:I = 0x2bc

.field public static final ON_REFER_STATUS:I = 0x4b

.field public static final ON_REINVITE_TIMER_EXPIRED:I = 0x12e

.field public static final ON_RESUME_CALL_RETRY_TIMEOUT:I = 0xca

.field public static final ON_RINGINGBACK:I = 0x22

.field public static final ON_RING_TIMEOUT:I = 0xcc

.field public static final ON_RRC_RELEASED:I = 0x191

.field public static final ON_RTT_DEDICATED_BEARER_LOST:I = 0xd2

.field public static final ON_RTT_DEDICATED_BEARER_TIMER_EXPIRED:I = 0xd1

.field public static final ON_SESSIONPROGRESS:I = 0x23

.field public static final ON_SESSIONPROGRESS_TIMEOUT:I = 0xcb

.field public static final ON_SWITCH_REQUEST:I = 0x37

.field public static final ON_TIMER_VZW_EXPIRED:I = 0x12d

.field public static final ON_TRYING:I = 0x1f

.field public static final ON_USSD_INDICATION:I = 0x5e

.field public static final ON_USSD_RESPONSE:I = 0x5d

.field public static final ON_VCID_EVENT:I = 0x320

.field public static final ON_VIDEO_HELD:I = 0x52

.field public static final ON_VIDEO_HOLD_FAILED:I = 0x54

.field public static final ON_VIDEO_RESUMED:I = 0x53

.field public static final ON_VIDEO_RESUME_FAILED:I = 0x55

.field public static final ON_VIDEO_RTP_RTCP_TIMEOUT:I = 0xce

.field public static final PULLING:I = 0xc

.field public static final REJECT:I = 0x17

.field public static final REMOVE_PARTICIPANT:I = 0x36

.field public static final RESUME:I = 0x47

.field public static final RESUME_VIDEO:I = 0x51

.field public static final RE_INVITE:I = 0x1f6

.field public static final SEND_TEXT:I = 0x40

.field public static final SET_CALL_PROFILE:I = 0xf

.field public static final START:I = 0xb

.field public static final TERMINATE:I = 0x1

.field public static final TERMINATED:I = 0x2

.field public static final TRANSFER_REQUEST:I = 0x3b

.field public static final UPDATE:I = 0x34

.field protected static final VZW_TTY_REINVITE_TIMEOUT:I = 0x7d0


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field callType:I

.field errorCode:I

.field errorMessage:Ljava/lang/String;

.field isDeferedVideoResume:Z

.field isLocationAcquiringTriggered:Z

.field isRequestTtyFull:Z

.field lazerErrorCode:I

.field lazerErrorMessage:Ljava/lang/String;

.field protected mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

.field protected mCallEndTime:J

.field protected mCallInitEPDG:Z

.field protected mCallInitTime:J

.field protected mCallRingingTime:J

.field protected mCallTerminateTime:J

.field protected mCallTypeHistory:Ljava/lang/String;

.field protected mCameraUsedAtOtherApp:Z

.field protected mCmcCallEstablishTime:J

.field protected mConfCallAdded:Z

.field protected mContext:Landroid/content/Context;

.field protected mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

.field protected mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

.field protected mHeldCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

.field protected mHeldProfile:Lcom/sec/ims/volte2/data/CallProfile;

.field protected mHoldBeforeTransfer:Z

.field protected mHoldingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

.field protected mHoldingProfile:Lcom/sec/ims/volte2/data/CallProfile;

.field protected mHoldingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;

.field protected mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

.field protected mIncomingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

.field protected mIsBigDataEndReason:Z

.field protected mIsCheckVideoDBR:Z

.field protected mIsCmcHandover:Z

.field protected mIsPendingCall:Z

.field protected mIsSentMobileCareEvt:Z

.field protected mIsStartCameraSuccess:Z

.field protected mIsWPSCall:Z

.field protected mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/volte2/IImsCallSessionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalVideoRtcpPort:I

.field private mLocalVideoRtpPort:I

.field protected mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

.field protected mMno:Lcom/sec/internal/constants/Mno;

.field protected mModifyRequested:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;

.field protected mModifyingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;

.field protected mModifyingProfile:Lcom/sec/ims/volte2/data/CallProfile;

.field protected mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

.field protected mNeedToLateEndedNotify:Z

.field protected mNeedToWaitEndcall:Z

.field protected mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

.field protected mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

.field protected mOnErrorDelayed:Z

.field protected mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

.field protected mPreAlerting:Z

.field protected mPrevState:Lcom/sec/internal/helper/State;

.field protected mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

.field protected mRegistration:Lcom/sec/ims/ImsRegistration;

.field protected mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field protected mReinvite:Z

.field protected mRemoteHeld:Z

.field private mRemoteVideoRtcpPort:I

.field private mRemoteVideoRtpPort:I

.field mRequestLocation:Z

.field protected mResumingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

.field protected mResumingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;

.field protected mRetriggerTimeoutMessage:Landroid/os/Message;

.field protected mRetryInprogress:Z

.field protected mRingTimeoutMessage:Landroid/os/Message;

.field protected mSIPFlowInfo:Ljava/lang/String;

.field protected mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

.field protected mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

.field protected mTransferRequested:Z

.field mTryingReceived:Z

.field protected mUserAnswered:Z

.field protected mVideoHeld:Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;

.field protected mVideoRTPtimeout:Z

.field protected mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

.field quit:Z

.field sipError:Lcom/sec/ims/util/SipError;

.field sipReason:Lcom/sec/internal/constants/ims/SipReason;

.field srvccStarted:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 2
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
            "Ljava/lang/String;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 263
    invoke-direct {p0, p10, p11}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    const-string p10, "CallStateMachine"

    .line 57
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const/4 p10, 0x0

    .line 62
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    .line 63
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIncomingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    .line 64
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    .line 65
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    .line 66
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    .line 67
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

    .line 68
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

    .line 69
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

    .line 70
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;

    .line 71
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyRequested:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;

    .line 72
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;

    .line 73
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVideoHeld:Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;

    .line 74
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;

    .line 75
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    .line 76
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    const/4 p11, 0x0

    .line 183
    iput p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v0, -0x1

    .line 184
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 185
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->lazerErrorCode:I

    const-string v0, ""

    .line 186
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 187
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->lazerErrorMessage:Ljava/lang/String;

    .line 188
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipError:Lcom/sec/ims/util/SipError;

    .line 189
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipReason:Lcom/sec/internal/constants/ims/SipReason;

    .line 190
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->srvccStarted:Z

    .line 192
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 193
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 194
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 196
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTryingReceived:Z

    .line 197
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isDeferedVideoResume:Z

    .line 198
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isRequestTtyFull:Z

    .line 199
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isLocationAcquiringTriggered:Z

    .line 200
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->quit:Z

    .line 201
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRequestLocation:Z

    const/4 v1, 0x1

    .line 204
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsStartCameraSuccess:Z

    .line 205
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsSentMobileCareEvt:Z

    .line 206
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsPendingCall:Z

    .line 207
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mUserAnswered:Z

    .line 208
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCameraUsedAtOtherApp:Z

    .line 209
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsWPSCall:Z

    .line 210
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNeedToWaitEndcall:Z

    .line 211
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOnErrorDelayed:Z

    .line 212
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsCheckVideoDBR:Z

    .line 213
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsBigDataEndReason:Z

    .line 214
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNeedToLateEndedNotify:Z

    .line 215
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallTypeHistory:Ljava/lang/String;

    .line 217
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteHeld:Z

    .line 218
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldBeforeTransfer:Z

    .line 219
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTransferRequested:Z

    .line 220
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetryInprogress:Z

    .line 221
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mConfCallAdded:Z

    .line 224
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mPreAlerting:Z

    .line 225
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReinvite:Z

    .line 227
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRingTimeoutMessage:Landroid/os/Message;

    .line 228
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetriggerTimeoutMessage:Landroid/os/Message;

    .line 230
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSIPFlowInfo:Ljava/lang/String;

    .line 231
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVideoRTPtimeout:Z

    const-wide/16 v0, 0x0

    .line 232
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallInitTime:J

    .line 233
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallRingingTime:J

    .line 234
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallTerminateTime:J

    .line 235
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallEndTime:J

    .line 236
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallInitEPDG:Z

    .line 237
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCmcCallEstablishTime:J

    .line 238
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsCmcHandover:Z

    .line 240
    iput p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mLocalVideoRtpPort:I

    .line 241
    iput p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mLocalVideoRtcpPort:I

    .line 242
    iput p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteVideoRtpPort:I

    .line 243
    iput p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteVideoRtcpPort:I

    .line 245
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 246
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 247
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 248
    sget-char p11, Lcom/sec/internal/constants/Mno;->MVNO_DELIMITER:C

    .line 256
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

    .line 257
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    .line 265
    iput-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 267
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 268
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 269
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 270
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    .line 271
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    .line 272
    iput-object p8, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 273
    iput-object p9, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    .line 274
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    .line 275
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    .line 277
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    .line 278
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIncomingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    .line 279
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    .line 280
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    .line 281
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    .line 282
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

    .line 283
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

    .line 284
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

    .line 285
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;

    .line 286
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyRequested:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;

    .line 287
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;

    .line 288
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVideoHeld:Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;

    .line 289
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;

    .line 290
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    .line 291
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    return-void
.end method

.method private handleSetCSFBError(IILjava/lang/String;I)V
    .locals 4

    .line 882
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsWPSCall:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x193

    if-eq p2, v0, :cond_1

    .line 883
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/sec/ims/volte2/data/CallProfile;->setHasCSFBError(Z)V

    goto :goto_0

    .line 885
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    new-instance v3, Lcom/sec/ims/util/SipError;

    invoke-direct {v3, p2, p3}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, p1, v2, v3, p4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isCsfbErrorCode(IILcom/sec/ims/util/SipError;I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setHasCSFBError(Z)V

    .line 889
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object p3, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne p1, p3, :cond_3

    const/16 p1, 0x198

    if-ne p2, p1, :cond_3

    .line 890
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, p2, :cond_3

    .line 891
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setHasCSFBError(Z)V

    .line 892
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string p1, "USCC - Do not perform CSFB when 408 is received after User is alerted"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private handleSwitchFail(Lcom/sec/ims/volte2/data/CallProfile;I)V
    .locals 2

    .line 897
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 898
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 901
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 902
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 903
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result p0

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onSendRttSessionModifyResponse(IZZ)V

    goto/16 :goto_1

    .line 904
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 905
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 906
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result p0

    invoke-interface {p1, p0, v1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onSendRttSessionModifyResponse(IZZ)V

    goto :goto_1

    .line 907
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-eqz v0, :cond_4

    .line 908
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Notify switch call fail during Holding call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-interface {v0, v1, p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V

    goto :goto_1

    .line 910
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 911
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Race condition - Call type is same as Requested call type"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-interface {v0, v1, p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V

    goto :goto_1

    .line 900
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-interface {v0, v1, p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method protected calculateCmcCallTime(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_0

    .line 1094
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcCallEstablishTime()J

    move-result-wide p1

    .line 1095
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PS callEstablishTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1097
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getCmcCallEstablishTime(Ljava/lang/String;)J

    move-result-wide p1

    .line 1098
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CS callEstablishTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 1102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p1

    .line 1104
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callEstablishTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", currentTime : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", cmcCallTime : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v2

    .line 1107
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected determineCamera(IZ)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_5

    const/16 v2, 0x8

    if-eq p1, v2, :cond_5

    const/16 v2, 0x13

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x6

    if-ne p1, v2, :cond_2

    .line 349
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 350
    invoke-interface {v2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionByCallType(I)Ljava/util/List;

    move-result-object v2

    .line 351
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 358
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_5

    const/4 v1, 0x0

    goto :goto_1

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_4

    if-eqz p2, :cond_4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, -0x1

    :cond_5
    :goto_1
    if-ltz v1, :cond_6

    .line 370
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    if-ltz v0, :cond_6

    .line 371
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using mSession.mLastUsedCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    .line 374
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "determineCamera calltype: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isForSwitchRcved: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", camera: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method protected forceNotifyCurrentCodec()V
    .locals 7

    .line 1014
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1017
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 1018
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork()Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v4

    .line 1020
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    iget v4, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v5, 0x12

    if-eq v4, v5, :cond_0

    .line 1022
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setRemoteVideoCapa(Z)V

    .line 1026
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1027
    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v5

    .line 1026
    invoke-interface {v3, v4, v5}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onProfileUpdated(Lcom/sec/ims/volte2/data/MediaProfile;Lcom/sec/ims/volte2/data/MediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1029
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1033
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected getNetworkStatsVideoCall()J
    .locals 2

    .line 1209
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getNetworkStatsVideoCall"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    if-eqz p0, :cond_0

    .line 1212
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->getNetworkStatsVideoCall()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getPendingCall()Z
    .locals 0

    .line 1378
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsPendingCall:Z

    return p0
.end method

.method public getPreAlerting()Z
    .locals 0

    .line 1370
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mPreAlerting:Z

    return p0
.end method

.method protected getPreviousState()Lcom/sec/internal/helper/State;
    .locals 0

    .line 1058
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mPrevState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method protected getSipReasonFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;
    .locals 14

    .line 1111
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSipReasonFromUserReason: reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SIP"

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p1, v2, :cond_0

    .line 1115
    new-instance p0, Lcom/sec/internal/constants/ims/SipReason;

    new-array p1, v1, [Ljava/lang/String;

    const-string v2, "SRVCC"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/16 v2, 0x19

    if-ne p1, v2, :cond_1

    .line 1117
    new-instance p0, Lcom/sec/internal/constants/ims/SipReason;

    new-array p1, v1, [Ljava/lang/String;

    const-string v2, "INVITE FLUSH"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object p0

    :cond_1
    const/16 v2, 0xd

    if-ne p1, v2, :cond_2

    .line 1119
    new-instance p0, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v5, 0x0

    const/4 v7, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const-string v4, ""

    const-string v6, "PS BARRING"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    return-object p0

    :cond_2
    const/16 v2, 0x14

    if-ne p1, v2, :cond_3

    .line 1121
    new-instance p0, Lcom/sec/internal/constants/ims/SipReason;

    const/16 p1, 0x1777

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, ""

    const-string v2, "MDMN_PULL_BY_PRIMARY"

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object p0

    :cond_3
    const/16 v2, 0xb

    if-ne p1, v2, :cond_7

    .line 1123
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_4

    .line 1124
    new-instance p0, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v6, 0x0

    const/4 v8, 0x1

    new-array v9, v1, [Ljava/lang/String;

    const-string v5, "SIP"

    const-string v7, "DEDICATED BEARER LOST"

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    return-object p0

    .line 1125
    :cond_4
    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_d

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->ORANGE_MOLDOVA:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_5

    goto/16 :goto_0

    .line 1127
    :cond_5
    sget-object p0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const-string p1, "DEDICATED BEARER LOST"

    if-ne v2, p0, :cond_6

    .line 1128
    new-instance p0, Lcom/sec/internal/constants/ims/SipReason;

    const/16 v2, 0xc8

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object p0

    .line 1130
    :cond_6
    new-instance p0, Lcom/sec/internal/constants/ims/SipReason;

    new-array v2, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object p0

    :cond_7
    const/16 v0, 0xe

    if-ne p1, v0, :cond_9

    .line 1133
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object p1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_8

    .line 1134
    new-instance p0, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v4, 0x0

    const/4 v6, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const-string v3, "SIP"

    const-string v5, "DEREGISTERED"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    return-object p0

    .line 1136
    :cond_8
    new-instance p0, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v10, 0x0

    const/4 v12, 0x1

    new-array v13, v1, [Ljava/lang/String;

    const-string v9, ""

    const-string v11, ""

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    return-object p0

    :cond_9
    const/16 v0, 0x17

    if-ne p1, v0, :cond_b

    .line 1139
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_a

    sget-object v2, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_d

    .line 1140
    :cond_a
    new-instance p0, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v5, 0x0

    const/4 v7, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const-string v4, ""

    const-string v6, "RRC CONNECTION REJECT"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    return-object p0

    :cond_b
    const/16 v0, 0x11

    if-ne p1, v0, :cond_c

    .line 1143
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_d

    .line 1144
    new-instance p0, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v5, 0x0

    const/4 v7, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const-string v4, ""

    const-string v6, "SESSIONPROGRESS TIMEOUT"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    return-object p0

    .line 1146
    :cond_c
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->GENERIC_IR92:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_d

    const/4 v0, 0x5

    if-ne p1, v0, :cond_d

    .line 1147
    new-instance p0, Lcom/sec/internal/constants/ims/SipReason;

    const/16 v4, 0xc8

    const/4 v6, 0x0

    new-array v7, v1, [Ljava/lang/String;

    const-string v3, "SIP"

    const-string v5, "User Triggered"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    return-object p0

    .line 1150
    :cond_d
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getSipReasonMno()Lcom/sec/internal/constants/ims/SipReason;

    move-result-object p0

    .line 1151
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/SipReason;->getFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;

    move-result-object p0

    return-object p0
.end method

.method protected getSipReasonMno()Lcom/sec/internal/constants/ims/SipReason;
    .locals 2

    .line 1155
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    new-instance p0, Lcom/sec/internal/constants/ims/SipReasonKor;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReasonKor;-><init>()V

    return-object p0

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 1158
    new-instance p0, Lcom/sec/internal/constants/ims/SipReasonVzw;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReasonVzw;-><init>()V

    return-object p0

    .line 1159
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 1160
    new-instance p0, Lcom/sec/internal/constants/ims/SipReasonBmc;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReasonBmc;-><init>()V

    return-object p0

    .line 1161
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    .line 1162
    new-instance p0, Lcom/sec/internal/constants/ims/SipReasonUscc;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReasonUscc;-><init>()V

    return-object p0

    .line 1163
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_9

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_9

    sget-object v1, Lcom/sec/internal/constants/Mno;->EE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 1165
    :cond_4
    sget-object v1, Lcom/sec/internal/constants/Mno;->OPTUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_5

    .line 1166
    new-instance p0, Lcom/sec/internal/constants/ims/SipReasonOptus;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReasonOptus;-><init>()V

    return-object p0

    .line 1167
    :cond_5
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_6

    .line 1168
    new-instance p0, Lcom/sec/internal/constants/ims/SipReasonTmoUs;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReasonTmoUs;-><init>()V

    return-object p0

    .line 1169
    :cond_6
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->ORANGE_MOLDOVA:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_7

    goto :goto_0

    .line 1172
    :cond_7
    new-instance p0, Lcom/sec/internal/constants/ims/SipReason;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReason;-><init>()V

    return-object p0

    .line 1170
    :cond_8
    :goto_0
    new-instance p0, Lcom/sec/internal/constants/ims/SipReasonOrange;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReasonOrange;-><init>()V

    return-object p0

    .line 1164
    :cond_9
    :goto_1
    new-instance p0, Lcom/sec/internal/constants/ims/SipReasonRjil;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReasonRjil;-><init>()V

    return-object p0
.end method

.method public getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 2

    .line 493
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->quit:Z

    if-eqz v0, :cond_0

    .line 494
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 497
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    if-ne v0, v1, :cond_1

    .line 499
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIncomingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    if-ne v0, v1, :cond_2

    .line 501
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 502
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    if-ne v0, v1, :cond_3

    .line 503
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 504
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    if-ne v0, v1, :cond_4

    .line 505
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 506
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    if-ne v0, v1, :cond_5

    .line 507
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 508
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

    if-ne v0, v1, :cond_6

    .line 509
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 510
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

    if-ne v0, v1, :cond_7

    .line 511
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 512
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

    if-ne v0, v1, :cond_8

    .line 513
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 514
    :cond_8
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;

    if-ne v0, v1, :cond_9

    .line 515
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 516
    :cond_9
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;

    if-ne v0, v1, :cond_a

    .line 517
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 518
    :cond_a
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVideoHeld:Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;

    if-ne v0, v1, :cond_b

    .line 519
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->VideoHeld:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 520
    :cond_b
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;

    if-ne v0, v1, :cond_c

    .line 521
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 522
    :cond_c
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    if-ne v0, v1, :cond_d

    .line 523
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 524
    :cond_d
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyRequested:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;

    if-ne v0, p0, :cond_e

    .line 525
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 528
    :cond_e
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0
.end method

.method public getStateByName(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 0

    .line 532
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_0
    const-string p0, "ReadyToCall"

    .line 534
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 535
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_1
    const-string p0, "IncomingCall"

    .line 536
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 537
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_2
    const-string p0, "OutGoingCall"

    .line 538
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 539
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_3
    const-string p0, "AlertingCall"

    .line 540
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 541
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_4
    const-string p0, "InCall"

    .line 542
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 543
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_5
    const-string p0, "HoldingCall"

    .line 544
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 545
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_6
    const-string p0, "HeldCall"

    .line 546
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 547
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_7
    const-string p0, "ResumingCall"

    .line 548
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 549
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_8
    const-string p0, "ModifyingCall"

    .line 550
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 551
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_9
    const-string p0, "HoldingVideo"

    .line 552
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 553
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_a
    const-string p0, "VideoHeld"

    .line 554
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 555
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->VideoHeld:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_b
    const-string p0, "ResumingVideo"

    .line 556
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 557
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_c
    const-string p0, "EndingCall"

    .line 558
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 559
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_d
    const-string p0, "ModifyRequested"

    .line 560
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 561
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 564
    :cond_e
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0
.end method

.method protected handleRemoteHeld(Z)V
    .locals 3

    .line 1037
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mOldLocalHoldTone:Z

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLocalHoldTone:Z

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1038
    :goto_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteHeld:Z

    if-ne v1, p1, :cond_3

    if-eqz p1, :cond_1

    if-nez v0, :cond_3

    .line 1040
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRemoteHeld: remote already "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string p1, "held"

    goto :goto_1

    :cond_2
    const-string p1, "resumed"

    .line 1041
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1040
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1045
    :cond_3
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteHeld:Z

    if-eqz p1, :cond_4

    .line 1047
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnHeld(Z)V

    goto :goto_2

    .line 1049
    :cond_4
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnResumed(Z)V

    :goto_2
    return-void
.end method

.method public handleSPRoutgoingError(Landroid/os/Message;)Z
    .locals 6

    .line 1285
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_4

    .line 1286
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/util/SipError;

    .line 1287
    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v1, 0x1e6

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1e7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x198

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1294
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 1295
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1298
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "mmtel-video"

    goto :goto_0

    :cond_1
    const-string v2, "mmtel"

    :goto_0
    const/16 v3, 0x190

    const/16 v4, 0x6a5

    if-lt v0, v3, :cond_2

    const/16 v3, 0x2bb

    if-gt v0, v3, :cond_2

    .line 1303
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v5, "4xx,5xx,6xx error. trigger cs fallback"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    new-instance v3, Lcom/sec/ims/util/SipError;

    invoke-direct {v3, v0}, Lcom/sec/ims/util/SipError;-><init>(I)V

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    .line 1306
    invoke-virtual {p1, v4}, Lcom/sec/ims/util/SipError;->setCode(I)V

    :cond_2
    const/16 v3, 0x2c5

    if-ne v0, v3, :cond_4

    .line 1310
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v3, "709 error. trigger cs fallback"

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    new-instance p0, Lcom/sec/ims/util/SipError;

    invoke-direct {p0, v0}, Lcom/sec/ims/util/SipError;-><init>(I)V

    invoke-interface {v1, v2, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    .line 1313
    invoke-virtual {p1, v4}, Lcom/sec/ims/util/SipError;->setCode(I)V

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method protected init()V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 297
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIncomingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 298
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 299
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 300
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 302
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 303
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 304
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyRequested:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 306
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 308
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 309
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVideoHeld:Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 310
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 314
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkStat"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

    .line 315
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 316
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;-><init>(ILcom/sec/internal/constants/Mno;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    .line 318
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallTypeHistory:Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isEpdgCall()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallInitEPDG:Z

    return-void
.end method

.method protected isChangedCallType(Lcom/sec/ims/volte2/data/CallProfile;)Z
    .locals 0

    .line 668
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p0

    .line 669
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected modifyCallType(Lcom/sec/ims/volte2/data/CallProfile;Z)Z
    .locals 8

    .line 568
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    .line 569
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, ", updateCallType: "

    const-string v4, "modifyCallType("

    const/4 v5, 0x0

    if-eqz p2, :cond_6

    .line 573
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ") curCallType: "

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {p2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const-string v3, "Call switch failed"

    const/16 v4, 0x455

    if-nez p2, :cond_0

    .line 577
    invoke-virtual {p0, v4, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    return v5

    :cond_0
    const/16 p2, 0x9

    if-ne v0, p2, :cond_1

    .line 583
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 584
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 585
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    .line 584
    invoke-interface {p2, v0, v4, p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V

    return v5

    :cond_1
    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    const/4 p1, 0x4

    if-ne v1, p1, :cond_2

    .line 591
    invoke-virtual {p0, v4, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    return v5

    :cond_2
    if-eq v1, p2, :cond_3

    .line 597
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 598
    :cond_3
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isRequestTtyFull:Z

    .line 601
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p2

    invoke-interface {p1, p2, v0, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->modifyCallType(III)I

    move-result p1

    .line 603
    invoke-virtual {p0, v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->determineCamera(IZ)I

    move-result p2

    if-ltz p2, :cond_5

    .line 605
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startCamera(I)V

    goto :goto_0

    .line 607
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPrevUsedCamera:I

    goto :goto_0

    .line 610
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    .line 611
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ") reqCallType: "

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", curCallType: "

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {p2, p0, v0, v1, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->replyModifyCallType(IIII)I

    move-result p1

    :goto_0
    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    move v2, v5

    :goto_1
    return v2
.end method

.method public needToLateEndedNotify()Z
    .locals 0

    .line 1374
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNeedToLateEndedNotify:Z

    return p0
.end method

.method public needToLogForATTGate(I)Z
    .locals 1

    .line 1261
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/os/ImsGateConfig;->isGateEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected notifyCmcDtmfEvent(I)V
    .locals 5

    .line 865
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 866
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCmcDtmfEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 868
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 870
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v3, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcDtmfKey(I)V

    .line 871
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 872
    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v4

    .line 871
    invoke-interface {v2, v3, v4}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onProfileUpdated(Lcom/sec/ims/volte2/data/MediaProfile;Lcom/sec/ims/volte2/data/MediaProfile;)V

    .line 873
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcDtmfKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 875
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 878
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected notifyConfParticipanOnResumed(IZ)V
    .locals 4

    .line 966
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 967
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyConfParticipanOnResumed: sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 969
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 972
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onConfParticipantResumed(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 974
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 978
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected notifyConfParticipantOnHeld(IZ)V
    .locals 4

    .line 950
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 951
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyConfParticipantOnHeld: sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 953
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 956
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onConfParticipantHeld(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 958
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 962
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected notifyOnCallForwarded()V
    .locals 3

    .line 726
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 727
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    .line 729
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setHistoryInfo(Ljava/lang/String;)V

    .line 733
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 735
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 738
    :try_start_0
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onForwarded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 740
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 744
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected notifyOnEarlyMediaStarted(I)V
    .locals 3

    .line 694
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 697
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 700
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEarlyMediaStarted(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 702
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 706
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected notifyOnEnded(I)V
    .locals 6

    .line 748
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    .line 749
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOnEnded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    .line 752
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    new-instance v4, Lcom/sec/ims/util/SipError;

    invoke-direct {v4, p1}, Lcom/sec/ims/util/SipError;-><init>(I)V

    invoke-interface {v2, v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isCsfbErrorCode(IILcom/sec/ims/util/SipError;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setHasCSFBError(Z)V

    .line 754
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 755
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v2

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 756
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v2

    const/4 v4, 0x7

    invoke-interface {v2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 757
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v2

    const/4 v4, 0x5

    invoke-interface {v2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 758
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->hasCSFBError()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 759
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v1

    .line 760
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "boundSessionId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_1

    .line 762
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->handleCmcCsfb(I)I

    .line 766
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/16 v4, 0x96e

    const/4 v5, 0x0

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_3

    .line 767
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isPendedEPDGWeakSignal(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 768
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getRadioTech()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    const/16 p1, 0x6a7

    .line 770
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->setPendedEPDGWeakSignal(IZ)V

    goto :goto_0

    .line 771
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isRttEmergencyCall(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 772
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    if-ne v1, v4, :cond_4

    move p1, v4

    .line 777
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    if-nez v1, :cond_5

    .line 780
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNeedToLateEndedNotify:Z

    goto :goto_1

    .line 782
    :cond_5
    iput-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNeedToLateEndedNotify:Z

    :goto_1
    if-ge v5, v1, :cond_6

    .line 786
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 789
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEnded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 791
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 795
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 796
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsSentMobileCareEvt:Z

    if-nez v1, :cond_7

    .line 797
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->sendMobileCareEvent(IIILjava/lang/String;)V

    .line 798
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsSentMobileCareEvt:Z

    .line 801
    :cond_7
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->lazerErrorCode:I

    return-void
.end method

.method protected notifyOnError(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0xa

    .line 805
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    return-void
.end method

.method protected notifyOnError(ILjava/lang/String;I)V
    .locals 4

    .line 809
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    .line 810
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOnError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->handleSetCSFBError(IILjava/lang/String;I)V

    .line 813
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    .line 814
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isPendedEPDGWeakSignal(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 815
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getNetworkType()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    const/16 p1, 0x6a7

    .line 817
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v1

    invoke-interface {v1, v0, v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->setPendedEPDGWeakSignal(IZ)V

    goto :goto_0

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    .line 819
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttEmergencyCall(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 820
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v0, v1, :cond_3

    :cond_2
    const/16 p1, 0x96e

    const-string p2, "RTT E911 Call Fail"

    .line 828
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    .line 830
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v0, v2, :cond_6

    .line 831
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    :cond_5
    move-object v1, v0

    :cond_6
    const/16 v0, 0x456

    const/4 v2, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x455

    if-ne p1, v0, :cond_7

    goto :goto_1

    :cond_7
    move v0, v3

    goto :goto_2

    :cond_8
    :goto_1
    move v0, v2

    :goto_2
    if-eqz v0, :cond_9

    .line 839
    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->handleSwitchFail(Lcom/sec/ims/volte2/data/CallProfile;I)V

    goto :goto_5

    .line 841
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_3
    if-ge v3, v0, :cond_a

    .line 843
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 847
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onError(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 849
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 852
    :cond_a
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 855
    :goto_5
    iget-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsSentMobileCareEvt:Z

    if-nez p3, :cond_b

    .line 856
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-interface {p3, v0, v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->sendMobileCareEvent(IIILjava/lang/String;)V

    .line 857
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsSentMobileCareEvt:Z

    .line 860
    :cond_b
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->lazerErrorCode:I

    .line 861
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->lazerErrorMessage:Ljava/lang/String;

    return-void
.end method

.method protected notifyOnEstablished()V
    .locals 4

    .line 678
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 681
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 684
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEstablished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 686
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 690
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected notifyOnHeld(Z)V
    .locals 4

    .line 917
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 918
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOnHeld local="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "; localholdtone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLocalHoldTone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 921
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 924
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLocalHoldTone:Z

    invoke-interface {v2, p1, v3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onHeld(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 926
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 930
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected notifyOnModified(I)V
    .locals 4

    .line 982
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 983
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOnModified callType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 985
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 988
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onSwitched(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 990
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 994
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected notifyOnResumed(Z)V
    .locals 4

    .line 934
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 935
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOnResumed: local="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 937
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 940
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onResumed(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 942
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 946
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected notifyOnRingingBack()V
    .locals 3

    .line 710
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 713
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 716
    :try_start_0
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onRingingBack()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 718
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 722
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected notifyOnUssdResponse(I)V
    .locals 3

    .line 998
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1001
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 1004
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onUssdResponse(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1006
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1010
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected onCallModified(Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 4

    .line 1322
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    .line 1323
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v2, :cond_0

    .line 1324
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoQuality()I

    move-result v1

    goto :goto_0

    .line 1326
    :cond_0
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    .line 1327
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoQuality()I

    move-result v1

    .line 1329
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoQuality(I)V

    .line 1331
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnModified(I)V

    .line 1332
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1333
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->startNetworkStatsOnPorts()V

    goto :goto_1

    .line 1335
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->stopNetworkStatsOnPorts()V

    .line 1338
    :goto_1
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isTtyCall(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1339
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    const/16 v2, 0xc8

    .line 1341
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    .line 1339
    :cond_2
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V

    :cond_3
    return-void
.end method

.method protected onHalting()V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    monitor-enter v0

    .line 442
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 443
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Unexpected ACTION on STATE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 447
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1}, Lcom/sec/internal/helper/StateMachine;->getLogRecCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/StateMachine;->getLogRec(I)Lcom/sec/internal/helper/StateMachine$LogRec;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 452
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sec/internal/helper/StateMachine$LogRec;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 443
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected onQuitting()V
    .locals 3

    const/4 v0, 0x1

    .line 458
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->quit:Z

    .line 460
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    monitor-enter v0

    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 462
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForCallStateEvent(Landroid/os/Handler;)V

    .line 463
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mUssdStackEventHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForUssdEvent(Landroid/os/Handler;)V

    .line 464
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForReferStatus(Landroid/os/Handler;)V

    .line 465
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForRrcConnectionEvent(Landroid/os/Handler;)V

    .line 466
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v1, "CallState Terminated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 470
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1}, Lcom/sec/internal/helper/StateMachine;->getLogRecCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 471
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/StateMachine;->getLogRec(I)Lcom/sec/internal/helper/StateMachine$LogRec;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 475
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sec/internal/helper/StateMachine$LogRec;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    const-string v0, "robolectric"

    .line 481
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 483
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    :cond_2
    const/4 v0, 0x0

    .line 485
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

    .line 486
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 466
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onReceiveSIPMSG(Ljava/lang/String;Z)V
    .locals 3

    .line 1237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "\r\n"

    .line 1239
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1240
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-le v1, v2, :cond_3

    .line 1241
    aget-object v1, p1, v0

    const-string v2, "SIP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object p1, p1, v0

    const/16 v0, 0x8

    const/16 v1, 0xa

    goto :goto_0

    :cond_1
    aget-object p1, p1, v0

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 1243
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSIPFlowInfo:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSIPFlowInfo:Ljava/lang/String;

    goto :goto_1

    .line 1245
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSIPFlowInfo:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSIPFlowInfo:Ljava/lang/String;

    goto :goto_1

    .line 1248
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onReceiveSIPMSG : No front Char"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method protected onRegistrationDone(Lcom/sec/ims/ImsRegistration;)V
    .locals 1

    .line 324
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 326
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIncomingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 327
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 328
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 329
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 330
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 331
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 333
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 334
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyRequested:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 335
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 336
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVideoHeld:Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 337
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 338
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-void
.end method

.method protected rejectModifyCallType(I)I
    .locals 5

    .line 621
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_CZ:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->ETISALAT_EG:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    .line 625
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v1, :cond_1

    .line 626
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ignoreModifyCallType(): mSession.mModifyRequestedProfile == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectModifyCallType(II)I

    move-result p0

    return p0

    .line 630
    :cond_1
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    .line 631
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoreModifyCallType() reqCallType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", curCallType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-static {v0, v1}, Lcom/sec/internal/helper/ImsCallUtil;->isUpgradeCall(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 635
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {p1, p0, v0, v0, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->replyModifyCallType(IIII)I

    move-result p0

    return p0

    .line 640
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rejectModifyCallType() reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectModifyCallType(II)I

    move-result p0

    return p0
.end method

.method protected requestCallDataUsage()V
    .locals 3

    .line 1203
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v1, "requestCallDataUsage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getNetworkStatsVideoCall()J

    move-result-wide v0

    .line 1205
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {v2, p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->onChangeCallDataUsage(IJ)V

    return-void
.end method

.method public sendCmcPublishDialog()V
    .locals 4

    .line 1268
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->isCmcRegExist(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 1272
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-gt v1, v0, :cond_2

    .line 1276
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1278
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->sendPublishDialogInternal(II)V

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setLogTag(I)V
    .locals 1

    .line 1347
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->appendSessionIdToLogTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    .line 1348
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1349
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIncomingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1350
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1351
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1352
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1353
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1354
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1355
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1356
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1357
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyRequested:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1358
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1359
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVideoHeld:Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1360
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1361
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1362
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    return-void
.end method

.method public setPendingCall(Z)V
    .locals 0

    .line 1253
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsPendingCall:Z

    return-void
.end method

.method public setPreAlerting()V
    .locals 1

    const/4 v0, 0x1

    .line 1366
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mPreAlerting:Z

    return-void
.end method

.method public setPreviousState(Lcom/sec/internal/helper/State;)V
    .locals 0

    .line 1054
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mPrevState:Lcom/sec/internal/helper/State;

    return-void
.end method

.method protected setRetryInprogress(Z)V
    .locals 0

    .line 1062
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetryInprogress:Z

    return-void
.end method

.method public setStartCameraState(Z)V
    .locals 0

    .line 1257
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsStartCameraSuccess:Z

    return-void
.end method

.method protected setVideoRtpPort(IIII)V
    .locals 0

    .line 1177
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mLocalVideoRtpPort:I

    .line 1178
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mLocalVideoRtcpPort:I

    .line 1179
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteVideoRtpPort:I

    .line 1180
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteVideoRtcpPort:I

    return-void
.end method

.method protected startNetworkStatsOnPorts()V
    .locals 5

    .line 1184
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startNetworkStatsOnPorts"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    if-eqz v0, :cond_1

    .line 1186
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mLocalVideoRtpPort:I

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteVideoRtpPort:I

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mLocalVideoRtcpPort:I

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteVideoRtcpPort:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->setVideoPort(IIII)V

    .line 1187
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getIntfNameByNetType(Landroid/net/Network;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->setInterface(Ljava/lang/String;)V

    .line 1190
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method protected startRetriggerTimer(J)V
    .locals 3

    .line 1218
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRetriggerTimer: millis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->stopRetriggerTimer()V

    .line 1221
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xca

    .line 1222
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetriggerTimeoutMessage:Landroid/os/Message;

    .line 1223
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetriggerTimeoutMessage:Landroid/os/Message;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    return-void
.end method

.method protected startRingTimer(J)V
    .locals 3

    .line 1066
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRingTimer: millis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->stopRingTimer()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xcc

    .line 1070
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRingTimeoutMessage:Landroid/os/Message;

    .line 1071
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRingTimeoutMessage:Landroid/os/Message;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    :cond_0
    return-void
.end method

.method protected stopNetworkStatsOnPorts()V
    .locals 2

    .line 1195
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopNetworkStatsOnPorts"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    if-eqz v0, :cond_0

    .line 1197
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->requestCallDataUsage()V

    .line 1198
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method protected stopRetriggerTimer()V
    .locals 2

    .line 1227
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetriggerTimeoutMessage:Landroid/os/Message;

    if-nez v0, :cond_0

    return-void

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopRetriggerTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetriggerTimeoutMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    const/4 v0, 0x0

    .line 1233
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetriggerTimeoutMessage:Landroid/os/Message;

    return-void
.end method

.method protected stopRingTimer()V
    .locals 2

    .line 1076
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRingTimeoutMessage:Landroid/os/Message;

    if-nez v0, :cond_0

    return-void

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopRingTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRingTimeoutMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    const/4 v0, 0x0

    .line 1082
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRingTimeoutMessage:Landroid/os/Message;

    return-void
.end method

.method protected transferCall(Ljava/lang/String;)V
    .locals 3

    .line 645
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->buildUri(Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    if-nez p1, :cond_1

    .line 647
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "uri is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x45f

    const-string v0, "call transfer failed"

    .line 648
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 649
    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldBeforeTransfer:Z

    if-eqz p1, :cond_0

    .line 650
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x47

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_0
    return-void

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->transferCall(ILjava/lang/String;)I

    const/4 p1, 0x1

    .line 655
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTransferRequested:Z

    .line 657
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 658
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 659
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "transferCall for Softphone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MDTC"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 661
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MDSF"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 663
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "overwrite_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 664
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    const-string v1, "DRPT"

    invoke-static {p1, p0, v1, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 5

    .line 380
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ANY_STATE] unhandledMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/16 v1, 0x34

    if-eq v0, v1, :cond_a

    const/16 v1, 0x64

    if-eq v0, v1, :cond_9

    const/16 v1, 0x12f

    const/4 v2, 0x4

    if-eq v0, v1, :cond_8

    const/16 v1, 0x190

    if-eq v0, v1, :cond_7

    const/16 v1, 0x258

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1388

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x132

    if-eq v0, v1, :cond_8

    const/16 v1, 0x133

    if-eq v0, v1, :cond_8

    .line 435
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ANY_STATE] msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ignored !!!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->ussdIndication_ANYSTATE(Landroid/os/Message;)V

    goto :goto_0

    .line 401
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnUssdResponse(I)V

    goto :goto_0

    .line 397
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->error_ANYSTATE(Landroid/os/Message;)V

    goto :goto_0

    .line 393
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->ended_ANYSTATE(Landroid/os/Message;)V

    goto :goto_0

    .line 383
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->dbrLost_ANYSTATE(Landroid/os/Message;)V

    goto :goto_0

    .line 421
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    if-ne p1, v0, :cond_6

    .line 422
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;->enter()V

    goto :goto_0

    .line 424
    :cond_6
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 413
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->epdgConnChanged_ANYSTATE(Landroid/os/Message;)V

    goto :goto_0

    .line 430
    :cond_8
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 p1, 0x0

    const/4 v0, -0x1

    new-instance v1, Lcom/sec/ims/util/SipError;

    const/16 v3, 0x44f

    const-string v4, "Tlte_911fail"

    invoke-direct {v1, v3, v4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 417
    :cond_9
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->forceNotifyCurrentCodec()V

    goto :goto_0

    .line 409
    :cond_a
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->update_ANYSTATE(Landroid/os/Message;)V

    goto :goto_0

    .line 387
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->terminate_ANYSTATE(Landroid/os/Message;)V

    .line 388
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->handleBigData_ANYSTATE(Landroid/os/Message;)V

    .line 389
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :goto_0
    return-void
.end method
