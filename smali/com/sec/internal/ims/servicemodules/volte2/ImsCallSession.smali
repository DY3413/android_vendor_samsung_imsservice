.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
.super Lcom/sec/ims/volte2/IImsCallSession$Stub;
.source "ImsCallSession.java"


# static fields
.field public static final EVENT_VCID_FAILURE:Ljava/lang/String; = "VCIDGeneralFailure"

.field protected static final EVT_IMS_CALL_EVENT:I = 0x1

.field protected static final EVT_IMS_MEDIA_EVENT:I = 0x2

.field protected static final EVT_REFER_STATUS:I = 0x5

.field protected static final EVT_RRC_CONNECTION_EVENT:I = 0x3

.field protected static final EVT_USSD_EVENT:I = 0x4


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field protected mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

.field protected mCallId:I

.field protected mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

.field protected mCmcType:I

.field protected mContext:Landroid/content/Context;

.field protected mDiagnosisController:Lcom/sec/internal/ims/servicemodules/volte2/IDiagnosisController;

.field private mDtmfCode:I

.field private mEndReason:I

.field private mEndType:I

.field protected mEpsFallback:Z

.field protected mForwarded:Z

.field protected mHandOffTimedOut:Z

.field protected mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

.field protected mImsCallSessionEventHandler:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

.field protected mIsEstablished:Z

.field protected mIsNrSaMode:Z

.field private mIsUsingCamera:Z

.field protected mKaSender:Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;

.field protected mLastUsedCamera:I

.field protected final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/volte2/IImsCallSessionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mLocalHoldTone:Z

.field protected final mLooper:Landroid/os/Looper;

.field protected mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

.field protected mMno:Lcom/sec/internal/constants/Mno;

.field protected mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

.field protected mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

.field protected mOldLocalHoldTone:Z

.field protected mPhoneId:I

.field protected mPrevUsedCamera:I

.field protected mRegistration:Lcom/sec/ims/ImsRegistration;

.field protected mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mRelayChTerminated:Z

.field protected mResumeCallRetriggerTimer:I

.field protected mSessionId:I

.field protected mSrvccStarted:Z

.field public mStartTime:J

