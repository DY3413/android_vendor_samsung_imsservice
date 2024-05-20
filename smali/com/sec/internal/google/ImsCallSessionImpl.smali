.class public Lcom/sec/internal/google/ImsCallSessionImpl;
.super Lcom/android/ims/internal/IImsCallSession$Stub;
.source "ImsCallSessionImpl.java"


# static fields
.field protected static final SET_LOCAL_CALL_PROFILE:I = 0x1

.field protected static final SET_LOCAL_REMOTE_CALL_PROFILE:I = 0x3

.field protected static final SET_REMOTE_CALL_PROFILE:I = 0x2


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mCallId:Ljava/lang/String;

.field public mCallIdInt:I

.field public mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field public final mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

.field public mImpl:Lcom/android/ims/internal/IImsCallSession;

.field public mImsVideoCallProvider:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

.field public mIsCWNotified:Z

.field public mIsConferenceHost:Z

.field public mIsConferenceParticipant:Z

.field public mIsEcbmSupport:Z

.field public mIsMultiparty:Z

.field public mIsUssdTerminatedByUser:Z

.field public mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

.field protected mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field protected mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field protected mRingbackToneDirection:I

.field public final mRttEventListener:Lcom/sec/ims/IRttEventListener;

.field public mSession:Lcom/sec/ims/volte2/IImsCallSession;

.field public mState:I

.field protected final mVolteEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

.field public final mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;


# direct methods
.method static bridge synthetic -$$Nest$mgetSessionId(Lcom/sec/internal/google/ImsCallSessionImpl;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getSessionId()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/google/GoogleImsService;)V
    .locals 3

    .line 84
    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;-><init>()V

    const-string v0, "ImsCallSessionImpl"

    .line 61
    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->LOG_TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 68
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mRingbackToneDirection:I

    .line 71
    iput-boolean v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsConferenceHost:Z

    iput-boolean v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsConferenceParticipant:Z

    iput-boolean v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsEcbmSupport:Z

    iput-boolean v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsCWNotified:Z

    iput-boolean v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsMultiparty:Z

    .line 72
    iput-boolean v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsUssdTerminatedByUser:Z

    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    const-string v1, ""

    .line 78
    iput-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallId:Ljava/lang/String;

    const/4 v1, -0x1

    .line 79
    iput v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallIdInt:I

    iput v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 737
    new-instance v0, Lcom/sec/internal/google/ImsCallSessionImpl$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/google/ImsCallSessionImpl$1;-><init>(Lcom/sec/internal/google/ImsCallSessionImpl;)V

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mRttEventListener:Lcom/sec/ims/IRttEventListener;

    .line 775
    new-instance v1, Lcom/sec/internal/google/ImsCallSessionEventListener;

    invoke-direct {v1, p0}, Lcom/sec/internal/google/ImsCallSessionEventListener;-><init>(Lcom/sec/internal/google/ImsCallSessionImpl;)V

    iput-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 85
    iput-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 86
    invoke-virtual {p0, v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->setCallProfile(I)V

    .line 87
    iput-object p2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 88
    iput-object p3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 90
    iput-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mImpl:Lcom/android/ims/internal/IImsCallSession;

    .line 91
    iput-object p4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    .line 92
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-nez p2, :cond_0

    return-void

    .line 99
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2, v1}, Lcom/sec/ims/volte2/IImsCallSession;->registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    .line 100
    iget-object p2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result p2

    invoke-interface {p1, p2, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    .line 101
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallIdInt:I

    if-lez p1, :cond_1

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :catch_0
    :cond_1
    new-instance p1, Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    iget-object p2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-direct {p1, p2}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;-><init>(Lcom/sec/ims/volte2/IImsCallSession;)V

    iput-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    return-void
.end method

.method private convertDtmfToCode(C)I
    .locals 1

    const/16 p0, 0x30

    if-lt p1, p0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    sub-int/2addr p1, p0

    return p1

    :cond_0
    const/16 p0, 0x2a

    if-ne p1, p0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const/16 p0, 0x23

    if-ne p1, p0, :cond_2

    const/16 p0, 0xb

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private getOir(Lcom/sec/internal/constants/Mno;Lcom/sec/ims/volte2/data/CallProfile;)I
    .locals 1

    .line 988
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object p0

    .line 989
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 990
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 991
    invoke-static {p0}, Lcom/sec/internal/google/DataTypeConvertor;->getOirExtraFromDialingNumber(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    .line 996
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p0, "unknown"

    .line 1000
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_3

    .line 1001
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object p0

    .line 1002
    invoke-static {p0}, Lcom/sec/internal/google/DataTypeConvertor;->getOirExtraFromDialingNumberForDcm(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1004
    :cond_3
    invoke-static {p0}, Lcom/sec/internal/google/DataTypeConvertor;->getOirExtraFromDialingNumber(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getSessionId()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 158
    :cond_0
    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p0

    return p0
.end method

.method private inviteParticipants(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez p0, :cond_0

    return-void

    .line 513
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->inviteParticipants(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 399
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_0

    .line 400
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p2, 0x66

    invoke-direct {p1, p2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void

    .line 405
    :cond_1
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    .line 406
    invoke-static {p1}, Lcom/sec/internal/google/DataTypeConvertor;->convertToSecCallType(I)I

    move-result p1

    .line 409
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isTtyCall(I)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, p1

    .line 413
    :cond_3
    :goto_0
    new-instance p1, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {p1}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 414
    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 415
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    iget p2, p2, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    invoke-virtual {v0, p2}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 418
    :try_start_0
    iget-object p2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2, p1}, Lcom/sec/ims/volte2/IImsCallSession;->accept(Lcom/sec/ims/volte2/data/CallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 420
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_4

    .line 421
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p2, 0x67

    invoke-direct {p1, p2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public cancelTransferCall()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1076
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz p0, :cond_0

    .line 1079
    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->cancelTransfer()V

    return-void

    .line 1077
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public changeCmcErrorReason(II)Landroid/telephony/ims/ImsReasonInfo;
    .locals 1

    const-string v0, ""

    .line 782
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->changeCmcErrorReason(IILjava/lang/String;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p0

    return-object p0
.end method

.method public changeCmcErrorReason(IILjava/lang/String;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 7

    .line 786
    new-instance p0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p2}, Lcom/sec/internal/google/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 788
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v0

    const/16 v1, 0x177c

    const-string v2, "SERVER_RELAY_RESTRICTED"

    const/16 v3, 0x193

    const/16 v4, 0x45b

    const/16 v5, 0x579

    if-eqz v0, :cond_2

    if-eq p2, v4, :cond_1

    if-ne p2, v5, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v3, :cond_b

    .line 793
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p1, 0x14d

    .line 794
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 795
    iput v1, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto/16 :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x1f5

    .line 791
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 p1, 0xc8

    .line 792
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto/16 :goto_1

    .line 797
    :cond_2
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p1, 0x194

    const/16 v0, 0x160

    if-ne p2, p1, :cond_3

    const-string v6, "PD_NOT_REGISTERED"

    .line 798
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 799
    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 p1, 0x1771

    .line 800
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto/16 :goto_1

    :cond_3
    if-ne p2, p1, :cond_4

    const-string p1, "SD_NOT_REGISTERED"

    .line 801
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 802
    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 p1, 0x1774

    .line 803
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto/16 :goto_1

    :cond_4
    const/16 p1, 0x1e0

    if-ne p2, p1, :cond_5

    const-string p1, "REJECT_REASON_PD_UNREACHABLE"

    .line 804
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 805
    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 p1, 0x1772

    .line 806
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto :goto_1

    :cond_5
    const/16 p1, 0x1e6

    if-ne p2, p1, :cond_6

    .line 807
    sget-object v6, Lcom/sec/internal/constants/ims/SipErrorBase;->E911_NOT_ALLOWED_ON_SD:Lcom/sec/ims/util/SipError;

    invoke-virtual {v6}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 808
    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 p1, 0x1773

    .line 809
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto :goto_1

    :cond_6
    if-ne p2, v5, :cond_7

    .line 811
    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 812
    iput v5, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto :goto_1

    :cond_7
    const/16 v5, 0x19f

    if-ne p2, v5, :cond_8

    const-string v5, "SD_NOT_SUPPORTED_VT"

    .line 813
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 814
    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 p1, 0x1775

    .line 815
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto :goto_1

    :cond_8
    if-ne p2, v4, :cond_9

    .line 817
    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 p1, 0x1776

    .line 818
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto :goto_1

    :cond_9
    if-ne p2, p1, :cond_a

    const-string p1, "PD_CALL_EXISTS_ON_THE_OTHER_SLOT"

    .line 819
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 820
    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 p1, 0x177b

    .line 821
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto :goto_1

    :cond_a
    if-ne p2, v3, :cond_b

    .line 822
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 823
    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 824
    iput v1, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    :cond_b
    :goto_1
    return-object p0
.end method

.method public close()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallIdInt:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/GoogleImsService;->onCallClosed(I)V

    .line 124
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1070
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 1071
    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result p0

    .line 1070
    invoke-interface {v0, p1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->consultativeTransferCall(II)V

    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 590
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_0

    .line 591
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x66

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void

    .line 597
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->extendToConference([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 599
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_2

    .line 600
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x67

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCallId()Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallId:Ljava/lang/String;

    return-object p0
.end method

.method public getCallIdInt()I
    .locals 0

    .line 137
    iget p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallIdInt:I

    return p0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object p0
.end method

.method public getCmcCallSessionManager()Lcom/sec/internal/google/cmc/CmcCallSessionManager;
    .locals 1

    const-string p0, "ImsCallSessionImpl"

    const-string v0, "getCmcCallSessionManager(), duplicate"

    .line 116
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 230
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 233
    :cond_0
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallStateOrdinal()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    return-object p0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "call_mode_changeable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 178
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    return-object p0
.end method

.method public getPrevInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 238
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 241
    :cond_0
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getPrevCallStateOrdinal()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "RawInviteMessage"

    .line 217
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 219
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getIncomingInviteRawSip()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v1
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "call_mode_changeable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 207
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    return-object p0
.end method

.method public getState()I
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsConferenceParticipant:Z

    if-eqz v0, :cond_0

    const/16 p0, 0x8

    return p0

    .line 250
    :cond_0
    iget p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    return p0
.end method

.method public getTtyModeFromCallType(II)I
    .locals 1

    .line 1103
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1107
    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getTtyMode(I)I

    move-result p0

    const/4 p1, 0x1

    if-nez p0, :cond_1

    move p0, p1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    if-eqz p0, :cond_2

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_1

    :pswitch_2
    move v0, p1

    :cond_2
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 0

    .line 704
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    return-object p0
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 472
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_0

    .line 473
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v1, 0x66

    invoke-direct {p1, v1, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void

    .line 479
    :cond_1
    :try_start_0
    new-instance p1, Lcom/sec/ims/volte2/data/MediaProfile;

    invoke-direct {p1}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>()V

    .line 481
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/sec/ims/volte2/IImsCallSession;->hold(Lcom/sec/ims/volte2/data/MediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 483
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_2

    .line 484
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v1, 0x67

    invoke-direct {p1, v1, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public initP2pImpl()V
    .locals 1

    const-string p0, "ImsCallSessionImpl"

    const-string v0, "initP2pImpl(), duplicate"

    .line 112
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 608
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez p0, :cond_0

    return-void

    .line 613
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->extendToConference([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public isEmergencyCall()Z
    .locals 2

    .line 694
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "e_call"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget p0, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

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

.method public isInCall()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    iget v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_0

    .line 256
    sget-object v0, Lcom/sec/internal/google/ImsCallSessionImpl$2;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE:[I

    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isMultiparty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 690
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsMultiparty:Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public isWifiCall()Z
    .locals 2

    const/16 v0, 0x12

    .line 699
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "CallRadioTech"

    invoke-virtual {p0, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public merge()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/16 v1, 0x66

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 528
    :cond_0
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    .line 530
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v3}, Lcom/sec/internal/google/GoogleImsService;->hasConferenceHost()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 531
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v0}, Lcom/sec/internal/google/GoogleImsService;->getConferenceHost()Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallIdInt()I

    move-result v0

    .line 534
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getParticipantIdForMerge(II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 537
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_2

    .line 538
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_2
    return-void

    .line 543
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v4}, Lcom/sec/internal/google/GoogleImsService;->hasConferenceHost()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 544
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v0, v2}, Lcom/sec/internal/google/GoogleImsService;->setInitialMerge(Z)V

    .line 545
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p0}, Lcom/sec/internal/google/GoogleImsService;->getConferenceHost()Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object p0

    .line 546
    invoke-direct {p0, v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->inviteParticipants(I)V

    goto/16 :goto_2

    .line 548
    :cond_4
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v5, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v5}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getTtyMode(I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    move v4, v5

    goto :goto_0

    :cond_5
    move v4, v2

    .line 549
    :goto_0
    iget-object v6, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v6}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v6

    iget-object v7, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {v6, v7, v4}, Lcom/sec/internal/google/DataTypeConvertor;->convertToSecCallProfile(ILandroid/telephony/ims/ImsCallProfile;Z)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    .line 550
    invoke-virtual {v4, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setConferenceCall(I)V

    .line 551
    iget-object v6, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v6}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getLineMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setLineMsisdn(Ljava/lang/String;)V

    .line 552
    iget-object v6, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v6}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V

    const/4 v6, 0x0

    .line 557
    :try_start_0
    iget-object v7, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v7, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v4, v6

    :goto_1
    if-nez v4, :cond_7

    .line 562
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_6

    .line 563
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_6
    return-void

    .line 568
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "CallRadioTech"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-interface {v4, v1}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgState(Z)V

    .line 569
    iput-boolean v5, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsConferenceHost:Z

    .line 570
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v1, v5}, Lcom/sec/internal/google/GoogleImsService;->setInitialMerge(Z)V

    .line 571
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v1, p0}, Lcom/sec/internal/google/GoogleImsService;->setConferenceHost(Lcom/sec/internal/google/ImsCallSessionImpl;)V

    .line 573
    new-instance v1, Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v5, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-direct {v1, v2, v4, v6, v5}, Lcom/sec/internal/google/ImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/google/GoogleImsService;)V

    .line 575
    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->notifyReadyToHandleImsCallbacks()V

    .line 576
    invoke-interface {v4, v3, v0}, Lcom/sec/ims/volte2/IImsCallSession;->merge(II)V

    .line 577
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    :goto_2
    return-void

    .line 521
    :cond_8
    :goto_3
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_9

    .line 522
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_9
    return-void
.end method

.method public notifyReadyToHandleImsCallbacks()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1092
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_0

    .line 1096
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->notifyReadyToHandleImsCallbacks()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 1093
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public onSuppServiceReceived(II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 732
    new-instance v7, Landroid/telephony/ims/ImsSuppServiceNotification;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/telephony/ims/ImsSuppServiceNotification;-><init>(IIIILjava/lang/String;[Ljava/lang/String;)V

    .line 734
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, v7}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    return-void
.end method

.method public reject(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 429
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_0

    .line 430
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x66

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void

    .line 436
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/sec/internal/google/DataTypeConvertor;->convertCallRejectReasonFromFW(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->reject(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 438
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Reject Failed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 440
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_2

    .line 441
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x67

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_2
    :goto_0
    return-void

    .line 439
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected releaseSessionListeners()V
    .locals 3

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_1

    .line 143
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    invoke-interface {v0, v1}, Lcom/sec/ims/volte2/IImsCallSession;->unregisterSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    .line 144
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mRttEventListener:Lcom/sec/ims/IRttEventListener;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 148
    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 620
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    return-void

    .line 625
    :cond_0
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 626
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v3, v2}, Lcom/sec/internal/google/GoogleImsService;->getParticipantId(Ljava/lang/String;)I

    move-result v2

    .line 627
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    const-string v4, "disconnecting"

    const/4 v5, 0x3

    invoke-virtual {v3, v2, v4, v5}, Lcom/sec/internal/google/GoogleImsService;->updateParticipant(ILjava/lang/String;I)V

    .line 628
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3, v2}, Lcom/sec/ims/volte2/IImsCallSession;->removeParticipants(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 492
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_0

    .line 493
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v1, 0x66

    invoke-direct {p1, v1, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void

    .line 499
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 501
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_2

    .line 502
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v1, 0x67

    invoke-direct {p1, v1, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    return-void

    .line 654
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->convertDtmfToCode(C)I

    move-result p0

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/sec/ims/volte2/IImsCallSession;->sendDtmf(IILandroid/os/Message;)V

    if-eqz p2, :cond_1

    .line 656
    iget-object p0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz p0, :cond_1

    .line 657
    invoke-virtual {p0, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_1
    return-void
.end method

.method public sendImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1084
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz p0, :cond_0

    .line 1087
    invoke-interface {p0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSession;->sendImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 1085
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public sendRtpHeaderExtensions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1029
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/sec/ims/volte2/IImsCallSession;->sendText(Ljava/lang/String;I)V

    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1040
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result p0

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendRttSessionModifyRequest(IZ)I

    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1051
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 1052
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendRttSessionModifyResponse(IZ)V

    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 681
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 684
    iput-boolean v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsUssdTerminatedByUser:Z

    const/4 p0, 0x2

    .line 685
    invoke-interface {v0, p0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->info(ILjava/lang/String;)V

    return-void
.end method

.method protected setCallProfile(I)V
    .locals 5

    .line 183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/telephony/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    and-int/lit8 v1, p1, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 186
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 187
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    iput-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 188
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v4, v3, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    iput v4, v1, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 189
    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    :cond_0
    const/4 v1, 0x2

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_1

    .line 192
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 193
    sget-object p1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsCallProfile;

    iput-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 194
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    iput v1, p1, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 195
    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object p0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p1, p0}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 197
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method public setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    return-void
.end method

.method public setMute(Z)V
    .locals 0

    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    .line 297
    iput v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 298
    iput-object p2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 p2, 0x3

    .line 299
    invoke-virtual {p0, p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->setCallProfile(I)V

    .line 301
    iget-object p2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p2

    .line 302
    invoke-virtual {p2, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->isEmergencyCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getRadioTech()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CallRadioTech"

    invoke-virtual {v2, v4, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isCrossSimCall()Z

    move-result v3

    const-string v4, "android.telephony.ims.extra.IS_CROSS_SIM_CALL"

    invoke-virtual {v2, v4, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 309
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setAutomaticMode(IZ)V

    .line 310
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 312
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "CallPull"

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 313
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v2, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 314
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;

    move-result-object v2

    const/16 v3, 0x65

    if-eqz v2, :cond_6

    if-eqz p1, :cond_6

    const-string v4, "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

    .line 318
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 320
    invoke-virtual {v2}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :catch_0
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/Dialog;

    if-nez v5, :cond_3

    goto :goto_0

    .line 326
    :cond_3
    iget-object v6, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v6}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v6

    .line 327
    sget-object v7, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v6, v7, :cond_4

    .line 328
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->getIdForString(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    .line 331
    :cond_4
    :try_start_0
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getDialogId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ne p1, v6, :cond_2

    .line 338
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 339
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getSipLocalTag()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 340
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getSipRemoteTag()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 341
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleCallType(I)I

    move-result v3

    iput v3, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 342
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 343
    invoke-virtual {p2, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setPullCall(Z)V

    .line 344
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 345
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getCallSlot()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcEdCallSlot(I)V

    .line 348
    :cond_5
    :try_start_1
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {v2}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v5}, Lcom/sec/ims/volte2/IImsCallSession;->pulling(Ljava/lang/String;Lcom/sec/ims/Dialog;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    const/16 v3, 0x3f7

    .line 358
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_9

    .line 359
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v3, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2

    .line 363
    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    move-result p1

    if-ltz p1, :cond_8

    goto :goto_2

    .line 364
    :cond_8
    new-instance p1, Landroid/os/RemoteException;

    const-string/jumbo p2, "start return -1"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 367
    :catch_2
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_9

    .line 368
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p2, 0x67

    invoke-direct {p1, p2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_9
    :goto_2
    return-void

    .line 291
    :cond_a
    :goto_3
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_b

    .line 292
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p2, 0x66

    invoke-direct {p1, p2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_b
    return-void
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 378
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_0

    .line 379
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p2, 0x66

    invoke-direct {p1, p2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 385
    :try_start_0
    iput v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 386
    iput-object p2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 p2, 0x3

    .line 387
    invoke-virtual {p0, p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->setCallProfile(I)V

    .line 388
    iget-object p2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/sec/ims/volte2/IImsCallSession;->startConference([Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_2

    .line 391
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p2, 0x67

    invoke-direct {p1, p2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public startDtmf(C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 663
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    return-void

    .line 667
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->convertDtmfToCode(C)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/ims/volte2/IImsCallSession;->startDtmf(I)V

    return-void
.end method

.method public stopDtmf()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 672
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez p0, :cond_0

    return-void

    .line 676
    :cond_0
    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->stopDtmf()V

    return-void
.end method

.method public terminate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 449
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_0

    .line 450
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x66

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void

    .line 456
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    const/4 p1, 0x1

    .line 457
    iput-boolean p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsUssdTerminatedByUser:Z

    .line 458
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v0, 0x3

    const-string v2, "1"

    invoke-interface {p1, v0, v2}, Lcom/sec/ims/volte2/IImsCallSession;->info(ILjava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-static {p1}, Lcom/sec/internal/google/DataTypeConvertor;->convertCallEndReasonFromFW(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 463
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_3

    .line 464
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x67

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public transfer(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1065
    iget-object p2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result p0

    invoke-interface {p2, p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->pushCall(ILjava/lang/String;)V

    return-void

    .line 1063
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "not support assured transfer"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0

    return-void
.end method

.method public updateCallProfile()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 832
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_1d

    .line 836
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 837
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 842
    :cond_0
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getHDIcon()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 843
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v4, v2, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    goto :goto_0

    .line 845
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v3, v2, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 848
    :goto_0
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v2

    const-string v6, "dialstring"

    const-string v7, "android.telephony.ims.extra.CONFERENCE"

    if-eqz v2, :cond_2

    .line 849
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v7, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 850
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v6, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 852
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v7, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 853
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 856
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getOir(Lcom/sec/internal/constants/Mno;Lcom/sec/ims/volte2/data/CallProfile;)I

    move-result v2

    .line 857
    iget-object v6, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v7, "oir"

    invoke-virtual {v6, v7, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 858
    iget-object v6, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v7, "cnap"

    invoke-virtual {v6, v7, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 860
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getNumberPlus()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v5

    const-string v7, "com.samsung.telephony.extra.IS_TWO_PHONE_MODE"

    invoke-virtual {v2, v7, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 861
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getPhotoRing()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.samsung.telephony.extra.PHOTO_RING_AVAILABLE"

    invoke-virtual {v2, v7, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getAlertInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.samsung.telephony.extra.ALERT_INFO"

    invoke-virtual {v2, v7, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v5, [Ljava/lang/String;

    .line 863
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getNumberPlus()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .line 864
    iget-object v6, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v7, "android.telephony.ims.extra.FORWARDED_NUMBER"

    invoke-virtual {v6, v7, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 865
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getConferenceSupported()Ljava/lang/String;

    move-result-object v6

    const-string v8, "com.samsung.telephony.extra.SKT_CONFERENCE_CALL_SUPPORT"

    invoke-virtual {v2, v8, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v2

    const-string v6, "1"

    const-string v8, "0"

    if-eqz v2, :cond_4

    new-array v2, v5, [Ljava/lang/String;

    .line 868
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v4

    .line 869
    iget-object v9, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v9, v7, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 870
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v2

    const-string v7, "anonymous"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v7, "com.samsung.telephony.extra.CALL_FORWARDING_PRESENTATION"

    if-eqz v2, :cond_3

    .line 871
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v7, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 873
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v7, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    :cond_4
    :goto_2
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectCode()I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_5

    .line 878
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectCode()I

    move-result v7

    const-string v9, "com.samsung.telephony.extra.VCRBT_CAUSE"

    invoke-virtual {v2, v9, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 881
    :cond_5
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectProtocol()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 882
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectProtocol()Ljava/lang/String;

    move-result-object v7

    const-string v9, "com.samsung.telephony.extra.VCRBT_REASON_PROTOCOL"

    invoke-virtual {v2, v9, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    :cond_6
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 886
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectText()Ljava/lang/String;

    move-result-object v7

    const-string v9, "com.samsung.telephony.extra.TEXT_DESCRIPTION"

    invoke-virtual {v2, v9, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    :cond_7
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDtmfEvent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 890
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDtmfEvent()Ljava/lang/String;

    move-result-object v7

    const-string v9, "com.samsung.telephony.extra.DTMF_EVENT"

    invoke-virtual {v2, v9, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    :cond_8
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getIsFocus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "com.samsung.telephony.extra.MT_CONFERENCE"

    invoke-virtual {v2, v7, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 895
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isRemoteHeld()Z

    move-result v6

    const-string v7, "com.samsung.telephony.extra.REMOTE_HELD"

    invoke-virtual {v2, v7, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 897
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v2

    const-string v6, "ImsCallSessionImpl"

    const-string v7, "oi"

    if-nez v2, :cond_a

    .line 898
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 899
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 900
    :cond_9
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v7}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isLatin()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 901
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCallProfile.setCallExtra: EXTRA_OI = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 905
    :cond_a
    sget-object v2, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_b

    .line 906
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v10

    const-string v11, "+82"

    invoke-static {v9, v11, v8, v10}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 907
    :cond_b
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 908
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v10

    const-string v11, "+61"

    invoke-static {v9, v11, v8, v10}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 909
    :cond_c
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v7}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 910
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    :cond_d
    :goto_3
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 914
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v2

    if-eqz v2, :cond_f

    .line 915
    :cond_e
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v7

    const-string v8, "cna"

    invoke-virtual {v2, v8, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    :cond_f
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcRecordEvent()I

    move-result v7

    const-string v8, "com.samsung.telephony.extra.CMC_RECORDING_EVENT"

    invoke-virtual {v2, v8, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 921
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v7

    invoke-static {v7}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleCallType(I)I

    move-result v7

    iput v7, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 922
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v7

    iput-object v7, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 923
    iget v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    const/4 v7, 0x2

    if-gt v2, v7, :cond_10

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 925
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v2, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v7, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mRingbackToneDirection:I

    iput v7, v2, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 928
    :cond_10
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->hasRemoteVideoCapa()Z

    move-result v7

    const-string v8, "call_mode_changeable"

    invoke-virtual {v2, v8, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 929
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isVideoCRBT()Z

    move-result v2

    const-string v7, "com.samsung.telephony.extra.VIDEO_CRT_MT"

    const-string v8, "com.samsung.telephony.extra.VIDEO_CRBT"

    if-eqz v2, :cond_14

    .line 930
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v2

    if-nez v2, :cond_11

    .line 931
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v8, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    goto :goto_5

    .line 932
    :cond_11
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v2

    if-ne v2, v5, :cond_15

    .line 933
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDelayRinging()Z

    move-result v2

    if-eqz v2, :cond_12

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$VcrtPost;->NO_VCRT:I

    goto :goto_4

    :cond_12
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isDsdaVtOnOtherSlot(I)Z

    move-result v2

    if-eqz v2, :cond_13

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$VcrtPost;->VCRT_RESTRICT:I

    goto :goto_4

    :cond_13
    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$VcrtPost;->VCRT_AVAILABLE:I

    .line 934
    :goto_4
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v4, v7, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_5

    .line 937
    :cond_14
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v8, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 938
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    sget v4, Lcom/sec/internal/constants/ims/ImsConstants$VcrtPost;->NO_VCRT:I

    invoke-virtual {v2, v7, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 941
    :cond_15
    :goto_5
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v2

    const-string v4, "CallRadioTech"

    if-eqz v2, :cond_16

    .line 942
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/16 v7, 0xe

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 944
    :cond_16
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getRadioTech()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    :goto_6
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    if-nez v2, :cond_17

    .line 948
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v2

    .line 949
    invoke-static {v2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v7

    if-nez v7, :cond_17

    .line 950
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set EXTRA_CALL_RAT_TYPE for 3gvt  currentRat["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v7, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 952
    invoke-static {v2}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 951
    invoke-virtual {v7, v4, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    :cond_17
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isCrossSimCall()Z

    move-result v4

    const-string v7, "android.telephony.ims.extra.IS_CROSS_SIM_CALL"

    invoke-virtual {v2, v7, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 957
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v7, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v7}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v7

    invoke-interface {v4, v7}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteSupportECT(I)Z

    move-result v4

    const-string v7, "com.samsung.telephony.extra.CAN_TRANSFER_CALL"

    invoke-virtual {v2, v7, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 958
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v4

    const-string v7, "com.samsung.telephony.extra.CALL_DIRECTION"

    invoke-virtual {v2, v7, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 959
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getAudioRxTrackId()I

    move-result v4

    const-string v7, "com.samsung.telephony.extra.AUDIO_RX_TRACK_ID"

    invoke-virtual {v2, v7, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 960
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getFeatureCaps()Ljava/lang/String;

    move-result-object v4

    const-string v7, "feature_caps"

    invoke-virtual {v2, v7, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_18

    sget-object v2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_19

    .line 963
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSession:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", EPSFB:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getEPSFBsuccess()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getEPSFBsuccess()Z

    move-result v4

    const-string v6, "com.samsung.ims.extra.EPSFB_SUCCESS"

    invoke-virtual {v2, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 965
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCellId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 966
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCellId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.samsung.ims.extra.ECHO_CELL_ID"

    invoke-virtual {v2, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    :cond_19
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getRecordState()I

    move-result v4

    const-string v6, "com.samsung.telephony.extra.VT_RECORDING_STATE"

    invoke-virtual {v2, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 972
    iget-boolean v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsEcbmSupport:Z

    if-eqz v2, :cond_1a

    .line 973
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "imsEcmSupport"

    invoke-virtual {v2, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 976
    :cond_1a
    sget-object v2, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_1b

    .line 977
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getVCrtIsAlerting()Z

    move-result v2

    const-string v4, "com.samsung.telephony.extra.VIDEO_CRT_IS_ALERTING"

    invoke-virtual {v0, v4, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 980
    :cond_1b
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->isCmcRegExist(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 981
    invoke-virtual {p0, v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCmcCallExtras(Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 983
    :cond_1c
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsMultiparty:Z

    .line 984
    invoke-virtual {p0, v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->setCallProfile(I)V

    return-void

    .line 833
    :cond_1d
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method protected updateCmcCallExtras(Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public updateConferenceStatus(ILjava/lang/String;)V
    .locals 2

    const-string v0, "disconnected"

    .line 708
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/internal/google/GoogleImsService;->updateParticipant(ILjava/lang/String;I)V

    goto :goto_0

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/google/GoogleImsService;->updateParticipant(ILjava/lang/String;)V

    .line 715
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p1}, Lcom/sec/internal/google/GoogleImsService;->getConferenceHost()Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object p1

    .line 716
    iget-object p2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p2, v0}, Lcom/sec/internal/google/GoogleImsService;->updateSecConferenceInfo(Landroid/telephony/ims/ImsCallProfile;)V

    .line 718
    iget-object p2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-nez p2, :cond_1

    if-eqz p1, :cond_2

    .line 719
    invoke-virtual {p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 720
    invoke-virtual {p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p2, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 721
    invoke-virtual {p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p0}, Lcom/sec/internal/google/GoogleImsService;->getImsConferenceState()Landroid/telephony/ims/ImsConferenceState;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    goto :goto_1

    .line 724
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 725
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p0}, Lcom/sec/internal/google/GoogleImsService;->getImsConferenceState()Landroid/telephony/ims/ImsConferenceState;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method public updateHoldToneType(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1011
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 p1, 0x0

    iput p1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    :cond_0
    return-void
.end method

.method public updateRingbackToneDirection(I)V
    .locals 0

    .line 1016
    iput p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mRingbackToneDirection:I

    .line 1017
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput p1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    const/4 p1, -0x1

    .line 1018
    iput p1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    return-void
.end method