.field private mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected mTimerState:[I

.field private mUserCameraOff:Z

.field protected mUssdStackEventHandler:Landroid/os/Handler;

.field private mVideoCrbtSupportType:I

.field protected mVolteStackEventHandler:Landroid/os/Handler;

.field protected mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

.field protected smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;


# direct methods
.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V
    .locals 5

    .line 215
    invoke-direct {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;-><init>()V

    const-string v0, "ImsCallSession"

    .line 88
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    .line 97
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 98
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 99
    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    .line 101
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    .line 102
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    .line 103
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mUssdStackEventHandler:Landroid/os/Handler;

    .line 105
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    .line 108
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    .line 109
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mDiagnosisController:Lcom/sec/internal/ims/servicemodules/volte2/IDiagnosisController;

    .line 111
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 118
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mKaSender:Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;

    .line 119
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    const/4 v1, -0x1

    .line 121
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallId:I

    const/4 v2, 0x0

    .line 122
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCmcType:I

    .line 123
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    .line 124
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mResumeCallRetriggerTimer:I

    .line 125
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    .line 127
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPrevUsedCamera:I

    .line 128
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    .line 130
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsEstablished:Z

    const/4 v3, 0x1

    .line 131
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLocalHoldTone:Z

    .line 132
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mOldLocalHoldTone:Z

    .line 133
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsNrSaMode:Z

    .line 134
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEpsFallback:Z

    .line 135
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mHandOffTimedOut:Z

    .line 136
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSrvccStarted:Z

    .line 137
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mForwarded:Z

    .line 141
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mDtmfCode:I

    .line 142
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndType:I

    .line 143
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndReason:I

    .line 145
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsUsingCamera:Z

    .line 146
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mUserCameraOff:Z

    .line 147
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVideoCrbtSupportType:I

    const-wide/16 v3, 0x0

    .line 148
    iput-wide v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mStartTime:J

    .line 149
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRelayChTerminated:Z

    .line 210
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 211
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    .line 212
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallSessionEventHandler:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    .line 216
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    .line 217
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 218
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 219
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 220
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLooper:Landroid/os/Looper;

    .line 221
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result p2

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    .line 222
    invoke-static {p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    .line 223
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$1;

    invoke-direct {p1, p0, p4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    .line 263
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$2;

    invoke-direct {p1, p0, p4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$2;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mUssdStackEventHandler:Landroid/os/Handler;

    .line 280
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getImsMediaController()Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    .line 282
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 284
    sget-object p1, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->MAX:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mTimerState:[I

    .line 285
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private getPreferredImpu(Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/ImsUri;
    .locals 4

    .line 1089
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 1092
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/sec/internal/constants/Mno;->SMARTFREN:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_2

    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1093
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1094
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/NameAddr;

    .line 1095
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v2

    sget-object v3, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-virtual {v2, v3}, Lcom/sec/ims/util/ImsUri$UriType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1096
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getPreferredImpu: Found TEL URI"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private isNeedCameraRequest()Z
    .locals 5

    .line 860
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 861
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    .line 863
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    const/4 v4, 0x1

    if-eq v1, v3, :cond_2

    .line 864
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move v2, v4

    .line 867
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNeedCameraRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isSrvccAvailable()Z
    .locals 4

    .line 1359
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSrvccVersion(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isEpdgCall()Z

    move-result v2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1360
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result p0

    .line 1359
    invoke-static {v0, v1, v2, v3, p0}, Lcom/sec/internal/helper/ImsCallUtil;->isSrvccAvailable(ILcom/sec/internal/constants/Mno;ZLcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)Z

    move-result p0

    return p0
.end method

.method private setAudioCodecTypeProfile(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1031
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->getAudioCodec(Ljava/lang/String;)Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/volte2/data/MediaProfile;->setAudioCodec(Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;)V

    :cond_0
    return-void
.end method

.method private setMediaProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V
    .locals 4

    .line 1010
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1011
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVideoOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoOrientation(I)V

    .line 1013
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoSize()Ljava/lang/String;

    move-result-object v0

    .line 1014
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVideoWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVideoHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoSize(II)V

    .line 1015
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoSize()Ljava/lang/String;

    move-result-object v1

    .line 1017
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVideoCrbtType()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LAND"

    .line 1018
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "QCIF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1019
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0

    .line 1020
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVideoHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVideoWidth()I

    move-result p1

    .line 1019
    invoke-interface {v0, p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->changeCameraCapabilities(III)V

    goto :goto_0

    .line 1022
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0

    .line 1023
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVideoWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVideoHeight()I

    move-result p1

    .line 1022
    invoke-interface {v0, p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->changeCameraCapabilities(III)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public accept(Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 601
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x16

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public acceptECTRequest()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method protected buildUri(Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/ims/util/ImsUri;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1054
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v0

    .line 1055
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->VOLTE_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    .line 1054
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    const/16 v1, 0xc

    if-ne p3, v1, :cond_0

    .line 1058
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/util/UriGenerator;->getUssdRuri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    goto :goto_0

    .line 1059
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v1, "urn"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1061
    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    goto :goto_0

    .line 1062
    :cond_1
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TIM_BRAZIL:Lcom/sec/internal/constants/Mno;

    if-ne p3, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v1, 0x3

    if-ne p3, v1, :cond_2

    .line 1063
    sget-object p0, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-virtual {v0, v2, p0, p1, p2}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    goto :goto_0

    .line 1065
    :cond_2
    iget p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCmcType:I

    if-lez p3, :cond_3

    .line 1066
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    const-string p3, "@"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 1067
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1068
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "number = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_3
    invoke-virtual {v0, v2, p1, p2}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public cancelTransfer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 691
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cancelTransfer:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 799
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x49

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void

    .line 796
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string p1, "extendToConference(): there is no participants"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Cannot extendToConference : participants is null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public forceNotifyCurrentCodec()V
    .locals 1

    .line 1036
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public getCallId()I
    .locals 0

    .line 433
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallId:I

    return p0
.end method

.method public getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;
    .locals 0

    .line 513
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    return-object p0
.end method

.method public getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    return-object p0
.end method

.method public getCallStateOrdinal()I
    .locals 0

    .line 503
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public getCmcCallEstablishTime()J
    .locals 2

    .line 1351
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCmcCallEstablishTime:J

    return-wide v0
.end method

.method public getCmcType()I
    .locals 0

    .line 453
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCmcType:I

    return p0
.end method

.method protected getConfReferUriAsserted(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1167
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getConferenceReferUriAsserted()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getConfReferUriType(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1153
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getConferenceReferUriType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getConfRemoveReferUriType(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1160
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getConferenceRemoveReferUriType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getConfSubscribeDialogType(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1146
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getConferenceDialogType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getConfSubscribeEnabled(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1139
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getConferenceSubscribe()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getConfSupportPrematureEnd(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1181
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getConferenceSupportPrematureEnd()Z

    move-result p0

    return p0
.end method

.method protected getConfUseAnonymousUpdate(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1174
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getConferenceUseAnonymousUpdate()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getConferenceUri(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 4

    .line 1126
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1131
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 1132
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v0

    invoke-interface {v3, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    .line 1131
    invoke-static {v1, p1, v2, v0, p0}, Lcom/sec/internal/helper/ImsCallUtil;->getConferenceUri(ILcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getDRBLost()Z
    .locals 0

    .line 1197
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->getDRBLost()Z

    move-result p0

    return p0
.end method

.method public getDedicatedBearerState(I)I
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->getDedicatedBearerState(I)I

    move-result p0

    return p0
.end method

.method public getEndReason()I
    .locals 0

    .line 1229
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndReason:I

    return p0
.end method

.method public getEndType()I
    .locals 0

    .line 1225
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndType:I

    return p0
.end method

.method public getEpsFallback()Z
    .locals 0

    .line 481
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEpsFallback:Z

    return p0
.end method

.method public getErrorCode()I
    .locals 1

    .line 1205
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipError:Lcom/sec/ims/util/SipError;

    if-eqz v0, :cond_0

    .line 1206
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p0

    return p0

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipReason:Lcom/sec/internal/constants/ims/SipReason;

    if-eqz v0, :cond_1

    .line 1208
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipReason;->getCause()I

    move-result p0

    return p0

    .line 1211
    :cond_1
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    return p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1215
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipError:Lcom/sec/ims/util/SipError;

    if-eqz v0, :cond_0

    .line 1216
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipReason:Lcom/sec/internal/constants/ims/SipReason;

    if-eqz v0, :cond_1

    .line 1218
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1221
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getForwarded()Z
    .locals 0

    .line 489
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mForwarded:Z

    return p0
.end method

.method protected getImei(I)Ljava/lang/String;
    .locals 0

    .line 1368
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIncomingInviteRawSip()Ljava/lang/String;
    .locals 0

    .line 998
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getSipInviteMsg()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIsEstablished()Z
    .locals 0

    .line 465
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsEstablished:Z

    return p0
.end method

.method public getIsNrSaMode()Z
    .locals 0

    .line 394
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsNrSaMode:Z

    return p0
.end method

.method public getMediaCallProvider()Lcom/sec/ims/volte2/IImsMediaCallProvider;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 983
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    check-cast p0, Lcom/sec/ims/volte2/IImsMediaCallProvider;

    return-object p0
.end method

.method public getModifyRequestedProfile()Lcom/sec/ims/volte2/data/CallProfile;
    .locals 0

    .line 518
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    return-object p0
.end method

.method protected getOriginatingUri()Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 1079
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    goto :goto_0

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPreferredImpu(Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected getPEmergencyInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1364
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/internal/helper/ImsCallUtil;->getPEmergencyInfo(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPendingCall()Z
    .locals 0

    .line 1394
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getPendingCall()Z

    move-result p0

    return p0
.end method

.method public getPhoneId()I
    .locals 0

    .line 1347
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    return p0
.end method

.method public getPreAlerting()Z
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getPreAlerting()Z

    move-result p0

    return p0
.end method

.method public getPrevCallStateOrdinal()I
    .locals 1

    .line 508
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getPreviousState()Lcom/sec/internal/helper/State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getStateByName(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public getRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 0

    .line 702
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-object p0
.end method

.method public getRelayChTerminated()Z
    .locals 0

    .line 1382
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRelayChTerminated:Z

    return p0
.end method

.method protected getSecondImpu(Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/ImsUri;
    .locals 3

    .line 1108
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 1110
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    .line 1111
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1112
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/NameAddr;

    .line 1113
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-eq v2, v0, :cond_0

    .line 1114
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getSecondImpu: Found Second Number"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSessionId()I
    .locals 0

    .line 445
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    return p0
.end method

.method public getSrvccStarted()Z
    .locals 0

    .line 473
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSrvccStarted:Z

    return p0
.end method

.method protected getTimerState(I)I
    .locals 0

    .line 1390
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mTimerState:[I

    aget p0, p0, p1

    return p0
.end method

.method public declared-synchronized getUsingCamera()Z
    .locals 1

    monitor-enter p0

    .line 522
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsUsingCamera:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVideoCrbtSupportType()I
    .locals 0

    .line 494
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVideoCrbtSupportType:I

    return p0
.end method

.method public handleRegistrationDone(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    .line 1307
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRegistrationDone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 1309
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->onRegistrationDone(Lcom/sec/ims/ImsRegistration;)V

    const/4 p1, 0x0

    .line 1310
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setPendingCall(Z)V

    .line 1312
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result p1

    .line 1313
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    const/16 v1, 0xb

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1315
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_3

    .line 1316
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    const-string v0, "mmtel"

    invoke-virtual {p1, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1317
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 1319
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0xd3

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 1314
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public handleRegistrationFailed()V
    .locals 2

    .line 1325
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRegistrationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1326
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    const/4 v0, 0x0

    .line 1327
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setPendingCall(Z)V

    .line 1328
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xd3

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public hold(Lcom/sec/ims/volte2/data/MediaProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 647
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x33

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public holdVideo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 823
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public info(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 953
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info: request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "type"

    .line 955
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "info"

    .line 956
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x65

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public init(Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .locals 15

    move-object v12, p0

    move-object/from16 v0, p1

    .line 289
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    move-object/from16 v0, p2

    .line 290
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 292
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    const/4 v13, 0x1

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    sget-object v0, Lcom/sec/internal/constants/Mno;->MDMN:Lcom/sec/internal/constants/Mno;

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    .line 295
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init(): this is MDMN call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, v13}, Lcom/sec/ims/volte2/data/CallProfile;->setSamsungMdmnCall(Z)V

    .line 297
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    .line 301
    :goto_0
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    iput v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCmcType:I

    goto :goto_1

    .line 303
    :cond_1
    iget v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    .line 306
    :goto_1
    new-instance v14, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    iget-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v11, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLooper:Landroid/os/Looper;

    const-string v10, "CallStateMachine"

    move-object v0, v14

    move-object v2, p0

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v14, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 308
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->init()V

    .line 310
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start CallStatMachine"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/helper/StateMachine;->start()V

    .line 314
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mDiagnosisController:Lcom/sec/internal/ims/servicemodules/volte2/IDiagnosisController;

    .line 315
    new-instance v8, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    iget-object v2, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/helper/PreciseAlarmManager;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    .line 317
    new-instance v11, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    iget-object v2, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    iget-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v10, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/helper/PreciseAlarmManager;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;)V

    iput-object v11, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallSessionEventHandler:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    .line 320
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v13, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForCallStateEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 321
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-interface {v0, v1, v3, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 323
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mUssdStackEventHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-interface {v0, v1, v4, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForUssdEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 324
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForReferStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 325
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->registerForMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 328
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    new-array v1, v3, [Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/Mno;->VIVA_BAHRAIN:Lcom/sec/internal/constants/Mno;

    aput-object v2, v1, v13

    const/4 v2, 0x2

    sget-object v4, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    :cond_2
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_3

    const/16 v1, 0x13c4

    .line 332
    iget-object v2, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 333
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentPcscf(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 336
    :try_start_0
    aget-object v2, v0, v13

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 338
    :catch_0
    iget-object v2, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "use default port 5060"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v9, v1

    .line 341
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    aget-object v8, v0, v3

    iget-object v10, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;Ljava/lang/String;ILcom/sec/internal/constants/Mno;)V

    iput-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mKaSender:Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;

    .line 342
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_3

    const/16 v0, 0x5dc

    .line 343
    iput v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mResumeCallRetriggerTimer:I

    .line 348
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setIsNrSaMode()V

    .line 349
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionCount(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 350
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setNrSaMode()V

    :cond_4
    return-void
.end method

.method public inviteGroupParticipant(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 785
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Invalid IMS session."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public inviteParticipants(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 775
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Invalid IMS session."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isE911Call()Z
    .locals 0

    .line 1372
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEpdgCall()Z
    .locals 6

    .line 402
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    .line 403
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v1

    .line 405
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 407
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    sget-object v5, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v3, v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 409
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getE911PdnSelectionVowifi()I

    move-result v2

    :cond_0
    if-eqz v2, :cond_2

    const/4 v0, 0x1

    if-eq v2, v0, :cond_1

    goto :goto_0

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "use EmergemcyRat for IPC_RAT_EPDG"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VoWIFI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 414
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "use isEmergencyEpdgConnected for EPDN"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEmergencyEpdgConnected(I)Z

    move-result v1

    :cond_3
    :goto_0
    return v1
.end method

.method public isRemoteHeld()Z
    .locals 0

    .line 1355
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteHeld:Z

    return p0
.end method

.method protected isTPhoneRelaxMode()Z
    .locals 1

    .line 1343
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/helper/ImsCallUtil;->isTPhoneRelaxMode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public merge(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 765
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Invalid IMS session."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected needUpdateEccUrn()Z
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    .line 591
    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    .line 592
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected notifyCallDowngraded()V
    .locals 2

    .line 1044
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 1045
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 1046
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 1047
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CALL_DOWNGRADED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 1048
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->onCallDowngraded(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    return-void
.end method

.method public notifyCmcDtmfEvent(I)V
    .locals 3

    .line 972
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCmcDtmfEvent, dtmfKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x56

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(III)V

    return-void
.end method

.method public notifyCmcInfoEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;)V
    .locals 3

    .line 977
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCmcInfoEvent, cmcInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x57

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method protected notifyImsGeneralEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyImsGeneralEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", extras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-eqz v1, :cond_0

    const-string v1, "VCIDGeneralFailure"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setAlertInfo(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 200
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 202
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onImsGeneralEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 204
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public notifyImsMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 3

    .line 961
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyImsMediaEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    .line 963
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 966
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method protected notifySessionChanged(I)V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionChanged callId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 180
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 182
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onSessionChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 184
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected onImsCallEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 0

    .line 1040
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallSessionEventHandler:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->onImsCallEventHandler(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    return-void
.end method

.method public onReceiveSIPMSG(Ljava/lang/String;Z)V
    .locals 1

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->onReceiveSIPMSG(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSwitchCamera()V
    .locals 3

    .line 1293
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchCamera - mLastUsedCamera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1295
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    goto :goto_0

    .line 1297
    :cond_0
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    :goto_0
    return-void
.end method

.method public onUpdateGeolocation()V
    .locals 2

    .line 1302
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onUpdateGeolocation: ON_LOCATION_ACQUIRING_SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x1f5

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public pulling(Ljava/lang/String;Lcom/sec/ims/Dialog;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 738
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p2}, Lcom/sec/ims/Dialog;->getRemoteNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setConferenceCall(I)V

    .line 741
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "msisdn"

    .line 742
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "targetDialog"

    .line 743
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 745
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 746
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    const-string v1, "MDTC"

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 747
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v3, "pulling for Softphone"

    invoke-static {p2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 749
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "MDSF"

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 751
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v3, "pulling for mdService MEP"

    invoke-static {p2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 753
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "MDMP"

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 756
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "overwrite_mode"

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 757
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    const-string v2, "DRPT"

    invoke-static {p2, v1, v2, p1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 759
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 760
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result p0

    return p0

    .line 734
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "transfer(): target is NULL"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Cannot transfer call: target is empty"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public pushCall(Ljava/lang/String;)V
    .locals 3

    .line 696
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transfer: msisdn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x3b

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public recording(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 544
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->needToLateEndedNotify()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 546
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p1

    .line 548
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, v0, :cond_1

    .line 549
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v0, "notify the ended call for a late registered session."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorCode()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnEnded(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public reinvite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 676
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x1f6

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public reject(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 606
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIsEstablished()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 607
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    .line 611
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndType:I

    .line 612
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndReason:I

    .line 613
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    return-void

    .line 608
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string p1, "ignore reject for a while(3 secs) msg after call accepted or call was already InCall State."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Reject Failed"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public rejectECTRequest()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public removeGroupParticipant(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 790
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Invalid IMS session."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeParticipants(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 780
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Invalid IMS session."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public replaceRegistrationInfo(Lcom/sec/ims/ImsRegistration;)V
    .locals 3

    .line 1332
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replaceRegistrationInfo from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-void
.end method

.method public replaceSessionEventListener(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 4

    .line 565
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 568
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
    :cond_0
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public replaceSipCallId(Ljava/lang/String;)V
    .locals 3

    .line 1337
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replaceSipCallId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setSipCallId(Ljava/lang/String;)V

    .line 1339
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->replaceSipCallId(ILjava/lang/String;)V

    return-void
.end method

.method public requestCallDataUsage()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 988
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->requestCallDataUsage()V

    return-void
.end method

.method public resume()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 652
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x47

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public resumeVideo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 828
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x51

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public sendDtmf(IILandroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 879
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "code"

    .line 880
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "mode"

    const/4 v0, 0x0

    .line 881
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "operation"

    const/4 v0, 0x1

    .line 882
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "result"

    .line 883
    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 884
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x38

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 873
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendImsCallEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->sendGeneralBundleEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendText(Ljava/lang/String;I)V
    .locals 2

    .line 889
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "len"

    .line 890
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "text"

    .line 891
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x40

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setCallId(I)V
    .locals 0

    .line 428
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallId:I

    return-void
.end method

.method public setCmcType(I)V
    .locals 0

    .line 449
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCmcType:I

    return-void
.end method

.method protected setDRBLost(Z)V
    .locals 0

    .line 1201
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->setDRBLost(Z)V

    return-void
.end method

.method public setDedicatedBearerState(II)V
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->setDedicatedBearerState(II)V

    return-void
.end method

.method public setEndReason(I)V
    .locals 0

    .line 1233
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndReason:I

    return-void
.end method

.method public setEndType(I)V
    .locals 0

    .line 1237
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndType:I

    return-void
.end method

.method public setEpdgState(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 708
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setRadioTech(I)V

    .line 709
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 710
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getEpdgPhysicalInterface(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCrossSimCall(Z)V

    goto :goto_0

    .line 712
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setRadioTech(I)V

    .line 713
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCrossSimCall(Z)V

    .line 715
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x190

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    return-void
.end method

.method public setEpdgStateNoNotify(Z)V
    .locals 3

    .line 720
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEpdgStateNoNotify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 722
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    const/16 v1, 0x12

    invoke-virtual {p1, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setRadioTech(I)V

    .line 723
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 724
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v1

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v1, p0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getEpdgPhysicalInterface(I)I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCrossSimCall(Z)V

    goto :goto_0

    .line 726
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setRadioTech(I)V

    .line 727
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p0, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCrossSimCall(Z)V

    :goto_0
    return-void
.end method

.method public setEpsFallback(Z)V
    .locals 0

    .line 477
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEpsFallback:Z

    return-void
.end method

.method public setForwarded(Z)V
    .locals 0

    .line 485
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mForwarded:Z

    return-void
.end method

.method public setHoldBeforeTransfer(Z)V
    .locals 0

    .line 535
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldBeforeTransfer:Z

    return-void
.end method

.method public setIsEstablished(Z)V
    .locals 0

    .line 461
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsEstablished:Z

    return-void
.end method

.method public setIsNrSaMode()V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsNrSaMode:Z

    .line 357
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsNrSaMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsNrSaMode:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setNrSaMode()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isSupportVoWiFiDisable5GSAFromConfiguration(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$3;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$3;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 390
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setPendingCall(Z)V
    .locals 0

    .line 398
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->setPendingCall(Z)V

    return-void
.end method

.method public setPreAlerting()V
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->setPreAlerting()V

    return-void
.end method

.method public setPreviewResolution(II)V
    .locals 3

    .line 1241
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewResolution width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->setPreviewResolution(II)V

    return-void
.end method

.method public setRelayChTerminated(Z)V
    .locals 0

    .line 1377
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRelayChTerminated:Z

    return-void
.end method

.method protected setRttDedicatedBearerTimeoutMessage(Landroid/os/Message;)V
    .locals 0

    .line 1185
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->setRttDedicatedBearerTimeoutMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setSessionId(I)V
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->appendSessionIdToLogTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session ID : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    .line 440
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->setLogTag(I)V

    return-void
.end method

.method public setSrvccStarted(Z)V
    .locals 0

    .line 469
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSrvccStarted:Z

    return-void
.end method

.method public setStartCameraState(Z)V
    .locals 0

    .line 1289
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->setStartCameraState(Z)V

    return-void
.end method

.method protected setTimerState(II)V
    .locals 0

    .line 1386
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mTimerState:[I

    aput p2, p0, p1

    return-void
.end method

.method public setTtyMode(I)V
    .locals 5

    .line 918
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTtyMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 921
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v4, 0xb

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 922
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v4, 0xa

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 923
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v4, 0xe

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 924
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v4, 0xf

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 925
    :goto_1
    sget v4, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    if-eq p1, v4, :cond_2

    sget v4, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-eq p1, v4, :cond_2

    move v1, v2

    .line 928
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTtyMode: curTty "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " desTty "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 939
    new-instance p1, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {p1}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 940
    invoke-virtual {p1, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 941
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 942
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoQuality()I

    move-result v1

    .line 941
    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoQuality(I)V

    .line 944
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "profile"

    .line 945
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 947
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x34

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public setUserCameraOff(Z)V
    .locals 3

    .line 530
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserCameraOff : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mUserCameraOff:Z

    return-void
.end method

.method public declared-synchronized setUsingCamera(Z)V
    .locals 0

    monitor-enter p0

    .line 526
    :try_start_0
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsUsingCamera:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setVideoCrbtSupportType(I)V
    .locals 0

    .line 457
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVideoCrbtSupportType:I

    return-void
.end method

.method public start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 576
    sget-object p2, Lcom/sec/internal/log/IMSLog$LAZER_TYPE;->CALL:Lcom/sec/internal/log/IMSLog$LAZER_TYPE;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - START OUTGOING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/log/IMSLog$LAZER_TYPE;Ljava/lang/String;)V

    .line 577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mStartTime:J

    if-eqz p1, :cond_0

    .line 584
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xf

    .line 585
    invoke-virtual {p2, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 584
    invoke-virtual {p2, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 586
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result p0

    return p0

    .line 579
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - OUTGOING FAIL by target is empty"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/log/IMSLog$LAZER_TYPE;Ljava/lang/String;)V

    .line 580
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "start(): target is NULL"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Cannot make call: target URI is null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startCamera(I)V
    .locals 3

    .line 1246
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mUserCameraOff:Z

    if-eqz v0, :cond_1

    .line 1247
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Camera is Off by user"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1251
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCamera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 1259
    :cond_2
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    goto :goto_1

    .line 1254
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->getDefaultCameraId()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    if-gez p1, :cond_4

    const/4 p1, 0x1

    .line 1256
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    .line 1261
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastUsedCamera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1265
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p1

    const/16 v0, 0x90

    const/16 v1, 0xb0

    if-eqz p1, :cond_5

    .line 1266
    iget p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1267
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/MediaProfile;->getWidth()I

    move-result p1

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1268
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/MediaProfile;->getHeight()I

    move-result p1

    if-ne p1, v0, :cond_7

    .line 1269
    :cond_6
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setPreviewResolution(II)V

    .line 1272
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->startCamera(II)V

    return-void
.end method

.method public startCameraForProvider(I)V
    .locals 7

    .line 833
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isNeedCameraRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 834
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUserCameraOff(Z)V

    .line 835
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getUsingCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isTPhoneRelaxMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x18

    .line 836
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 837
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v0, "delay camera start for Incoming Call"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-wide/16 v5, 0x64

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIIJ)V

    goto :goto_0

    .line 840
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startCamera(I)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 843
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "startCamera called with dummy type"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startLastUsedCamera()V

    :cond_2
    :goto_0
    return-void
.end method

.method public startConference([Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 770
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Invalid IMS session."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startDtmf(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 897
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mDtmfCode:I

    .line 899
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "code"

    .line 900
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "mode"

    const/4 v1, 0x1

    .line 901
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "operation"

    .line 902
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 903
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x38

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public startECT(ILjava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public startIncoming()V
    .locals 1

    .line 596
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public startLastUsedCamera()V
    .locals 3

    .line 1276
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startLastUsedCamera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startCamera(I)V

    return-void
.end method

.method protected startRttDedicatedBearerTimer(J)V
    .locals 0

    .line 1189
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->startRttDedicatedBearerTimer(J)V

    return-void
.end method

.method public stopCamera()V
    .locals 2

    .line 1281
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->stopCamera(I)V

    const/4 v0, 0x0

    .line 1284
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsUsingCamera:Z

    return-void
.end method

.method public stopCameraForProvider(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 850
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isNeedCameraRequest()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 851
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUserCameraOff(Z)V

    .line 852
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getUsingCamera()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 853
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->stopCamera()V

    :cond_1
    return-void
.end method

.method public stopDtmf()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 908
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 909
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mDtmfCode:I

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mode"

    const/4 v2, 0x1

    .line 910
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "operation"

    const/4 v2, 0x2

    .line 911
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 912
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v2, 0x38

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 914
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mDtmfCode:I

    return-void
.end method

.method protected stopRttDedicatedBearerTimer()V
    .locals 0

    .line 1193
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->stopRttDedicatedBearerTimer()V

    return-void
.end method

.method public terminate(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 618
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(IZ)V

    return-void
.end method

.method public terminate(IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 622
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isEpdgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 623
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string p1, "SRVCC Completed. But already switched to epdg, don\'t terminate call"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local Release ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    .line 629
    :goto_0
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndType:I

    .line 630
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndReason:I

    .line 632
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v3, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->quit:Z

    if-nez v3, :cond_4

    const/16 v3, 0x16

    if-ne p1, v3, :cond_2

    const/16 p0, 0x132

    .line 637
    invoke-virtual {v2, p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(III)V

    goto :goto_1

    .line 638
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectCause()I

    move-result p2

    if-eqz p2, :cond_3

    .line 639
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndType:I

    invoke-virtual {p2, v0, p1, p0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(III)V

    goto :goto_1

    .line 641
    :cond_3
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndType:I

    invoke-virtual {p2, v1, p1, p0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(III)V

    :goto_1
    return-void

    .line 633
    :cond_4
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Session already quitted"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public transfer(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 686
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->transfer(ILjava/lang/String;)V

    return-void
.end method

.method public unregisterSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public update(Lcom/sec/ims/volte2/data/CallProfile;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 657
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "profile"

    .line 658
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "cause"

    .line 659
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "reasonText"

    .line 660
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 662
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isSrvccAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 663
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string p1, "SRVCC isn\'t available"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 666
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x34

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateCallProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V
    .locals 3

    .line 1002
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCallProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/DefaultCallProfileBuilder;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DefaultCallProfileBuilder;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 1004
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->builder()Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->build(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/data/CallProfile;

    .line 1005
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getAudioCodec()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setAudioCodecTypeProfile(Ljava/lang/String;)V

    .line 1006
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setMediaProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    return-void
.end method
