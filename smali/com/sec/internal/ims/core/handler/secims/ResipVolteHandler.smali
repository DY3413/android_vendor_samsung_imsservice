.class public Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;
.super Lcom/sec/internal/ims/core/handler/VolteHandler;
.source "ResipVolteHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;,
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$CmcInfoXmlParser;,
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeServiceXmlParser;,
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;,
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;,
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;,
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    }
.end annotation


# static fields
.field private static final ADD_CONF_PARTICIPANT:I = 0x0

.field private static final ALTERNATIVE_SERVICE:Ljava/lang/String; = "application/3gpp-ims+xml"

.field private static final CMC_INFO_MIME_TYPE:Ljava/lang/String; = "application/cmc-info+xml"

.field private static final DIALOG_EVENT_MIME_TYPE:Ljava/lang/String; = "application/dialog-info+xml"

.field private static final EVENT_CALL_STATE_CHANGE:I = 0x64

.field private static final EVENT_CDPN_INFO:I = 0x6b

.field private static final EVENT_CMC_INFO:I = 0x73

.field private static final EVENT_CONFERENCE_UPDATE:I = 0x66

.field private static final EVENT_DEDICATED_BEARER_EVENT:I = 0x6e

.field private static final EVENT_DELAYED_CALL_STATE_CHANGE:I = 0xc8

.field private static final EVENT_DIALOG_EVENT_RECEIVED:I = 0x69

.field private static final EVENT_DTMF_INFO:I = 0x70

.field private static final EVENT_END_CALL_RESPONSE:I = 0x2

.field private static final EVENT_HOLD_CALL_RESPONSE:I = 0x4

.field private static final EVENT_INFO_CALL_RESPONSE:I = 0x7

.field private static final EVENT_MAKE_CALL_RESPONSE:I = 0x1

.field private static final EVENT_MERGE_CALL_RESPONSE:I = 0x3

.field private static final EVENT_MODIFY_CALL:I = 0x6a

.field private static final EVENT_NEW_INCOMING_CALL:I = 0x65

.field private static final EVENT_PULLING_CALL_RESPONSE:I = 0x6

.field private static final EVENT_REFER_RECEIVED:I = 0x67

.field private static final EVENT_REFER_STATUS:I = 0x68

.field private static final EVENT_RESUME_CALL_RESPONSE:I = 0x5

.field private static final EVENT_RRC_CONNECTION:I = 0x6f

.field private static final EVENT_RTP_LOSS_RATE_NOTI:I = 0x6c

.field private static final EVENT_SIPMSG_INFO:I = 0x72

.field private static final EVENT_TEXT_INFO:I = 0x71

.field private static final EVENT_UPDATE_AUDIO_INTEFACE_RESPONSE:I = 0x8

.field private static final LOG_TAG:Ljava/lang/String; = "ResipVolteHandler"

.field private static final MO_TIMEOUT_MILLIS:I = 0x7530

.field private static final MT_WAKELOCK_TIME:I = 0x3e8

.field private static final REMOVE_CONF_PARTICIPANT:I = 0x1

.field private static final URN_SOS:Ljava/lang/String; = "urn:service:sos"

.field private static final URN_SOS_AMBULANCE:Ljava/lang/String; = "urn:service:sos.ambulance"

.field private static final URN_SOS_FIRE:Ljava/lang/String; = "urn:service:sos.fire"

.field private static final URN_SOS_MARINE:Ljava/lang/String; = "urn:service:sos.marine"

.field private static final URN_SOS_MOUNTAIN:Ljava/lang/String; = "urn:service:sos.mountain"

.field private static final URN_SOS_POLICE:Ljava/lang/String; = "urn:service:sos.police"

.field private static final USSD_INDI_BY_MESSAGE_MIME_TYPE:Ljava/lang/String; = "application/ussd"

.field private static final USSD_MIME_TYPE:Ljava/lang/String; = "application/vnd.3gpp.ussd+xml"

.field private static final mMainSosSubserviceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioInterfaceHandler:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;

.field private mAudioInterfaceThread:Landroid/os/HandlerThread;

.field protected mAutomaticMode:[Z

.field private final mCallList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mCmcInfoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mContext:Landroid/content/Context;

.field private final mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mDtmfEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private final mIncomingCallEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mOutOfService:[Z

.field private final mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected mRttMode:[I

.field private final mSIPMSGNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

.field private final mTextEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected mTtyMode:[I

.field private final mUssdEventRegistrants:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method static bridge synthetic -$$Nest$monUpdateAudioInterfaceResponse(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;Lcom/sec/internal/helper/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onUpdateAudioInterfaceResponse(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 195
    new-instance v0, Ljava/util/HashSet;

    const-string/jumbo v1, "urn:service:sos"

    const-string/jumbo v2, "urn:service:sos.ambulance"

    const-string/jumbo v3, "urn:service:sos.fire"

    const-string/jumbo v4, "urn:service:sos.marine"

    const-string/jumbo v5, "urn:service:sos.mountain"

    const-string/jumbo v6, "urn:service:sos.police"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mMainSosSubserviceSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 0

    .line 350
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/VolteHandler;-><init>(Landroid/os/Looper;)V

    .line 147
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 148
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mIncomingCallEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 149
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mUssdEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 150
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 151
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 152
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 153
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 154
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDtmfEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 155
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTextEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 156
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 157
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 158
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mSIPMSGNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 159
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCmcInfoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 194
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 205
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioInterfaceThread:Landroid/os/HandlerThread;

    .line 206
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioInterfaceHandler:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;

    .line 352
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mContext:Landroid/content/Context;

    .line 353
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    return-void
.end method

.method private IsModifiableNeedToBeIgnored(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;Lcom/sec/internal/constants/Mno;)Z
    .locals 6

    .line 3030
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 3032
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 3033
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 3034
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    if-eqz v4, :cond_0

    .line 3035
    iget-object v5, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getUaProfile()Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3036
    iget-object v4, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getUaProfile()Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getCmcType()I

    move-result v4

    if-lez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3042
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_LOCAL:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    const/4 v4, 0x1

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_BOTH:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-eq p1, v2, :cond_2

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    .line 3043
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    sub-int/2addr p0, v3

    if-le p0, v4, :cond_3

    .line 3044
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    .line 3047
    :cond_3
    monitor-exit v0

    return v1

    .line 3045
    :cond_4
    :goto_1
    monitor-exit v0

    return v4

    :catchall_0
    move-exception p0

    .line 3047
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private addCall(ILcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)V
    .locals 4

    .line 2974
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    const-string v1, "ResipVolteHandler"

    .line 2975
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add Call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2977
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private answerCall(IILjava/lang/String;)I
    .locals 3

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "answerCallWithCallType: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cmcCallEstablishTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    const-string p1, "answerCallWithCallType: session not found."

    .line 870
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->dumpCall()V

    return v2

    :cond_0
    if-ne p2, v2, :cond_1

    .line 876
    iget p2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 879
    :cond_1
    iget-object p0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->answerCall(IILjava/lang/String;)V

    .line 881
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p0

    if-lez p0, :cond_2

    .line 882
    iget-object p0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object p0

    .line 883
    invoke-static {p0}, Lcom/sec/internal/log/CmcPingTestLogger;->ping(Ljava/util/List;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private checkConfererenceCallData(Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;)I
    .locals 2

    .line 1204
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getConferenceUri()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    const-string v1, "ResipVolteHandler"

    if-nez p0, :cond_0

    const-string p0, "checkConfererenceCallData: conference server uri is not configured."

    .line 1205
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1207
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->isSubscriptionEnabled()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "checkConfererenceCallData: confSubscribe no global xml file"

    .line 1208
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1210
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSubscribeDialogType()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "checkConfererenceCallData: subscribeDialogType no global xml file"

    .line 1211
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1213
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriType()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "checkConfererenceCallData: referUriType no global xml file"

    .line 1214
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1216
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getRemoveReferUriType()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    const-string p0, "checkConfererenceCallData: removeReferUriType no global xml file"

    .line 1217
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1219
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriAsserted()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    const-string p0, "checkConfererenceCallData: referUriAsserted no global xml file"

    .line 1220
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1222
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getUseAnonymousUpdate()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    const-string p0, "checkConfererenceCallData: useAnonymousUpdate no global xml file"

    .line 1223
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method private convertDedicatedBearerState(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private convertToCallTypeBackward(I)I
    .locals 2

    const/4 p0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2968
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertToCallType: unknown call type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResipVolteHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :pswitch_1
    const/16 p0, 0x13

    return p0

    :pswitch_2
    const/16 p0, 0x12

    return p0

    :pswitch_3
    const/16 p0, 0xf

    return p0

    :pswitch_4
    const/16 p0, 0xe

    return p0

    :pswitch_5
    const/16 p0, 0xc

    return p0

    :pswitch_6
    const/16 p0, 0xb

    return p0

    :pswitch_7
    const/16 p0, 0xa

    return p0

    :pswitch_8
    const/16 p0, 0x9

    return p0

    :pswitch_9
    const/16 p0, 0x8

    return p0

    :pswitch_a
    const/4 p0, 0x7

    return p0

    :pswitch_b
    const/4 p0, 0x6

    return p0

    :pswitch_c
    const/4 p0, 0x5

    return p0

    :pswitch_d
    const/4 p0, 0x4

    return p0

    :pswitch_e
    const/4 p0, 0x3

    return p0

    :pswitch_f
    const/4 p0, 0x2

    :pswitch_10
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private convertToCallTypeForward(I)I
    .locals 2

    const/4 p0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2928
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertToCallType:: unknown call type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResipVolteHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :pswitch_1
    const/16 p0, 0x13

    return p0

    :pswitch_2
    const/16 p0, 0x12

    return p0

    :pswitch_3
    const/16 p0, 0xf

    return p0

    :pswitch_4
    const/16 p0, 0xe

    :pswitch_5
    return p0

    :pswitch_6
    const/16 p0, 0xc

    return p0

    :pswitch_7
    const/16 p0, 0xb

    return p0

    :pswitch_8
    const/16 p0, 0xa

    return p0

    :pswitch_9
    const/16 p0, 0x9

    return p0

    :pswitch_a
    const/16 p0, 0x8

    return p0

    :pswitch_b
    const/4 p0, 0x7

    return p0

    :pswitch_c
    const/4 p0, 0x6

    return p0

    :pswitch_d
    const/4 p0, 0x5

    return p0

    :pswitch_e
    const/4 p0, 0x4

    return p0

    :pswitch_f
    const/4 p0, 0x3

    return p0

    :pswitch_10
    const/4 p0, 0x2

    :pswitch_11
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private convertToVolteState(II)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_6

    const/4 p0, 0x2

    if-eq p1, p0, :cond_5

    const/4 p0, 0x4

    if-eq p1, p0, :cond_4

    const/4 p0, 0x5

    if-eq p1, p0, :cond_3

    const/16 p0, 0x12

    if-eq p1, p0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 2886
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "convertToVolteState: unknown Call state "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResipVolteHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2863
    :pswitch_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->REFRESHFAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 2880
    :pswitch_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->SESSIONPROGRESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    :pswitch_2
    if-eqz p2, :cond_0

    const/16 p0, 0x462

    if-eq p2, p0, :cond_0

    .line 2875
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 2877
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->MODIFIED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 2859
    :pswitch_3
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_BOTH:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 2871
    :pswitch_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->EARLY_MEDIA_START:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    :pswitch_5
    if-eqz p2, :cond_1

    .line 2866
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 2868
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ENDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 2857
    :pswitch_6
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 2855
    :pswitch_7
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_LOCAL:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 2861
    :pswitch_8
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ESTABLISHED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 2884
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->EXTEND_TO_CONFERENCE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 2882
    :cond_3
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->FORWARDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 2853
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->RINGING_BACK:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 2849
    :cond_5
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->CALLING:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 2851
    :cond_6
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->TRYING:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createCmcInfoContents(IIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    .locals 8

    const-string p0, "external-call-id"

    const-string p1, "extra"

    const-string v0, "record-event"

    const-string v1, "cmc-info-data"

    const-string v2, "ResipVolteHandler"

    const-string v3, ""

    .line 610
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 611
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 614
    :try_start_0
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    .line 615
    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    .line 616
    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 617
    invoke-interface {v4, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 619
    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 620
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v4, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 621
    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 623
    invoke-interface {v4, v3, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 624
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v4, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 625
    invoke-interface {v4, v3, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 627
    invoke-interface {v4, v3, p0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 628
    invoke-interface {v4, p4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 629
    invoke-interface {v4, v3, p0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 631
    invoke-interface {v4, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 633
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to createCmcInfoContents()"

    .line 635
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 638
    :goto_0
    new-instance p0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const-string p1, "application/cmc-info+xml"

    .line 639
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 640
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    .line 641
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 642
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 643
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 644
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 646
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->getRootAsAdditionalContents(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object p0

    .line 648
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createCmcInfoContents: built contents - \n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private createUssdContents(ILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    .locals 10

    const-string/jumbo p0, "ussd-string"

    const-string v0, "error-code"

    const-string v1, "UnstructuredSS-Notify"

    const-string v2, "language"

    const-string/jumbo v3, "ussd-data"

    const-string v4, "ResipVolteHandler"

    const-string v5, ""

    .line 549
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v6

    .line 550
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 553
    :try_start_0
    invoke-interface {v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v8, "UTF-8"

    const/4 v9, 0x0

    .line 554
    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v9, 0x1

    .line 555
    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 556
    invoke-interface {v6, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 558
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    .line 559
    sget-object v8, Lcom/sec/internal/constants/Mno;->SMART_CAMBODIA:Lcom/sec/internal/constants/Mno;

    if-eq p1, v8, :cond_3

    .line 560
    invoke-interface {v6, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 561
    sget-object v8, Lcom/sec/internal/constants/Mno;->HK3:Lcom/sec/internal/constants/Mno;

    if-ne p1, v8, :cond_0

    const-string/jumbo p1, "un"

    .line 562
    invoke-interface {v6, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 563
    :cond_0
    sget-object v8, Lcom/sec/internal/constants/Mno;->H3G_AT:Lcom/sec/internal/constants/Mno;

    if-eq p1, v8, :cond_2

    sget-object v8, Lcom/sec/internal/constants/Mno;->TIGO_BOLIVIA:Lcom/sec/internal/constants/Mno;

    if-ne p1, v8, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "en"

    .line 566
    invoke-interface {v6, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :cond_2
    :goto_0
    const-string/jumbo p1, "undefined"

    .line 564
    invoke-interface {v6, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 568
    :goto_1
    invoke-interface {v6, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    const/4 p1, 0x3

    if-ne p3, p1, :cond_4

    .line 572
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "createUssdContents: error - \n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-interface {v6, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 574
    invoke-interface {v6, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 575
    invoke-interface {v6, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    :cond_4
    const/4 p1, 0x4

    if-ne p3, p1, :cond_5

    const-string p0, "createUssdContents: notify response"

    .line 577
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-interface {v6, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 579
    invoke-interface {v6, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 581
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createUssdContents: dialstring - \n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-interface {v6, v5, p0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 583
    invoke-interface {v6, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 584
    invoke-interface {v6, v5, p0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 587
    :goto_2
    invoke-interface {v6, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 589
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string p1, "Failed to createUssdContents()"

    .line 591
    invoke-static {v4, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    :goto_3
    new-instance p0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const-string p1, "application/vnd.3gpp.ussd+xml"

    .line 595
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 596
    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    .line 597
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 598
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 599
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 600
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 602
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->getRootAsAdditionalContents(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object p0

    .line 604
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createUssdContents: built contents - \n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private dumpCall()V
    .locals 6

    .line 3016
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    const-string v1, "ResipVolteHandler"

    .line 3017
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call List Size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 3018
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3019
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3020
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    if-eqz v2, :cond_0

    const-string v3, "ResipVolteHandler"

    .line 3023
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Session Id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in the list"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3026
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getCall(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    .locals 4

    .line 3002
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3003
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3004
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3005
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    if-eqz v2, :cond_0

    .line 3007
    iget v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    if-ne v3, p1, :cond_0

    .line 3008
    monitor-exit v0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3011
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    .locals 4

    .line 2988
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2989
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2990
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2991
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    if-eqz v2, :cond_0

    .line 2993
    iget v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    if-ne v3, p1, :cond_0

    .line 2994
    monitor-exit v0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2997
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getLocalVideoCapa(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 1762
    :cond_0
    iget-object p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-nez p1, :cond_1

    return p0

    :cond_1
    const-string p0, "mmtel-video"

    .line 1767
    invoke-virtual {p1, p0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getParticipantStatus(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x3

    if-ne p1, p0, :cond_2

    return p0

    :cond_2
    const/4 p0, 0x4

    if-ne p1, p0, :cond_3

    return p0

    :cond_3
    const/4 p0, 0x5

    if-ne p1, p0, :cond_4

    return p0

    :cond_4
    const/4 p0, 0x6

    if-ne p1, p0, :cond_5

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private getUa(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 1

    const/4 v0, 0x0

    .line 1599
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(ILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    return-object p0
.end method

.method private isOutOfService(I)Z
    .locals 3

    const-string v0, "ResipVolteHandler"

    .line 1416
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOutOfService() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mOutOfService:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1417
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mOutOfService:[Z

    aget-boolean p0, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "isOutOfService: mOutOfService out of bound"

    .line 1419
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private notifyCallStatus(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;I)V
    .locals 41

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    if-eqz p3, :cond_0

    .line 1771
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v5

    invoke-direct {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeBackward(I)I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    if-eqz p3, :cond_1

    .line 1773
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v7

    long-to-int v7, v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const-string v8, ""

    if-eqz p3, :cond_2

    .line 1774
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->reasonPhrase()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object v9, v8

    :goto_2
    if-eqz p3, :cond_3

    .line 1775
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteVideoCapa()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    if-eqz p3, :cond_4

    .line 1776
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->width()J

    move-result-wide v11

    long-to-int v11, v11

    goto :goto_4

    :cond_4
    const/16 v11, 0x1e0

    :goto_4
    if-eqz p3, :cond_5

    .line 1777
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->height()J

    move-result-wide v12

    long-to-int v12, v12

    goto :goto_5

    :cond_5
    const/16 v12, 0x280

    :goto_5
    if-eqz p3, :cond_6

    .line 1778
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->conferenceSupport()Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    :cond_6
    const/4 v14, 0x0

    :goto_6
    if-eqz p3, :cond_7

    .line 1779
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->isFocus()Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v15, 0x1

    goto :goto_7

    :cond_7
    const/4 v15, 0x0

    :goto_7
    if-eqz v10, :cond_8

    .line 1780
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getLocalVideoCapa(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x1

    goto :goto_8

    :cond_8
    const/16 v16, 0x0

    :goto_8
    move-object/from16 v18, v14

    if-eqz p3, :cond_9

    .line 1781
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->localVideoRtpPort()J

    move-result-wide v13

    long-to-int v13, v13

    goto :goto_9

    :cond_9
    const/4 v13, 0x0

    :goto_9
    move/from16 v19, v7

    if-eqz p3, :cond_a

    .line 1782
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->localVideoRtcpPort()J

    move-result-wide v6

    long-to-int v6, v6

    goto :goto_a

    :cond_a
    const/4 v6, 0x0

    :goto_a
    move v7, v15

    if-eqz p3, :cond_b

    .line 1783
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteVideoRtpPort()J

    move-result-wide v14

    long-to-int v14, v14

    move v15, v14

    goto :goto_b

    :cond_b
    const/4 v15, 0x0

    :goto_b
    move/from16 v21, v5

    if-eqz p3, :cond_c

    .line 1784
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteVideoRtcpPort()J

    move-result-wide v4

    long-to-int v14, v4

    move v4, v14

    goto :goto_c

    :cond_c
    const/4 v4, 0x0

    :goto_c
    if-eqz p3, :cond_d

    .line 1785
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->serviceUrn()Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_d
    const/4 v5, 0x0

    :goto_d
    move/from16 v22, v4

    if-eqz p3, :cond_e

    .line 1786
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->retryAfter()J

    move-result-wide v3

    long-to-int v14, v3

    move v3, v14

    goto :goto_e

    :cond_e
    const/4 v3, 0x0

    :goto_e
    if-eqz p3, :cond_10

    .line 1787
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->localHoldTone()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_f

    :cond_f
    const/4 v4, 0x0

    goto :goto_10

    :cond_10
    :goto_f
    const/4 v4, 0x1

    :goto_10
    if-eqz p3, :cond_11

    .line 1788
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->historyInfo()Ljava/lang/String;

    move-result-object v14

    goto :goto_11

    :cond_11
    move-object v14, v8

    :goto_11
    if-eqz p3, :cond_12

    .line 1789
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->dtmfEvent()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v40, v23

    move-object/from16 v23, v8

    move-object/from16 v8, v40

    goto :goto_12

    :cond_12
    move-object/from16 v23, v8

    :goto_12
    if-eqz p3, :cond_14

    .line 1790
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->cvoEnabled()Z

    move-result v24

    if-eqz v24, :cond_13

    goto :goto_13

    :cond_13
    const/4 v1, 0x0

    goto :goto_14

    :cond_14
    :goto_13
    const/4 v1, 0x1

    :goto_14
    if-eqz p3, :cond_15

    .line 1791
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->alertInfo()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v25, v24

    goto :goto_15

    :cond_15
    const/16 v25, 0x0

    :goto_15
    move/from16 v24, v3

    move/from16 v26, v4

    if-eqz p3, :cond_16

    .line 1792
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->videoCrbtType()J

    move-result-wide v3

    long-to-int v3, v3

    goto :goto_16

    :cond_16
    const/4 v3, 0x0

    :goto_16
    if-eqz p3, :cond_17

    .line 1793
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->cmcDeviceId()Ljava/lang/String;

    move-result-object v4

    goto :goto_17

    :cond_17
    move-object/from16 v4, v23

    :goto_17
    move/from16 v27, v3

    move-object/from16 v28, v4

    if-eqz p3, :cond_18

    .line 1794
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->audioRxTrackId()J

    move-result-wide v3

    long-to-int v3, v3

    goto :goto_18

    :cond_18
    const/4 v3, 0x0

    :goto_18
    if-eqz p3, :cond_19

    .line 1795
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->audioBitRate()Ljava/lang/String;

    move-result-object v4

    goto :goto_19

    :cond_19
    move-object/from16 v4, v23

    :goto_19
    if-eqz p3, :cond_1a

    .line 1796
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->cmcCallTime()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v30, v29

    goto :goto_1a

    :cond_1a
    move-object/from16 v30, v23

    :goto_1a
    if-eqz p3, :cond_1b

    .line 1797
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->featureCaps()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v31, v17

    goto :goto_1b

    :cond_1b
    const/16 v31, 0x0

    :goto_1b
    move/from16 v17, v3

    move-object/from16 v29, v4

    if-eqz p3, :cond_1c

    .line 1798
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->audioEarlyMediaDir()J

    move-result-wide v3

    long-to-int v3, v3

    goto :goto_1c

    :cond_1c
    const/4 v3, 0x0

    :goto_1c
    if-eqz p3, :cond_1d

    .line 1799
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->delayRinging()Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v32, 0x1

    goto :goto_1d

    :cond_1d
    const/16 v32, 0x0

    .line 1800
    :goto_1d
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    goto :goto_1e

    :cond_1e
    sget-object v4, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    .line 1801
    :goto_1e
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_1f

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    goto :goto_1f

    :cond_1f
    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v34, v5

    move-object/from16 v5, v33

    move-object/from16 v33, v4

    .line 1803
    :goto_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v35, v3

    const-string v3, "notifyCallStatus() session: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callstate: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", callType: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v21

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", statusCode: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v19

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reasonPhrase: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", remoteVideoCapa: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", localVideoCapa: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getLocalVideoCapa(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isFocus: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", conferenceSupport: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", localVideoRtpPort: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", localVideoRtcpPort: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", RemoteVideoRtpPort: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", RemoteVideoRtcpPort: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v22

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v18, v12

    const-string v12, ", ServiceUrn: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", retryAfter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v24

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", historyInfo: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", dtmfEvent: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", holdTone: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v26

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v21, v14

    const-string v14, ", cvoEnabled : "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", AlertInfo : "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v25

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v22, v1

    const-string v1, ", videoCrbtType : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v27

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v24, v14

    const-string v14, ", cmcDeviceId : "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v28

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", audioRxTrackId : "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v17

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", audioBitRate : "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v29

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", cmcCallTime : "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v30

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v25, v14

    const-string v14, ", featureCaps: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v31

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v26, v14

    const-string v14, ", audioEarlyMediaDir: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v35

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", delayRinging: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v32

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v27, v14

    const-string v14, "ResipVolteHandler"

    .line 1803
    invoke-static {v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_20

    .line 1832
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setConferenceSupported(Ljava/lang/String;)V

    :cond_20
    const/4 v2, 0x5

    if-eqz v7, :cond_22

    .line 1836
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const-string v7, "1"

    invoke-virtual {v4, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setIsFocus(Ljava/lang/String;)V

    .line 1837
    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    move-object/from16 v7, v33

    if-eq v7, v4, :cond_21

    sget-object v4, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_21

    sget-object v4, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_21

    sget-object v4, Lcom/sec/internal/constants/Mno;->VODAFONE_EG:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_21

    sget-object v4, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_21

    sget-object v4, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_21

    sget-object v4, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_21

    sget-object v4, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_21

    sget-object v4, Lcom/sec/internal/constants/Mno;->PROXIMUS:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_21

    sget-object v4, Lcom/sec/internal/constants/Mno;->TELENOR_NORWAY:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_21

    sget-object v4, Lcom/sec/internal/constants/Mno;->AIRTEL:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_21

    sget-object v4, Lcom/sec/internal/constants/Mno;->ZAIN_KSA:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_21

    sget-object v4, Lcom/sec/internal/constants/Mno;->MTN_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_21

    sget-object v4, Lcom/sec/internal/constants/Mno;->ETISALAT_EG:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_21

    sget-object v4, Lcom/sec/internal/constants/Mno;->DIGI_HUNGARY:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_21

    sget-object v4, Lcom/sec/internal/constants/Mno;->XL_ID:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_21

    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v7, v4, :cond_23

    const/4 v4, 0x1

    if-eq v3, v4, :cond_21

    if-ne v3, v2, :cond_23

    :cond_21
    const/16 v16, 0x0

    goto :goto_20

    :cond_22
    move-object/from16 v7, v33

    .line 1847
    :cond_23
    :goto_20
    sget-object v4, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_25

    sget-object v4, Lcom/sec/internal/constants/Mno;->TELENOR_SWE:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_25

    sget-object v4, Lcom/sec/internal/constants/Mno;->VODAFONE_EG:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_25

    sget-object v4, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_25

    sget-object v4, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_25

    sget-object v4, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_25

    sget-object v4, Lcom/sec/internal/constants/Mno;->WE_EG:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_25

    .line 1850
    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v4

    if-nez v4, :cond_25

    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isIndia()Z

    move-result v4

    if-nez v4, :cond_25

    sget-object v4, Lcom/sec/internal/constants/Mno;->XL_ID:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_25

    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v7, v4, :cond_24

    const/4 v4, 0x1

    if-eq v3, v4, :cond_25

    if-ne v3, v2, :cond_24

    goto :goto_21

    :cond_24
    const/4 v2, 0x0

    goto :goto_22

    :cond_25
    :goto_21
    const/4 v2, 0x1

    .line 1853
    :goto_22
    iget-boolean v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    if-eqz v4, :cond_26

    if-eqz v2, :cond_26

    const/16 v16, 0x0

    .line 1857
    :cond_26
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-object/from16 v4, p2

    move/from16 v30, v5

    if-ne v4, v2, :cond_27

    sget-object v5, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v7, v5, :cond_27

    const/16 v16, 0x0

    .line 1861
    :cond_27
    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v5

    move/from16 v31, v1

    const/4 v1, 0x2

    if-nez v5, :cond_29

    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result v5

    if-nez v5, :cond_29

    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v5

    if-eqz v5, :cond_28

    goto :goto_23

    :cond_28
    move-object/from16 v1, p0

    move/from16 v32, v11

    move/from16 v5, v16

    goto :goto_25

    .line 1862
    :cond_29
    :goto_23
    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v5

    if-eqz v5, :cond_2a

    if-ne v3, v1, :cond_2a

    const/16 v5, 0xb0

    if-ne v11, v5, :cond_2a

    const-string v5, "force to set modifiable to false for 3G QCIF Video Call"

    .line 1863
    invoke-static {v14, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_24

    :cond_2a
    move/from16 v5, v16

    .line 1866
    :goto_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v32, v11

    const-string/jumbo v11, "setModifyHeader : "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setModifyHeader(Ljava/lang/String;)V

    move-object/from16 v1, p0

    :goto_25
    move/from16 v11, v22

    .line 1870
    invoke-direct {v1, v4, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->IsModifiableNeedToBeIgnored(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;Lcom/sec/internal/constants/Mno;)Z

    move-result v22

    if-eqz v22, :cond_2b

    const-string v5, "force to set modifiable to false"

    .line 1872
    invoke-static {v14, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    goto :goto_26

    :cond_2b
    move/from16 v22, v5

    .line 1875
    :goto_26
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_LOCAL:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-eq v4, v5, :cond_2c

    if-eq v4, v2, :cond_2c

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_BOTH:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-ne v4, v5, :cond_2e

    :cond_2c
    sget-object v5, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v7, v5, :cond_2d

    sget-object v5, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-ne v7, v5, :cond_2e

    :cond_2d
    const-string v5, "force to set modifiable to false when call is held!!"

    .line 1878
    invoke-static {v14, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    .line 1881
    :cond_2e
    sget-object v5, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v7, v5, :cond_2f

    const/4 v5, 0x7

    if-ne v3, v5, :cond_2f

    const-string v5, "force to set modifiable to true for Docomo"

    .line 1883
    invoke-static {v14, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    goto :goto_27

    :cond_2f
    move/from16 v5, v22

    .line 1886
    :goto_27
    sget-object v4, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    const/16 v1, 0x2c5

    if-eq v7, v4, :cond_31

    sget-object v4, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v7, v4, :cond_30

    goto :goto_28

    :cond_30
    move/from16 v4, v19

    goto :goto_29

    :cond_31
    :goto_28
    move/from16 v4, v19

    if-ne v4, v1, :cond_32

    const-string v1, "deleteTcpClientSocket() at INVITE FLUSH"

    .line 1887
    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    .line 1891
    :cond_32
    :goto_29
    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_34

    const/16 v1, 0x196

    if-eq v4, v1, :cond_33

    const/16 v1, 0x198

    if-eq v4, v1, :cond_33

    const/16 v1, 0x2c5

    if-ne v4, v1, :cond_34

    :cond_33
    const-string v1, "deleteTcpClientSocket() at INVITE FLUSH for KOR"

    .line 1892
    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    .line 1896
    :cond_34
    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_GERMANY:Lcom/sec/internal/constants/Mno;

    if-ne v7, v1, :cond_35

    const/16 v1, 0x156f

    if-ne v4, v1, :cond_35

    const-string v1, "Session Terminated by UE"

    .line 1897
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "Remote side ends the call normally."

    .line 1898
    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ENDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    const/4 v4, 0x0

    goto :goto_2a

    :cond_35
    move-object/from16 v1, p2

    .line 1903
    :goto_2a
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_38

    move-object/from16 v33, v7

    const-string v7, "Q.850"

    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_37

    const-string v7, "#:"

    .line 1904
    invoke-virtual {v9, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move/from16 v19, v5

    .line 1905
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move/from16 v22, v4

    const/16 v20, 0x0

    aget-object v4, v7, v20

    move-object/from16 v20, v2

    move-object/from16 v36, v9

    move-object/from16 v38, v25

    move/from16 v39, v27

    move-object/from16 v37, v28

    move-object/from16 v2, v29

    move/from16 v9, v35

    move-object/from16 v25, v21

    move/from16 v21, v3

    move-object/from16 v3, v24

    move-object/from16 v24, v14

    move-object/from16 v14, v26

    move/from16 v40, v17

    move-object/from16 v17, v1

    move/from16 v1, v40

    invoke-virtual {v5, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setRejectProtocol(Ljava/lang/String;)V

    .line 1906
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const/4 v5, 0x1

    aget-object v27, v7, v5

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setRejectCode(I)V

    .line 1907
    array-length v4, v7

    const/4 v5, 0x3

    if-lt v4, v5, :cond_36

    .line 1908
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const/4 v5, 0x2

    aget-object v5, v7, v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setRejectText(Ljava/lang/String;)V

    goto :goto_2c

    .line 1910
    :cond_36
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-object/from16 v5, v23

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setRejectText(Ljava/lang/String;)V

    goto :goto_2c

    :cond_37
    move-object/from16 v20, v2

    move/from16 v22, v4

    move/from16 v19, v5

    goto :goto_2b

    :cond_38
    move-object/from16 v20, v2

    move/from16 v22, v4

    move/from16 v19, v5

    move-object/from16 v33, v7

    :goto_2b
    move-object/from16 v36, v9

    move-object/from16 v38, v25

    move/from16 v39, v27

    move-object/from16 v37, v28

    move-object/from16 v2, v29

    move/from16 v9, v35

    move-object/from16 v25, v21

    move/from16 v21, v3

    move-object/from16 v3, v24

    move-object/from16 v24, v14

    move-object/from16 v14, v26

    move/from16 v40, v17

    move-object/from16 v17, v1

    move/from16 v1, v40

    .line 1914
    :goto_2c
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v4, v13}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setLocalVideoRTPPort(I)V

    .line 1915
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v4, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setLocalVideoRTCPPort(I)V

    .line 1916
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v4, v15}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setRemoteVideoRTPPort(I)V

    .line 1917
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v4, v10}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setRemoteVideoRTCPPort(I)V

    .line 1918
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v4, v12}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setLocalHoldTone(Z)V

    .line 1919
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v4, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setDtmfEvent(Ljava/lang/String;)V

    .line 1920
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    if-eqz v11, :cond_39

    const/4 v5, 0x0

    goto :goto_2d

    :cond_39
    const/4 v5, -0x1

    :goto_2d
    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVideoOrientation(I)V

    .line 1921
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v4, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAlertInfo(Ljava/lang/String;)V

    .line 1922
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move/from16 v4, v31

    invoke-virtual {v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVideoCrbtType(I)V

    .line 1923
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move/from16 v11, v32

    invoke-virtual {v3, v11}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVideoWidth(I)V

    .line 1924
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move/from16 v12, v18

    invoke-virtual {v3, v12}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVideoHeight(I)V

    .line 1925
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v3, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioRxTrackId(I)V

    .line 1926
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioBitRate(Ljava/lang/String;)V

    .line 1927
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v1, v14}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setFeatureCaps(Ljava/lang/String;)V

    .line 1928
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v1, v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioEarlyMediaDir(I)V

    .line 1929
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move/from16 v2, v39

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setDelayRinging(Z)V

    .line 1930
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getHistoryInfo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3a

    if-nez v2, :cond_3b

    .line 1931
    :cond_3a
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-object/from16 v14, v25

    invoke-virtual {v1, v14}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setHistoryInfo(Ljava/lang/String;)V

    .line 1933
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoOrientation_resip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVideoOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v24

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, v17

    move-object/from16 v1, v20

    if-ne v3, v1, :cond_3c

    .line 1936
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setRemoteHeld(Z)V

    const/4 v5, 0x0

    goto :goto_2e

    :cond_3c
    const/4 v4, 0x1

    .line 1938
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setRemoteHeld(Z)V

    .line 1941
    :goto_2e
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>()V

    move/from16 v6, v21

    .line 1942
    invoke-virtual {v1, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setCallType(I)V

    .line 1943
    iget v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v1, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setSessionID(I)V

    .line 1944
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mPeer:Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v1, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setPeerAddr(Lcom/sec/ims/util/NameAddr;)V

    .line 1945
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    .line 1946
    new-instance v3, Lcom/sec/ims/util/SipError;

    move/from16 v6, v22

    move-object/from16 v8, v36

    invoke-direct {v3, v6, v8}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setErrorCode(Lcom/sec/ims/util/SipError;)V

    .line 1947
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setParams(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    move/from16 v3, v19

    .line 1948
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setRemoteVideoCapa(Z)V

    move/from16 v14, v30

    .line 1949
    invoke-virtual {v1, v14}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setRetryAfter(I)V

    .line 1950
    iget-boolean v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setConference(Z)V

    move-object/from16 v3, v37

    .line 1951
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setCmcDeviceId(Ljava/lang/String;)V

    move-object/from16 v3, v38

    .line 1952
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setCmcCallTime(Ljava/lang/String;)V

    if-eqz p3, :cond_46

    .line 1954
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 1955
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v3

    const-string v6, "application/3gpp-ims+xml"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1958
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v3

    .line 1957
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeServiceXmlParser;->parseXml(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;

    move-result-object v3

    .line 1959
    iget-object v6, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mAction:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->INITIAL_REGISTRATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    if-ne v6, v7, :cond_3d

    const-string v0, "initial registration handling required!"

    .line 1960
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mAction:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    invoke-virtual {v1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeService(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;)V

    .line 1962
    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceType(Ljava/lang/String;)V

    .line 1963
    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceReason(Ljava/lang/String;)V

    move-object/from16 v7, v34

    .line 1964
    invoke-virtual {v1, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceUrn(Ljava/lang/String;)V

    goto/16 :goto_31

    :cond_3d
    move-object/from16 v7, v34

    .line 1965
    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->EMERGENCY_REGISTRATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    if-eq v6, v8, :cond_3f

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->EMERGENCY:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    if-ne v6, v9, :cond_3e

    goto :goto_2f

    .line 1995
    :cond_3e
    sget-object v0, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    move-object/from16 v6, v33

    if-ne v6, v0, :cond_46

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "For CMCC emergency call alternative-service handling required!"

    .line 1996
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceType(Ljava/lang/String;)V

    .line 1998
    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceReason(Ljava/lang/String;)V

    .line 1999
    invoke-virtual {v1, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceUrn(Ljava/lang/String;)V

    goto/16 :goto_31

    :cond_3f
    :goto_2f
    move-object/from16 v6, v33

    .line 1967
    iget-object v9, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v9

    iget-object v10, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v10

    invoke-interface {v9, v10}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getEmcBsIndication(I)Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v9

    .line 1968
    iget-object v10, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getSupport380PolicyByEmcbs()Z

    move-result v10

    if-eqz v10, :cond_40

    sget-object v10, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/EmcBsIndication;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v9, v10, :cond_40

    goto :goto_30

    :cond_40
    move v4, v5

    :goto_30
    const-string/jumbo v5, "urn:service:sos"

    if-eqz v4, :cond_41

    .line 1971
    :try_start_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 1972
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_41

    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mMainSosSubserviceSet:Ljava/util/Set;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 1974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alternative-service handling NOT required! serviceUrn: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " eMCBS: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    .line 1976
    :cond_41
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getSosUrnRequired()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1977
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 1978
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 1979
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alternative-service handling NOT required!, eMCBS: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 1982
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alternative-service handling required!, eMCBS: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mAction:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    invoke-virtual {v1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeService(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;)V

    .line 1984
    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceType(Ljava/lang/String;)V

    .line 1985
    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceReason(Ljava/lang/String;)V

    .line 1986
    sget-object v0, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq v6, v0, :cond_44

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_44
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mAction:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    if-ne v0, v8, :cond_45

    .line 1988
    invoke-virtual {v1, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceUrn(Ljava/lang/String;)V

    goto :goto_31

    .line 1991
    :cond_45
    invoke-virtual {v1, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceUrn(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_31

    :catch_0
    move-exception v0

    const-string v3, "notifyCallStatus: error parsing AlternativeService xml"

    .line 2003
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_46
    :goto_31
    move/from16 v2, p4

    if-lez v2, :cond_47

    const/16 v0, 0xc8

    move-object/from16 v3, p0

    .line 2008
    invoke-virtual {v3, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, v2

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_47
    move-object/from16 v3, p0

    .line 2012
    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private notifyIncomingCall(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V
    .locals 11

    const-string v0, "ResipVolteHandler"

    if-nez p1, :cond_0

    const-string p0, "notifyIncomingCall : incoming call instance is null!!"

    .line 1721
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 1725
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeBackward(I)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const/16 v3, 0x1e0

    const/16 v4, 0x280

    const/4 v5, 0x0

    if-eqz p2, :cond_7

    .line 1732
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteVideoCapa()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getLocalVideoCapa(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v5

    .line 1733
    :goto_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->width()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    .line 1734
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->height()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    .line 1736
    iget-object v6, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v6

    .line 1737
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->isFocus()Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v6, v7, :cond_3

    sget-object v7, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-eq v6, v7, :cond_3

    sget-object v7, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-eq v6, v7, :cond_3

    sget-object v7, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v6, v7, :cond_4

    .line 1738
    :cond_3
    iget-object v6, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setIsFocus(Ljava/lang/String;)V

    .line 1740
    :cond_4
    iget-object v6, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->cvoEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, -0x1

    :goto_2
    invoke-virtual {v6, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVideoOrientation(I)V

    .line 1741
    iget-object v5, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getUaProfile()Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getVideoCrbtSupportType()I

    move-result v5

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_6

    .line 1742
    iget-object v5, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->delayRinging()Z

    move-result p2

    invoke-virtual {v5, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setDelayRinging(Z)V

    :cond_6
    move v9, v1

    goto :goto_3

    :cond_7
    move v9, v5

    .line 1746
    :goto_3
    iget-object p2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {p2, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVideoWidth(I)V

    .line 1747
    iget-object p2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {p2, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVideoHeight(I)V

    .line 1749
    new-instance p2, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;

    iget-object v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    iget v5, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    iget-object v7, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mPeer:Lcom/sec/ims/util/NameAddr;

    const/4 v8, 0x0

    iget-object v10, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-object v3, p2

    move v6, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;-><init>(Lcom/sec/ims/ImsRegistration;IILcom/sec/ims/util/NameAddr;ZZLcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 1752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyIncomingCall() session: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", callType: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mIncomingCallEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private notifyUssdEvent(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V
    .locals 9

    .line 1639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyUssdEvent() session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;-><init>()V

    .line 1641
    iget v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setSessionID(I)V

    .line 1643
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;)V

    .line 1645
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    if-ne p2, v2, :cond_0

    .line 1646
    new-instance v1, Lcom/sec/ims/util/SipError;

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->reasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setErrorCode(Lcom/sec/ims/util/SipError;)V

    goto/16 :goto_4

    .line 1647
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_INDICATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    if-ne p2, v2, :cond_8

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz p3, :cond_7

    .line 1648
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1649
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "application/vnd.3gpp.ussd+xml"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0xb

    if-eqz v4, :cond_3

    .line 1650
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1652
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->getInstance()Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;

    move-result-object v4

    .line 1653
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v6

    .line 1652
    invoke-static {v4, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->-$$Nest$mparseUssdXml(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;

    move-result-object v4

    .line 1654
    iget-object v6, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->mString:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setData(Ljava/lang/Object;)V

    .line 1655
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->state()I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 1656
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setStatus(I)V

    .line 1657
    iget-boolean v4, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->hasErrorCode:Z

    if-eqz v4, :cond_2

    const-string v4, "BYE from NW has <error-code>"

    .line 1658
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 1659
    invoke-virtual {v0, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setData(Ljava/lang/Object;)V

    goto :goto_0

    .line 1662
    :cond_1
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->getVolteConstantsUssdStatus()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setStatus(I)V

    :cond_2
    :goto_0
    const/16 v4, 0x94

    .line 1668
    invoke-virtual {v0, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setDCS(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    const-string v5, "notifyCallStatus: error parsing USSD xml"

    .line 1670
    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1672
    :cond_3
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v4

    const-string v6, "application/ussd"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1673
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->rawContentsLength()I

    move-result v4

    .line 1674
    new-array v6, v4, [B

    move v7, v3

    :goto_1
    if-ge v7, v4, :cond_4

    .line 1677
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->rawContents(I)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x1

    if-le v4, v7, :cond_5

    add-int/lit8 v8, v4, -0x1

    .line 1682
    aget-byte v8, v6, v8

    if-nez v8, :cond_5

    const-string v8, "Remove invalid last byte (0x00)"

    .line 1683
    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, -0x1

    .line 1687
    :cond_5
    new-array v1, v4, [B

    .line 1688
    invoke-static {v6, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1689
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setData(Ljava/lang/Object;)V

    .line 1690
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->state()I

    move-result v1

    if-ne v1, v5, :cond_6

    .line 1691
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setStatus(I)V

    goto :goto_2

    .line 1693
    :cond_6
    invoke-virtual {v0, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setStatus(I)V

    .line 1695
    :goto_2
    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setDCS(I)V

    .line 1699
    :cond_7
    :goto_3
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->getData()[B

    move-result-object v1

    if-nez v1, :cond_8

    new-array v1, v3, [B

    .line 1700
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setData(Ljava/lang/Object;)V

    .line 1701
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setStatus(I)V

    :cond_8
    :goto_4
    if-eqz p3, :cond_9

    .line 1706
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isCSFBbySIPErrorCode(I)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    if-eq p2, v1, :cond_9

    .line 1708
    new-instance p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;

    invoke-direct {p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;-><init>()V

    .line 1709
    iget p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p2, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setSessionID(I)V

    .line 1710
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-virtual {p2, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;)V

    .line 1711
    new-instance p1, Lcom/sec/ims/util/SipError;

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->reasonPhrase()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, v0, p3}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setErrorCode(Lcom/sec/ims/util/SipError;)V

    .line 1712
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mUssdEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void

    .line 1716
    :cond_9
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mUssdEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onCallStateChange(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2191
    iget-object v1, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;

    .line 2192
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->session()J

    move-result-wide v2

    long-to-int v2, v2

    .line 2193
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->state()I

    move-result v3

    .line 2196
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2197
    iget-object v6, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-eqz v6, :cond_0

    .line 2198
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 2201
    :goto_0
    invoke-static {v6}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v7

    const-string v8, "ResipVolteHandler"

    .line 2202
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCallStateChange() session: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->state()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " calltype : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2203
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2202
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    sget-object v8, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    const/16 v9, 0x12

    const/16 v10, 0xe

    const/16 v11, 0x8

    const/4 v12, 0x6

    const/16 v13, 0xb

    const/4 v14, 0x1

    if-ne v7, v8, :cond_6

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v8

    if-ne v8, v12, :cond_6

    if-eq v3, v11, :cond_1

    if-eq v3, v13, :cond_1

    if-eq v3, v10, :cond_1

    if-ne v3, v9, :cond_6

    .line 2210
    :cond_1
    iget-object v8, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v8

    const/4 v15, 0x0

    .line 2211
    :goto_1
    :try_start_0
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v15, v5, :cond_5

    .line 2212
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2213
    iget-object v9, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    if-eqz v5, :cond_2

    const-string v9, "ResipVolteHandler"

    .line 2215
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "candidate callType :  "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v5, :cond_4

    .line 2217
    iget v9, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    if-ne v9, v12, :cond_4

    :cond_3
    const-string v4, "ResipVolteHandler"

    const-string v9, "Find conference call!!"

    .line 2220
    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v4

    iput v4, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 2223
    iput-boolean v14, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    move-object v4, v5

    goto :goto_2

    :cond_4
    add-int/lit8 v15, v15, 0x1

    const/16 v9, 0x12

    const/16 v10, 0xe

    const/16 v13, 0xb

    goto :goto_1

    .line 2227
    :cond_5
    :goto_2
    monitor-exit v8

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    :goto_3
    if-nez v4, :cond_9

    const-string v3, "ResipVolteHandler"

    .line 2231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCallStateChange: unknown sessionId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    sget-object v2, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    if-eq v7, v2, :cond_7

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-ne v7, v2, :cond_8

    :cond_7
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v1

    const-wide/16 v3, 0x2c4

    cmp-long v1, v1, v3

    if-nez v1, :cond_8

    const-string v1, "ResipVolteHandler"

    const-string v2, "onCallStateChange: notifyCallStatus if 708"

    .line 2233
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>()V

    .line 2235
    new-instance v2, Lcom/sec/ims/util/SipError;

    const/16 v3, 0x2c4

    invoke-direct {v2, v3}, Lcom/sec/ims/util/SipError;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setErrorCode(Lcom/sec/ims/util/SipError;)V

    .line 2236
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_8
    return-void

    .line 2241
    :cond_9
    sget-object v5, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v7, v5, :cond_c

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v5

    if-eq v5, v12, :cond_a

    .line 2242
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v5

    const/4 v7, 0x5

    if-ne v5, v7, :cond_c

    :cond_a
    if-eq v3, v11, :cond_b

    const/16 v5, 0xb

    if-eq v3, v5, :cond_b

    const/16 v5, 0xe

    if-eq v3, v5, :cond_b

    const/16 v5, 0x12

    if-ne v3, v5, :cond_c

    .line 2247
    :cond_b
    iput-boolean v14, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    .line 2250
    :cond_c
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v5

    const/16 v7, 0xc

    if-ne v5, v7, :cond_11

    if-ne v3, v11, :cond_e

    .line 2252
    iget-object v5, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->isIncomingCall()Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "ResipVolteHandler"

    const-string v7, "USSD indicated from network"

    .line 2253
    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_INDICATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-direct {v0, v4, v5, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->notifyUssdEvent(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V

    goto :goto_4

    .line 2256
    :cond_d
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-direct {v0, v4, v5, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->notifyUssdEvent(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V

    goto :goto_4

    :cond_e
    const/16 v5, 0xb

    if-ne v3, v5, :cond_f

    .line 2259
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_INDICATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-direct {v0, v4, v3, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->notifyUssdEvent(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V

    .line 2260
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->removeCall(I)V

    return-void

    :cond_f
    const/16 v5, 0x11

    if-ne v3, v5, :cond_10

    .line 2263
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_INDICATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-direct {v0, v4, v5, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->notifyUssdEvent(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V

    goto :goto_4

    :cond_10
    const/16 v5, 0x13

    if-ne v3, v5, :cond_11

    .line 2265
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-direct {v0, v4, v5, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->notifyUssdEvent(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V

    :cond_11
    :goto_4
    const-string v5, "ResipVolteHandler"

    .line 2270
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "audioCodec="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2271
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->audioCodecName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " remoteMmtelCapa="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2272
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteMmtelCapa()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " remoteVideoCapa="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteVideoCapa()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " height="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2273
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->height()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " width="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->width()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " isFocus="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2274
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->isFocus()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2270
    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v5, 0x30000000

    .line 2275
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2276
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->audioCodecName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2277
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteVideoCapa()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-direct {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getLocalVideoCapa(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)Z

    move-result v6

    if-eqz v6, :cond_12

    move v6, v14

    goto :goto_5

    :cond_12
    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2278
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->height()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->width()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->isFocus()Z

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2275
    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 2279
    iget-object v5, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    .line 2280
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->audioCodecName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ResipVolteHandler"

    .line 2281
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCallStateChange: audioCodec "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    iget-object v7, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v7, v14}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setisHDIcon(I)V

    .line 2286
    sget-object v7, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v5, v7, :cond_13

    sget-object v7, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-ne v5, v7, :cond_14

    :cond_13
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteMmtelCapa()Z

    move-result v7

    if-nez v7, :cond_14

    const-string v7, "ResipVolteHandler"

    const-string v8, "disable HD icon by remote doesn\'t have MMTEL capability"

    .line 2287
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    iget-object v7, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setisHDIcon(I)V

    .line 2291
    :cond_14
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 2292
    iget-object v7, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v7, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    goto :goto_6

    :cond_15
    const/4 v7, 0x4

    if-ne v3, v7, :cond_16

    .line 2294
    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v7

    if-eqz v7, :cond_16

    const-string v7, "ResipVolteHandler"

    const-string v8, "KOR model need to update audio codec as NULL"

    .line 2295
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    iget-object v7, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v7, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    :cond_16
    :goto_6
    const/4 v6, 0x3

    if-ne v3, v6, :cond_17

    .line 2301
    invoke-direct {v0, v4, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->notifyIncomingCall(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V

    const-string v0, "ResipVolteHandler"

    const-string v1, "onCallStateChange: Incoming call event"

    .line 2302
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    const/16 v6, 0xa

    if-ne v3, v6, :cond_18

    .line 2307
    iget-object v6, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v6, v14}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setIndicationFlag(I)V

    .line 2310
    :cond_18
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-direct {v0, v3, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToVolteState(II)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v6

    if-nez v6, :cond_19

    const-string v0, "ResipVolteHandler"

    .line 2312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChange: unknown event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2316
    :cond_19
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v7

    iput v7, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 2318
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->EXTEND_TO_CONFERENCE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-ne v6, v7, :cond_1a

    const-string v7, "ResipVolteHandler"

    .line 2319
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "extend to conference event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v9

    long-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v7, -0x1

    .line 2322
    invoke-direct {v0, v4, v6, v1, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->notifyCallStatus(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;I)V

    const/16 v6, 0xb

    if-ne v3, v6, :cond_1f

    .line 2327
    iget-boolean v3, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    if-eqz v3, :cond_1c

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v6

    long-to-int v3, v6

    const/16 v6, 0x320

    if-eq v3, v6, :cond_1b

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v6

    long-to-int v3, v6

    const/16 v6, 0x25e

    if-ne v3, v6, :cond_1c

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v3

    if-nez v3, :cond_1c

    :cond_1b
    const-string v0, "ResipVolteHandler"

    const-string v1, "conference call error received; don\'t remove session yet."

    .line 2328
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2329
    :cond_1c
    iget-boolean v3, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    if-eqz v3, :cond_1d

    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v5, v3, :cond_1d

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v5

    long-to-int v3, v5

    if-nez v3, :cond_1d

    const-string v1, "ResipVolteHandler"

    const-string v2, "conference call is ended; clear all call List"

    .line 2330
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v3

    .line 2332
    :try_start_1
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2333
    monitor-exit v3

    goto :goto_7

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 2334
    :cond_1d
    iget-boolean v3, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    if-eqz v3, :cond_1e

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v3

    long-to-int v1, v3

    const/16 v3, 0x1e6

    if-eq v1, v3, :cond_1f

    .line 2335
    :cond_1e
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->removeCall(I)V

    :cond_1f
    :goto_7
    return-void
.end method

.method private onCdpnInfoReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 0

    .line 2778
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 2779
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onCmcInfoReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 5

    .line 2796
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;

    const-string v0, ""

    if-eqz p1, :cond_2

    .line 2803
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2804
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2805
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 2808
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2809
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v0

    .line 2811
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;->handle()J

    move-result-wide v3

    long-to-int p1, v3

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    move-object v1, v0

    :goto_1
    const-string v2, "ResipVolteHandler"

    if-nez p1, :cond_3

    const-string p0, "ignore CmcInfo event UA is null"

    .line 2815
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2818
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    if-nez v3, :cond_4

    const-string p0, "ignore CmcInfo event without registration"

    .line 2821
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2825
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCmcInfoReceived: has AdditionalContents of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2826
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2825
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "application/cmc-info+xml"

    .line 2828
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string p0, "onCmcInfoReceived: contentType mismatch!"

    .line 2829
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2834
    :cond_5
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 2835
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$CmcInfoXmlParser;->parseXml(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;

    move-result-object p1

    .line 2836
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCmcInfoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    :catch_0
    move-exception p0

    const-string p1, "failed to parse cmc info xml!"

    .line 2841
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private onConferenceUpdate(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 9

    .line 2594
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;

    const-string v0, "ResipVolteHandler"

    .line 2596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConferenceUpdate: session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2597
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->session()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->event()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2596
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->session()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2601
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-eqz v2, :cond_0

    .line 2602
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2605
    :goto_0
    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_4

    .line 2606
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v2

    move v3, v1

    .line 2607
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 2608
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2609
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    if-eqz v4, :cond_1

    const-string v5, "ResipVolteHandler"

    .line 2611
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tempCall.mCallType :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v4, :cond_2

    .line 2613
    iget v5, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    const-string v0, "ResipVolteHandler"

    const-string v3, "Find confcall!!"

    .line 2614
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2619
    :cond_3
    :goto_2
    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_3
    if-nez v0, :cond_5

    const-string p0, "ResipVolteHandler"

    const-string p1, "onConferenceUpdate: session not found."

    .line 2623
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2627
    :cond_5
    iget v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    .line 2628
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->event()I

    move-result v3

    .line 2630
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-direct {v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>()V

    .line 2631
    iget v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeBackward(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setCallType(I)V

    .line 2632
    invoke-virtual {v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setSessionID(I)V

    .line 2633
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setParams(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 2634
    iget-boolean v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    invoke-virtual {v4, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setConference(Z)V

    const/4 v0, 0x2

    if-nez v3, :cond_8

    .line 2638
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->CONFERENCE_ADDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    .line 2640
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2641
    :goto_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participantsLength()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 2642
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participants(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2644
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    const-string v3, "ResipVolteHandler"

    .line 2645
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConferenceUpdate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " added.  partid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2646
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->participantid()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2645
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->status()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getParticipantStatus(I)I

    move-result v3

    .line 2648
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->sessionId()J

    move-result-wide v5

    long-to-int v5, v5

    .line 2649
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->participantid()J

    move-result-wide v7

    long-to-int v1, v7

    invoke-virtual {v4, v6, v1, v5, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->addUpdatedParticipantsList(Ljava/lang/String;III)V

    if-ne v3, v0, :cond_7

    const-string v1, "ResipVolteHandler"

    .line 2653
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") join to conference"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->CONFERENCE_ADDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    invoke-direct {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    .line 2656
    invoke-virtual {v1, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setSessionID(I)V

    .line 2657
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    const/4 v2, 0x1

    if-ne v3, v2, :cond_a

    .line 2661
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->CONFERENCE_REMOVED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    .line 2663
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2664
    :goto_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participantsLength()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 2665
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participants(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2667
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    const-string v1, "ResipVolteHandler"

    .line 2668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConferenceUpdate: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " removed."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->participantid()J

    move-result-wide v5

    long-to-int v3, v5

    .line 2670
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->sessionId()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->status()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getParticipantStatus(I)I

    move-result v0

    .line 2669
    invoke-virtual {v4, v1, v3, v5, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->addUpdatedParticipantsList(Ljava/lang/String;III)V

    goto :goto_7

    :cond_a
    if-ne v3, v0, :cond_d

    const-string v0, "ResipVolteHandler"

    const-string v2, "onConferenceUpdate: CONF_PARTICIPANT_UPDATED"

    .line 2673
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->CONFERENCE_PARTICIPANTS_UPDATED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    .line 2676
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2677
    :goto_8
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participantsLength()I

    move-result v3

    if-ge v1, v3, :cond_b

    .line 2678
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participants(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2680
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    .line 2681
    new-instance v1, Lcom/sec/ims/util/NameAddr;

    const-string v3, ""

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    invoke-virtual {v4, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setPeerAddr(Lcom/sec/ims/util/NameAddr;)V

    .line 2682
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->participantid()J

    move-result-wide v5

    long-to-int v3, v5

    .line 2683
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->sessionId()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->status()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getParticipantStatus(I)I

    move-result v6

    .line 2682
    invoke-virtual {v4, v1, v3, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->addUpdatedParticipantsList(Ljava/lang/String;III)V

    const-string v1, "ResipVolteHandler"

    .line 2684
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConferenceUpdate: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " update id . "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2685
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->participantid()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2684
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2691
    :cond_c
    invoke-virtual {v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    .line 2692
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v4}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void

    :cond_d
    const-string p0, "ResipVolteHandler"

    const-string p1, "onConferenceUpdate: unknown event. ignore."

    .line 2688
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onDedicatedBearerEventReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 5

    const-string v0, "ResipVolteHandler"

    const-string v1, "onDedicatedBearerEventReceived:"

    .line 2539
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;

    .line 2542
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;

    .line 2543
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;->bearerState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertDedicatedBearerState(I)I

    move-result v1

    .line 2544
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;->qci()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;->session()J

    move-result-wide v3

    long-to-int p1, v3

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;-><init>(III)V

    .line 2545
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onDialogEventReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 6

    .line 2718
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DialogEvent;

    const-string v0, ""

    if-eqz p1, :cond_2

    .line 2724
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DialogEvent;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2725
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2726
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 2729
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2730
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v0

    .line 2733
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DialogEvent;->handle()J

    move-result-wide v3

    long-to-int p1, v3

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    move-object v1, v0

    :goto_1
    const-string v2, "ResipVolteHandler"

    if-nez p1, :cond_3

    const-string p0, "ignore dialog event UA is null"

    .line 2737
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2741
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    if-nez v3, :cond_4

    const-string p0, "ignore dialog event without registration"

    .line 2744
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2748
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDialogEventReceived: has AdditionalContents of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2749
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2748
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "application/dialog-info+xml"

    .line 2751
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string p0, "onDialogEventReceived: contentType mismatch!"

    .line 2752
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2758
    :cond_5
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    .line 2759
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_7

    .line 2760
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_6

    goto :goto_2

    .line 2764
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->getInstance()Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->parseDialogInfoXml(Ljava/lang/String;)Lcom/sec/ims/DialogEvent;

    move-result-object p1

    goto :goto_3

    .line 2761
    :cond_7
    :goto_2
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->getInstance()Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    move-result-object v0

    .line 2762
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    .line 2761
    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->parseDialogInfoXml(Ljava/lang/String;I)Lcom/sec/ims/DialogEvent;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2771
    :goto_3
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/DialogEvent;->setRegId(I)V

    .line 2772
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/DialogEvent;->setPhoneId(I)V

    .line 2774
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "failed to parse dialog xml!"

    .line 2767
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private onDtmfInfo(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 6

    .line 2783
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;

    .line 2784
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->event()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->volume()J

    move-result-wide v2

    long-to-int v2, v2

    .line 2785
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->duration()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->endbit()J

    move-result-wide v4

    long-to-int p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;-><init>(IIII)V

    .line 2786
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDtmfEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onHoldResumeResponse(Lcom/sec/internal/helper/AsyncResult;Z)V
    .locals 3

    .line 2136
    iget-object p0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 2138
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->session()I

    move-result p1

    .line 2139
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v0

    .line 2140
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->reason()I

    move-result p0

    .line 2142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHoldResumeResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p2, "hold"

    goto :goto_0

    :cond_0
    const-string p2, "resume"

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " session="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " success="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reason="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResipVolteHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onInfoResponse(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 4

    .line 2168
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;-><init>()V

    .line 2169
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    .line 2170
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->result()I

    move-result v1

    if-nez v1, :cond_0

    .line 2173
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;)V

    goto :goto_0

    .line 2175
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;)V

    .line 2178
    :goto_0
    new-instance v1, Lcom/sec/ims/util/SipError;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->sipError()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->errorStr()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setErrorCode(Lcom/sec/ims/util/SipError;)V

    .line 2179
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mUssdEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onMakeCallResponse(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 8

    const-string v0, "ResipVolteHandler"

    const-string v1, "onMakeCallResponse:"

    .line 2105
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    iget-object v1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 2109
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->session()I

    move-result v2

    .line 2110
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v3

    .line 2111
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->reason()I

    move-result v4

    .line 2113
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    .line 2115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMakeCallResponse: nameAddr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mPeer:Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2116
    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " session="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " success="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2115
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    iput v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    .line 2121
    iput-object v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 2123
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->sipCallId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2124
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->sipCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setSipCallId(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-ne v3, v0, :cond_1

    .line 2127
    iget-object p0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->stopCamera()V

    goto :goto_0

    .line 2129
    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->addCall(ILcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)V

    .line 2132
    :goto_0
    iget-object p0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private onModifyCall(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 9

    .line 2341
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;

    .line 2342
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->session()J

    move-result-wide v0

    long-to-int v0, v0

    .line 2343
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->oldType()J

    move-result-wide v1

    long-to-int v1, v1

    .line 2344
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->newType()J

    move-result-wide v2

    long-to-int v2, v2

    .line 2345
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->isSdToSdPull()Z

    move-result p1

    .line 2347
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v3

    const-string v4, "ResipVolteHandler"

    if-nez v3, :cond_0

    .line 2349
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onModifyCall: unknown sessionId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2353
    :cond_0
    iget-object v5, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    .line 2355
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onModifyCall() session: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", oldCallType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", newCallType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isSdToSdPull: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    invoke-static {v1, v2}, Lcom/sec/internal/helper/ImsCallUtil;->isUpgradeCall(II)Z

    move-result v6

    const/16 v7, 0x25b

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    iget-object v8, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 2359
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v8

    aget v6, v6, v8

    sget v8, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    if-eq v6, v8, :cond_1

    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    iget-object v8, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 2361
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v8

    aget v6, v6, v8

    sget v8, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne v6, v8, :cond_2

    :cond_1
    const/16 v6, 0x9

    .line 2363
    invoke-direct {p0, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCall(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2366
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rejecting modify request since TTY call("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    iget-object v2, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") exists"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    invoke-virtual {p0, v0, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->rejectModifyCallType(II)I

    return-void

    .line 2372
    :cond_3
    sget-object v6, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_4

    const/4 v6, 0x1

    if-ne v1, v6, :cond_4

    const/4 v6, 0x3

    if-ne v2, v6, :cond_4

    const-string p1, "onModifyCall: ATT - RX upgrade to videoshare with recvonly -> automatically reject with audio only 200 OK"

    .line 2374
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->replyModifyCallType(IIII)I

    return-void

    .line 2383
    :cond_4
    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v5, v1, :cond_5

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isOneWayVideoCall(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "onModifyCall: RJIL - network does not support 1-way videoreject with 603"

    .line 2384
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    invoke-virtual {p0, v0, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->rejectModifyCallType(II)I

    return-void

    .line 2393
    :cond_5
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeBackward(I)I

    move-result v1

    iput v1, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 2395
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>()V

    .line 2396
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->MODIFY_REQUESTED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    invoke-virtual {v1, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    .line 2397
    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setCallType(I)V

    .line 2398
    invoke-virtual {v1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setSessionID(I)V

    .line 2399
    invoke-virtual {v1, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setIsSdToSdPull(Z)V

    .line 2400
    iget-object p1, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v1, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setParams(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 2401
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onNewIncomingCall(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 12

    .line 2406
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;

    .line 2408
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->handle()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    if-nez v0, :cond_0

    const-string p0, "onNewIncomingCall: UserAgent not found."

    .line 2411
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "acquire wakelock for MT call by 1 sec"

    .line 2415
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const/4 v3, 0x1

    const-string v4, "ImsService"

    .line 2417
    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    .line 2418
    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2420
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->peeruri()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2421
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->peeruri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2424
    :goto_0
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    new-instance v4, Lcom/sec/ims/util/NameAddr;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->displayName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    invoke-direct {v3, v0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/NameAddr;)V

    .line 2425
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->session()J

    move-result-wide v4

    long-to-int v2, v4

    iput v2, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    .line 2426
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->callType()I

    move-result v2

    iput v2, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 2428
    iget-object v2, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 2430
    sget-object v4, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_2

    iget-object v2, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->isOutOfService(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2431
    iget-object v2, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v2

    const-string v4, "Delete TCP socket when out of service"

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x0

    .line 2432
    iget-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->setOutOfService(ZI)V

    .line 2433
    iget-object v2, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    .line 2436
    :cond_2
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-direct {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;-><init>()V

    .line 2437
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAsIncomingCall()V

    .line 2439
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->referredBy()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2440
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->referredBy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setReferredBy(Ljava/lang/String;)V

    .line 2442
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->sipCallId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2443
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->sipCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setSipCallId(Ljava/lang/String;)V

    .line 2445
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->rawSipmsg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2446
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->rawSipmsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setSipInviteMsg(Ljava/lang/String;)V

    .line 2448
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->terminatingId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 2449
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->terminatingId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setTerminatingId(Lcom/sec/ims/util/ImsUri;)V

    .line 2451
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->numberPlus()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 2452
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->numberPlus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setNumberPlus(Ljava/lang/String;)V

    .line 2454
    :cond_7
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->replaces()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 2455
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->replaces()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setReplaces(Ljava/lang/String;)V

    .line 2457
    :cond_8
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->photoRing()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 2458
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->photoRing()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setPhotoRing(Ljava/lang/String;)V

    .line 2460
    :cond_9
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->alertInfo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 2461
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->alertInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAlertInfo(Ljava/lang/String;)V

    .line 2463
    :cond_a
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->historyInfo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 2464
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->historyInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setHistoryInfo(Ljava/lang/String;)V

    .line 2467
    :cond_b
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->verstat()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 2468
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->verstat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVerstat(Ljava/lang/String;)V

    .line 2471
    :cond_c
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->organization()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 2472
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->organization()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setOrganization(Ljava/lang/String;)V

    .line 2475
    :cond_d
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->cmcDeviceId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 2476
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->cmcDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setCmcDeviceId(Ljava/lang/String;)V

    .line 2479
    :cond_e
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->composerData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;

    move-result-object v4

    if-eqz v4, :cond_14

    const-string v4, "onNewIncomingCall: has composer data"

    .line 2480
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->composerData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;

    move-result-object v4

    .line 2482
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2483
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->image()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 2484
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->image()Ljava/lang/String;

    move-result-object v6

    const-string v7, "image"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    :cond_f
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->subject()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 2488
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->subject()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "subject"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2491
    :cond_10
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->latitude()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 2492
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->latitude()Ljava/lang/String;

    move-result-object v6

    const-string v7, "latitude"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2495
    :cond_11
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->longitude()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 2496
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->longitude()Ljava/lang/String;

    move-result-object v6

    const-string v7, "longitude"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    :cond_12
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->radius()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 2500
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->radius()Ljava/lang/String;

    move-result-object v6

    const-string v7, "radius"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2502
    :cond_13
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->importance()Z

    move-result v4

    const-string v6, "importance"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2503
    invoke-virtual {v2, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setComposerData(Landroid/os/Bundle;)V

    .line 2506
    :cond_14
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->hasDiversion()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setHasDiversion(Z)V

    .line 2507
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->cmcEdCallSlot()J

    move-result-wide v4

    long-to-int p1, v4

    invoke-virtual {v2, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setCmcEdCallSlot(I)V

    .line 2508
    iput-object v2, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 2510
    iget p1, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-direct {p0, p1, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->addCall(ILcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)V

    .line 2511
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIncomingCall: sessionId "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " peer "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mPeer:Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2512
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2511
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    iget v6, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    iget v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 2515
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v7

    iget-object v8, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mPeer:Lcom/sec/ims/util/NameAddr;

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;-><init>(Lcom/sec/ims/ImsRegistration;IILcom/sec/ims/util/NameAddr;ZZLcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 2518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyIncomingCall() pre Alerting session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mIncomingCallEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onReferReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 3

    .line 2696
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;

    .line 2699
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;->handle()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2701
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReferReceived: unknown handle "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;->handle()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResipVolteHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2705
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;->session()J

    move-result-wide v0

    long-to-int p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->acceptCallTranfer(IZILjava/lang/String;)V

    return-void
.end method

.method private onReferStatus(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 4

    .line 2709
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;

    .line 2711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReferStatus: session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2712
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;->session()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " respCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;->statusCode()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    .line 2711
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/ReferStatus;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;->session()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;->statusCode()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-direct {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ReferStatus;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onRrcConnectionEventReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string v1, "onRrcConnectionEventReceived:"

    .line 2559
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;

    .line 2563
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;->event()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2564
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;->REJECTED:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    invoke-direct {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 2566
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;->event()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2567
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;->TIMER_EXPIRED:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    invoke-direct {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onRtpLossRateNoti(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 6

    const-string v0, "ResipVolteHandler"

    const-string v1, "onRtpLossRateNoti:"

    .line 2550
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;

    .line 2553
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;->interval()J

    move-result-wide v1

    long-to-int v1, v1

    .line 2554
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;->lossrate()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;->jitter()F

    move-result v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;->notification()J

    move-result-wide v4

    long-to-int p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;-><init>(IFFI)V

    .line 2555
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onTextInfo(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 4

    .line 2790
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;

    .line 2791
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;->len()J

    move-result-wide v2

    long-to-int p1, v2

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;-><init>(ILjava/lang/String;I)V

    .line 2792
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTextEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onUpdateAudioInterfaceResponse(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 1

    const-string p0, "ResipVolteHandler"

    const-string v0, "onUpdateAudioInterfaceResponse:"

    .line 2184
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    iget-object p0, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 2187
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private removeCall(I)V
    .locals 4

    .line 2981
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    const-string v1, "ResipVolteHandler"

    .line 2982
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove Call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2984
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private sendSIPMSGInfo(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 2

    .line 3143
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;

    .line 3144
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->sipMessage()Ljava/lang/String;

    move-result-object v0

    .line 3145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3148
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->direction()I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    .line 3151
    :cond_1
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;

    invoke-direct {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;-><init>(Ljava/lang/String;Z)V

    .line 3152
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mSIPMSGNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private startNWayConferenceCall(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/handler/secims/UserAgent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 993
    invoke-direct {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v2

    move/from16 v3, p5

    .line 994
    invoke-direct {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v4

    if-eqz v2, :cond_3

    if-nez v4, :cond_0

    goto/16 :goto_0

    .line 1000
    :cond_0
    new-instance v14, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    invoke-static/range {p2 .. p2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    const-string v4, ""

    move-object/from16 v5, p1

    invoke-direct {v14, v5, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    move/from16 v2, p6

    .line 1001
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v4

    .line 1002
    iput v4, v14, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    const/4 v2, 0x1

    .line 1003
    iput-boolean v2, v14, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    .line 1004
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-direct {v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;-><init>()V

    .line 1006
    iput-object v6, v14, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 1007
    new-instance v13, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v13, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1008
    iput-object v13, v14, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mLock:Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x3

    .line 1012
    invoke-virtual {v0, v2, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p2

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p3

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v12, p13

    move-object v15, v13

    move-object/from16 v13, p14

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    .line 1010
    invoke-virtual/range {v0 .. v14}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mergeCall(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Landroid/os/Message;)V

    const-wide/16 v0, 0x7530

    .line 1014
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v15, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "ResipVolteHandler"

    if-nez v0, :cond_1

    :try_start_1
    const-string/jumbo v0, "startNWayConferenceCall: timeout."

    .line 1015
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, -0x1

    return v0

    :cond_1
    move-object/from16 v0, v17

    .line 1022
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    if-eqz v2, :cond_2

    .line 1023
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1024
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startNWayConferenceCall: call failed. reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 1026
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->reason()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1024
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    .line 1030
    :cond_2
    iget v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0

    :cond_3
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private startNWayConferenceCall(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/handler/secims/UserAgent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1040
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    invoke-static/range {p2 .. p2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    const-string v3, ""

    move-object/from16 v4, p1

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    move/from16 v2, p5

    .line 1041
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v7

    .line 1042
    iput v7, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    const/4 v2, 0x1

    .line 1043
    iput-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    .line 1044
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-direct {v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;-><init>()V

    .line 1046
    iput-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 1047
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1048
    iput-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mLock:Ljava/util/concurrent/CountDownLatch;

    .line 1049
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v5, p4

    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, [Ljava/lang/String;

    const/4 v2, 0x3

    .line 1052
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    move-object/from16 v6, p2

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p3

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    .line 1050
    invoke-virtual/range {v4 .. v16}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->conference([Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V

    const-wide/16 v4, 0x7530

    const/4 v0, -0x1

    .line 1054
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "ResipVolteHandler"

    if-nez v2, :cond_0

    :try_start_1
    const-string/jumbo v1, "startNWayConferenceCall: timeout."

    .line 1055
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 1062
    :cond_0
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    if-eqz v2, :cond_1

    .line 1063
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startNWayConferenceCall: call failed. reason "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 1066
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->reason()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1064
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1070
    :cond_1
    iget v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    :catch_0
    return v0
.end method


# virtual methods
.method public DeleteTcpSocket(II)I
    .locals 2

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteTcpSocket: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ResipVolteHandler"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "DeleteTcpSocket: session not found."

    .line 777
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 781
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    const/4 p0, 0x0

    return p0
.end method

.method public addParticipantToNWayConferenceCall(II)I
    .locals 2

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addParticipantToNWayConferenceCall ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") participantId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "No conference session to add a participant"

    .line 1080
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1084
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateConfCall(IIILjava/lang/String;)V

    return v0
.end method

.method public addParticipantToNWayConferenceCall(ILjava/lang/String;)I
    .locals 2

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addParticipantToNWayConferenceCall ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") participant "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    const-string p0, "No conference session to add a participant"

    .line 1110
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1114
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateConfCall(IIILjava/lang/String;)V

    return v1
.end method

.method public addUserForConferenceCall(ILcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;Z)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUserForConferenceCall: sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " create "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ResipVolteHandler"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v2

    const/4 v5, -0x1

    if-nez v2, :cond_0

    const-string v0, "addUserForConferenceCall: session not found."

    .line 1236
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    const/4 v4, 0x0

    .line 1240
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1241
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    move-object v11, v4

    .line 1243
    invoke-direct {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->checkConfererenceCallData(Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;)I

    move-result v4

    if-ne v4, v5, :cond_2

    return v5

    .line 1246
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSupportPrematureEnd()Z

    move-result v16

    .line 1247
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getCallType()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v7

    .line 1248
    iget-object v4, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1250
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getParticipants()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getParticipants()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getConferenceUri()Ljava/lang/String;

    move-result-object v6

    .line 1251
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->isSubscriptionEnabled()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSubscribeDialogType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriType()Ljava/lang/String;

    move-result-object v12

    .line 1252
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getRemoveReferUriType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriAsserted()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getUseAnonymousUpdate()Ljava/lang/String;

    move-result-object v15

    move/from16 v10, p1

    .line 1249
    invoke-virtual/range {v4 .. v16}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->extendToConfCall([Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public answerCallWithCallType(II)I
    .locals 1

    .line 856
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result p2

    const-string v0, "0"

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->answerCall(IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public answerCallWithCallType(IILjava/lang/String;)I
    .locals 0

    .line 861
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->answerCall(IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public cancelTransferCall(I)I
    .locals 2

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelTransferCall: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "cancelTransferCall: session not found."

    .line 1277
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1281
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->cancelTransferCall(ILandroid/os/Message;)V

    const/4 p0, 0x0

    return p0
.end method

.method public clearAllCallInternal(I)V
    .locals 0

    .line 1595
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->clearAllCallInternal(I)V

    return-void
.end method

.method public endCall(IILcom/sec/internal/constants/ims/SipReason;)I
    .locals 6

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endCall: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " reason "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ResipVolteHandler"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "endCall: session not found."

    .line 792
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 795
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    if-eqz p3, :cond_c

    .line 797
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endCall: reason : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result p2

    const-string v1, "deleteTcpClientSocket() at INVITE FLUSH"

    const-string v2, "INVITE FLUSH"

    const-string v3, "RRC CONNECTION REJECT"

    const-string v4, "deleteTcpClientSocket()"

    if-eqz p2, :cond_4

    .line 799
    sget-object p2, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_2

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object p2

    const-string v5, "PS BARRING"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 800
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 801
    :cond_1
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    .line 804
    :cond_2
    sget-object p2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p1, p2, :cond_3

    sget-object p2, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_c

    :cond_3
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 805
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    goto/16 :goto_2

    .line 808
    :cond_4
    sget-object p2, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_5

    .line 809
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SRVCC"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 810
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    goto/16 :goto_2

    .line 813
    :cond_5
    sget-object p2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_7

    .line 814
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TIMER VZW EXPIRED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 815
    :cond_6
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    goto :goto_2

    .line 818
    :cond_7
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result p2

    if-nez p2, :cond_b

    sget-object p2, Lcom/sec/internal/constants/Mno;->ORANGE_MOLDOVA:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_8

    goto :goto_1

    .line 823
    :cond_8
    sget-object p2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p1, p2, :cond_a

    sget-object p2, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_9

    goto :goto_0

    .line 828
    :cond_9
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 829
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 830
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    goto :goto_2

    .line 824
    :cond_a
    :goto_0
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SESSIONPROGRESS TIMEOUT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 825
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    goto :goto_2

    .line 819
    :cond_b
    :goto_1
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SIP response time-out"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 820
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    .line 835
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, p0, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->endCall(ILcom/sec/internal/constants/ims/SipReason;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected getEmergencyUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 1

    .line 1629
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    const/16 v0, 0xf

    .line 1630
    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentOnPdn(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method protected getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 0

    .line 1634
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 1635
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method protected getUa(ILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 3

    .line 1603
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 1606
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    .line 1607
    array-length p1, p0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 1611
    :cond_0
    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    aget-object v1, p0, v0

    if-nez v1, :cond_1

    goto :goto_1

    .line 1616
    :cond_1
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    if-ne v2, p3, :cond_2

    .line 1617
    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p2
.end method

.method protected getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 0

    .line 1624
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 1625
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method public handleCmcCsfb(I)I
    .locals 2

    .line 1560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCmcCsfb(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "handleCmcCsfb(): session not found."

    .line 1563
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1566
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->handleCmcCsfb(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public handleDtmf(IIIILandroid/os/Message;)I
    .locals 6

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDtmf: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "sendDtmf: session not found."

    .line 910
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->handleDtmf(IIIILandroid/os/Message;)V

    const/4 p0, 0x0

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 3053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: evt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 3137
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onCmcInfoReceived(Lcom/sec/internal/helper/AsyncResult;)V

    goto/16 :goto_0

    .line 3133
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->sendSIPMSGInfo(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto/16 :goto_0

    .line 3105
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onTextInfo(Lcom/sec/internal/helper/AsyncResult;)V

    goto/16 :goto_0

    .line 3101
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onDtmfInfo(Lcom/sec/internal/helper/AsyncResult;)V

    goto/16 :goto_0

    .line 3093
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onRrcConnectionEventReceived(Lcom/sec/internal/helper/AsyncResult;)V

    goto/16 :goto_0

    .line 3089
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onDedicatedBearerEventReceived(Lcom/sec/internal/helper/AsyncResult;)V

    goto/16 :goto_0

    .line 3129
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onRtpLossRateNoti(Lcom/sec/internal/helper/AsyncResult;)V

    goto/16 :goto_0

    .line 3097
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onCdpnInfoReceived(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 3077
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onModifyCall(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 3121
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onDialogEventReceived(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 3117
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onReferStatus(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 3113
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onReferReceived(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 3109
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onConferenceUpdate(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 3085
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onNewIncomingCall(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 3073
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onCallStateChange(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 3125
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onInfoResponse(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 3069
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onHoldResumeResponse(Lcom/sec/internal/helper/AsyncResult;Z)V

    goto :goto_0

    .line 3065
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onHoldResumeResponse(Lcom/sec/internal/helper/AsyncResult;Z)V

    goto :goto_0

    .line 3081
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 3058
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onMakeCallResponse(Lcom/sec/internal/helper/AsyncResult;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6e
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public holdCall(I)I
    .locals 5

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "holdCall: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "holdCall: session not found."

    .line 924
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->dumpCall()V

    const/4 p0, -0x1

    return p0

    .line 930
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setIndicationFlag(I)V

    const v1, 0x30000003

    .line 931
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HoldCall,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 932
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->holdCall(ILandroid/os/Message;)V

    return v2
.end method

.method public init()V
    .locals 3

    .line 358
    invoke-super {p0}, Lcom/sec/internal/ims/core/handler/BaseHandler;->init()V

    .line 359
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x65

    const/4 v2, 0x0

    .line 361
    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerNewIncomingCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerCallStatusEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x6a

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerModifyCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 364
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x66

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerConferenceUpdateEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 365
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x67

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerReferReceivedEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 366
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x68

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerReferStatusEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x69

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerDialogEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 368
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x6b

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerCdpnInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x6e

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerDedicatedBearerEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 370
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x6f

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x6c

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerRtpLossRateNoti(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x70

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerDtmfEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x71

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerTextEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x72

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerSIPMSGEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x73

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerCmcInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 377
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 378
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    .line 379
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRttMode:[I

    .line 380
    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAutomaticMode:[Z

    .line 381
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mOutOfService:[Z

    .line 382
    sget v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 383
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRttMode:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 384
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAutomaticMode:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 386
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AudioInterfaceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioInterfaceThread:Landroid/os/HandlerThread;

    .line 387
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 388
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioInterfaceThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioInterfaceHandler:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;

    return-void
.end method

.method public makeCall(ILcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;Ljava/util/HashMap;I)I
    .locals 28
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

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 656
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeCall: regId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " additionalSipHeaders="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v15, "ResipVolteHandler"

    invoke-static {v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getDestinationUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    .line 660
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getCallType()I

    move-result v6

    .line 662
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->isEmergency()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0xc

    if-ne v6, v10, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    if-eqz v7, :cond_1

    if-gez v1, :cond_1

    const-string v1, "makeCall: using emergency UA."

    .line 668
    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getEmergencyUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    goto :goto_1

    .line 671
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    :goto_1
    const/16 v24, -0x1

    if-nez v1, :cond_2

    const-string v0, "makeCall: UserAgent not found."

    .line 675
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v24

    .line 679
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 680
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v12, v7

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    .line 683
    :goto_2
    new-instance v13, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v13, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 684
    new-instance v7, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getDialingNumber()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v1, v4, v14}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    .line 685
    invoke-direct {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v6

    iput v6, v7, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 686
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-direct {v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;-><init>()V

    .line 688
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/ims/settings/ImsProfile;->getAudioCodec()Ljava/lang/String;

    move-result-object v14

    .line 689
    iget-object v11, v7, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v11}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v11

    .line 691
    sget-object v8, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v11, v8, :cond_4

    invoke-direct {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->isOutOfService(I)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "Delete TCP socket when out of service"

    .line 692
    invoke-static {v15, v3, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 693
    invoke-virtual {v0, v9, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->setOutOfService(ZI)V

    .line 694
    iget-object v8, v7, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    .line 698
    :cond_4
    sget-object v8, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v11, v8, :cond_5

    sget-object v8, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v11, v8, :cond_9

    :cond_5
    const-string v8, "EVS"

    invoke-virtual {v14, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 699
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/settings/ImsProfile;->getEvsBandwidthSend()Ljava/lang/String;

    move-result-object v8

    const-string v11, "fb"

    .line 700
    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v8, "EVS-FB"

    .line 701
    invoke-virtual {v6, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string/jumbo v11, "swb"

    .line 702
    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v8, "EVS-SWB"

    .line 703
    invoke-virtual {v6, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string/jumbo v11, "wb"

    .line 704
    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v8, "EVS-WB"

    .line 705
    invoke-virtual {v6, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    const-string v11, "nb"

    .line 706
    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "EVS-NB"

    .line 707
    invoke-virtual {v6, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    const-string v8, "AMR-WB"

    .line 709
    invoke-virtual {v14, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    const-string v11, "AMRBE-WB"

    invoke-virtual {v14, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_3

    :cond_a
    const-string v8, "AMR-NB"

    .line 712
    invoke-virtual {v6, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    goto :goto_4

    .line 710
    :cond_b
    :goto_3
    invoke-virtual {v6, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    .line 714
    :cond_c
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getCmcEdCallSlot()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setCmcEdCallSlot(I)V

    .line 716
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/settings/ImsProfile;->getSupportClir()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getCli()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v25, v8

    goto :goto_5

    :cond_d
    const/16 v25, 0x0

    .line 717
    :goto_5
    iput-object v6, v7, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 718
    iput-object v13, v7, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mLock:Ljava/util/concurrent/CountDownLatch;

    .line 720
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeCall: Do device support 3gpp 24.390 USSI?"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/settings/ImsProfile;->getSupport3gppUssi()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 720
    invoke-static {v15, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_e

    .line 722
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getSupport3gppUssi()Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x1

    goto :goto_6

    :cond_e
    move v6, v9

    .line 724
    :goto_6
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    iget v10, v7, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getLetteringText()Ljava/lang/String;

    move-result-object v11

    .line 725
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getDialingNumber()Ljava/lang/String;

    move-result-object v26

    if-eqz v6, :cond_f

    .line 726
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getDialingNumber()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v8, v9}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->createUssdContents(ILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v6

    move-object/from16 v27, v6

    goto :goto_7

    :cond_f
    const/16 v27, 0x0

    .line 727
    :goto_7
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getPEmergencyInfo()Ljava/lang/String;

    move-result-object v14

    .line 728
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getAlertInfo()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getLteEpsOnlyAttached()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getP2p()Ljava/util/List;

    move-result-object v18

    .line 729
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getCmcBoundSessionId()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getComposerData()Landroid/os/Bundle;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getReplaceCallId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getCmcEdCallSlot()I

    move-result v22

    const/4 v6, 0x1

    .line 730
    invoke-virtual {v0, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object v6, v1

    move-object v0, v7

    move-object v7, v4

    move-object v8, v12

    move v9, v10

    move-object v10, v11

    move-object/from16 v11, v26

    move-object/from16 v12, v27

    move-object v4, v13

    move-object/from16 v13, v25

    move-object v5, v15

    move-object/from16 v15, p3

    .line 724
    invoke-virtual/range {v6 .. v23}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->makeCall(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/List;ILandroid/os/Bundle;Ljava/lang/String;ILandroid/os/Message;)V

    const-wide/16 v6, 0x7530

    .line 733
    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v0, "makeCall: timeout."

    .line 734
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v24

    .line 741
    :cond_10
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    if-eqz v4, :cond_11

    .line 742
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v4

    if-eqz v4, :cond_11

    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeCall: call failed. reason "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->reason()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->reason()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setCallSetupError(I)V

    return v24

    :cond_11
    const v2, 0x30000001

    .line 747
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MakeCall,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 749
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    if-lez v2, :cond_12

    .line 750
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object v1

    .line 751
    invoke-static {v1}, Lcom/sec/internal/log/CmcPingTestLogger;->ping(Ljava/util/List;)V

    .line 753
    :cond_12
    iget v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    return v0

    :catch_0
    return v24
.end method

.method public modifyCallType(III)I
    .locals 3

    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallType(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "modifyCallType(): session not found."

    .line 1140
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    const p1, 0x30000005

    .line 1144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModifyCall,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1146
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, p0, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->modifyCallType(III)V

    const/4 p0, 0x0

    return p0
.end method

.method public proceedIncomingCall(ILjava/util/HashMap;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proceedIncomingCall: sessoinId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "proceedIncomingCall: session not found."

    .line 845
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    const p1, 0x30000002

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IncomingCall,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 850
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->progressIncomingCall(ILjava/util/HashMap;)V

    const/4 p0, 0x0

    return p0
.end method

.method public publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 9

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publishDialog: regId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v2

    const/4 p0, -0x1

    if-nez v2, :cond_0

    const-string p1, "publishDialog: UserAgent not found."

    .line 1350
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 1353
    :cond_0
    invoke-static {p2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "publishUri Uri is wrong"

    .line 1356
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 1360
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->publishDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public pullingCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;Ljava/util/List;)I
    .locals 11
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

    move-object v0, p0

    move-object/from16 v4, p5

    .line 1288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pullingCall: regId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " taruri "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " msisdn "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " targetDialog "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1290
    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "ResipVolteHandler"

    .line 1288
    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    const/4 v8, -0x1

    if-nez v1, :cond_0

    const-string v0, "pullingCall: UserAgent not found."

    .line 1294
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 1297
    :cond_0
    invoke-static {p2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "Pulling Uri is wrong"

    .line 1300
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 1303
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    .line 1304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "targetDialog.getCallType()= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mno="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->isVideoPortZero()Z

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->isPullAvailable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1304
    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "VZW"

    .line 1307
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 1308
    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->isVideoPortZero()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->isPullAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1309
    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v3

    if-ne v3, v5, :cond_2

    const/4 v3, 0x2

    .line 1310
    invoke-virtual {v4, v3}, Lcom/sec/ims/Dialog;->setCallType(I)V

    .line 1311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recover call type= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_2
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v9, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1315
    new-instance v10, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-object v3, p3

    invoke-direct {v10, v1, v2, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    .line 1316
    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v3

    iput v3, v10, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 1317
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-direct {v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;-><init>()V

    const-string v5, "AMR-WB"

    .line 1318
    invoke-virtual {v3, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    .line 1319
    iput-object v3, v10, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 1320
    iput-object v9, v10, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mLock:Ljava/util/concurrent/CountDownLatch;

    .line 1322
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    .line 1323
    invoke-virtual {p0, v5, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v0, v1

    move-object v1, v3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 1322
    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->pullingCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;Ljava/util/List;Landroid/os/Message;)V

    const-wide/16 v0, 0x7530

    .line 1326
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pullingCall: timeout."

    .line 1327
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    .line 1334
    :cond_3
    iget-object v0, v10, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    if-eqz v0, :cond_4

    .line 1335
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pullingCall: call failed. reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->reason()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 1340
    :cond_4
    iget v0, v10, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    return v0

    :catch_0
    return v8
.end method

.method public registerForCallStateEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string v1, "registerForCallStateEvent:"

    .line 393
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForCdpnInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string v1, "registerForCdpnInfoEvent:"

    .line 465
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForCmcInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string v1, "registerForCmcInfoEvent:"

    .line 453
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCmcInfoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForDedicatedBearerNotifyEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string v1, "registerForDedicatedBearerNotifyEvent:"

    .line 471
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForDialogEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string v1, "registerForDialogEvent:"

    .line 441
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForDtmfEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string v1, "registerForDtmfEvent:"

    .line 495
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDtmfEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForIncomingCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string v1, "registerForCallStateEvent:"

    .line 405
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mIncomingCallEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForReferStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string v1, "registerForReferStatus:"

    .line 429
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string v1, "registerForRrcConnectionEvent:"

    .line 483
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForRtpLossRateNoti(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string v1, "registerForRtpLossRateNoti:"

    .line 531
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForSIPMSGEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string v1, "registerForSIPMSGEvent:"

    .line 519
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mSIPMSGNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForTextEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string v1, "registerForTextEvent:"

    .line 507
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTextEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForUssdEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string v1, "registerForUssdEvent:"

    .line 417
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mUssdEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public rejectCall(IILcom/sec/ims/util/SipError;)I
    .locals 2

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectCall: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " error "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ResipVolteHandler"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "rejectCall: session not found."

    .line 763
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 767
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, p0, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->rejectCall(ILcom/sec/ims/util/SipError;)V

    const/4 p0, 0x0

    return p0
.end method

.method public rejectModifyCallType(II)I
    .locals 3

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectModifyCallType(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "rejectModifyCallType(): session not found."

    .line 1179
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    const p1, 0x30000007

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RejectModifyCall,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1185
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->rejectModifyCallType(II)V

    const/4 p0, 0x0

    return p0
.end method

.method public removeParticipantFromNWayConferenceCall(II)I
    .locals 2

    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeParticipantFromNWayConferenceCall ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") removeSession "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "No conference session to add a participant"

    .line 1095
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1099
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v0, 0x1

    const-string v1, ""

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateConfCall(IIILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public removeParticipantFromNWayConferenceCall(ILjava/lang/String;)I
    .locals 2

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeParticipantFromNWayConferenceCall ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") participant "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    const-string p0, "No conference session to add a participant"

    .line 1125
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1129
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateConfCall(IIILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public replaceSipCallId(ILjava/lang/String;)V
    .locals 2

    .line 1572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replaceSipCallId(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "replaceSipCallId(): session not found."

    .line 1575
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1578
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {p0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setSipCallId(Ljava/lang/String;)V

    return-void
.end method

.method public replaceUserAgent(II)V
    .locals 2

    .line 1583
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 1584
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    const-string v1, "ResipVolteHandler"

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 1589
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iput-object p0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1590
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "session("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") ProfileHandle changed to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1586
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "call not found with session id "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public replyModifyCallType(IIII)I
    .locals 6

    const-string v5, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1152
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->replyModifyCallType(IIIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public replyModifyCallType(IIIILjava/lang/String;)I
    .locals 7

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replyModifyCallType(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reqType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", curType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", repType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cmcCallTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "replyModifyCallType(): session not found."

    .line 1163
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    const p1, 0x30000006

    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReplyModifyCall,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1169
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->replyModifyCallType(IIIILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public resumeCall(I)I
    .locals 5

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeCall: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "resumeCall: session not found."

    .line 942
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->dumpCall()V

    const/4 p0, -0x1

    return p0

    .line 948
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setIndicationFlag(I)V

    const v1, 0x30000004

    .line 949
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResumeCall,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 950
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->resumeCall(ILandroid/os/Message;)V

    return v2
.end method

.method public sendCmcInfo(ILandroid/os/Bundle;)I
    .locals 4

    const-string v0, "ResipVolteHandler"

    const-string v1, "sendCmcInfo"

    .line 1520
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "sendInfo: session not found."

    .line 1525
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string v0, "record_event"

    .line 1529
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "extra"

    .line 1530
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "sip_call_id"

    .line 1531
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1532
    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v3

    invoke-direct {p0, v3, v0, v2, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->createCmcInfoContents(IIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendCmcInfo(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendInfo(IILjava/lang/String;I)I
    .locals 8

    .line 1504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 1507
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v4

    if-nez v0, :cond_0

    const-string p0, "sendInfo: session not found."

    .line 1509
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1513
    :cond_0
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result p2

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->createUssdContents(ILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v6

    const/4 p2, 0x7

    .line 1514
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    move v3, p1

    move v5, p4

    .line 1513
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendInfo(IIILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Landroid/os/Message;)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendReInvite(ILcom/sec/internal/constants/ims/SipReason;)I
    .locals 2

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendReInvite(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    const/4 p1, -0x1

    if-nez p0, :cond_0

    const-string p0, "sendReInvite(): session not found."

    .line 1195
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateCall(IIILcom/sec/internal/constants/ims/SipReason;)V

    return v1
.end method

.method public sendText(ILjava/lang/String;I)I
    .locals 2

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendText: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " len : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "sendText: session not found."

    .line 895
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 899
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendText(ILjava/lang/String;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public setAutomaticMode(IZ)V
    .locals 5

    .line 1396
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAutomaticMode:[Z

    aput-boolean p2, v0, p1

    .line 1397
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    aget v1, v1, p1

    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRttMode:[I

    aget p0, p0, p1

    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v0, p1, v1, v3, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->configCall(IZZZ)V

    return-void
.end method

.method public setOutOfService(ZI)V
    .locals 3

    const-string v0, "ResipVolteHandler"

    .line 1407
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOutOfService() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1408
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mOutOfService:[Z

    aput-boolean p1, p0, p2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "setOutOfService: mOutOfService out of bound"

    .line 1410
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setRttMode(II)V
    .locals 6

    .line 1426
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRttMode:[I

    aget v1, v0, p1

    if-eq v1, p2, :cond_8

    .line 1427
    aput p2, v0, p1

    .line 1428
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    aget v1, v1, p1

    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne p2, v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAutomaticMode:[Z

    aget-boolean v5, v5, p1

    invoke-virtual {v0, p1, v1, v2, v5}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->configCall(IZZZ)V

    const-string v0, "mmtel"

    .line 1432
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "mmtel-video"

    .line 1434
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_8

    .line 1438
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v1

    const/4 v2, 0x4

    const/4 v5, 0x3

    if-ne v1, v2, :cond_5

    .line 1439
    sget v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-eq p2, v0, :cond_4

    sget v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE_OFF:I

    if-ne p2, v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x2

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v5

    goto :goto_3

    .line 1445
    :cond_5
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 1446
    sget v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne p2, v0, :cond_6

    goto :goto_2

    :cond_6
    move v3, v4

    .line 1452
    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->setTextMode(II)V

    .line 1453
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "RTT mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " convert to TextMode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResipVolteHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public setTtyMode(III)I
    .locals 5

    .line 1367
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    aget v0, p2, p1

    const/4 v1, 0x0

    if-eq v0, p3, :cond_4

    .line 1368
    aput p3, p2, p1

    .line 1369
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    sget v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    const/4 v2, 0x1

    if-eq p3, v0, :cond_0

    sget v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-eq p3, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRttMode:[I

    aget v3, v3, p1

    sget v4, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAutomaticMode:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {p2, p1, v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->configCall(IZZZ)V

    const-string p2, "mmtel"

    .line 1374
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p2, "mmtel-video"

    .line 1376
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_4

    .line 1379
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    .line 1381
    sget p2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne p3, p2, :cond_3

    const/4 p2, 0x3

    goto :goto_2

    :cond_3
    const/4 p2, 0x2

    .line 1386
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTY mode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " convert to TextMode "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ResipVolteHandler"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->setTextMode(II)V

    :cond_4
    return v1
.end method

.method public setVideoCrtAudio(IZ)V
    .locals 2

    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVideoCrtAudio(): sessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "setVideoCrtAudio(): session not found."

    .line 1496
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1499
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setVideoCrtAudio(IZ)V

    return-void
.end method

.method public startNWayConferenceCall(ILcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;)I
    .locals 19

    move-object/from16 v0, p2

    .line 956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startNWayConferenceCall: regId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ResipVolteHandler"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v5

    const/4 v1, -0x1

    if-nez v5, :cond_0

    const-string/jumbo v0, "startNWayConferenceCall: no UserAgent found."

    .line 960
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    move-object/from16 v2, p0

    .line 963
    invoke-direct {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->checkConfererenceCallData(Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;)I

    move-result v4

    if-ne v4, v1, :cond_1

    return v1

    :cond_1
    const/4 v4, 0x0

    .line 967
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 968
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    move-object v7, v4

    .line 970
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSupportPrematureEnd()Z

    move-result v17

    .line 971
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getParticipants()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_4

    .line 972
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSessionIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x2

    if-ge v4, v6, :cond_3

    const-string/jumbo v0, "startNWayConferenceCall: not enough sessionIds"

    .line 973
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 976
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getConferenceUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSessionIds()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 977
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSessionIds()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getCallType()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->isSubscriptionEnabled()Ljava/lang/String;

    move-result-object v11

    .line 978
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSubscribeDialogType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getRemoveReferUriType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriAsserted()Ljava/lang/String;

    move-result-object v15

    .line 979
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getUseAnonymousUpdate()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getExtraSipHeaders()Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v4, p0

    .line 976
    invoke-direct/range {v4 .. v18}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->startNWayConferenceCall(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)I

    move-result v0

    return v0

    .line 981
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getConferenceUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getParticipants()Ljava/util/List;

    move-result-object v8

    .line 982
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getCallType()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->isSubscriptionEnabled()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSubscribeDialogType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriType()Ljava/lang/String;

    move-result-object v12

    .line 983
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getRemoveReferUriType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriAsserted()Ljava/lang/String;

    move-result-object v14

    .line 984
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getUseAnonymousUpdate()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v4, p0

    move/from16 v16, v17

    .line 981
    invoke-direct/range {v4 .. v16}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->startNWayConferenceCall(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public startVideoEarlyMedia(I)I
    .locals 2

    .line 1538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startVideoEarlyMedia(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "startVideoEarlyMedia(): session not found."

    .line 1541
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1544
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->startVideoEarlyMedia(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public transferCall(ILjava/lang/String;)I
    .locals 2

    .line 1258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transferCall: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " taruri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    .line 1258
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "transferCall: session not found."

    .line 1263
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1267
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, p2, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->transferCall(ILjava/lang/String;ILandroid/os/Message;)V

    return v1
.end method

.method public unregisterForCallStateEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForCallStateEvent:"

    .line 399
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForCdpnInfoEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForCdpnInfoEvent:"

    .line 543
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForCmcInfoEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForCmcInfoEvent:"

    .line 459
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCmcInfoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForDedicatedBearerNotifyEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForDedicatedBearerNotifyEvent:"

    .line 477
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForDialogEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForDialogEvent:"

    .line 447
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForDtmfEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForDtmfEvent:"

    .line 501
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDtmfEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForIncomingCallEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForCallStateEvent:"

    .line 411
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mIncomingCallEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForReferStatus(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForReferStatus:"

    .line 435
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRrcConnectionEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForRrcConnectionEvent:"

    .line 489
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRtpLossRateNoti(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForRtpLossRateNoti:"

    .line 537
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSIPMSGEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForSIPMSGEvent:"

    .line 525
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mSIPMSGNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForTextEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForTextEvent:"

    .line 513
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTextEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForUssdEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForUssdEvent:"

    .line 423
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mUssdEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public updateAudioInterface(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1461
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->updateAudioInterface(ILjava/lang/String;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method public updateAudioInterface(ILjava/lang/String;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 2

    .line 1466
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    const-string v0, "ResipVolteHandler"

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Not Registered Volte Services"

    .line 1472
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move-object p3, p1

    .line 1477
    :goto_0
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1478
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioInterfaceHandler:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;

    const/16 v1, 0x8

    .line 1479
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1478
    invoke-virtual {p3, p2, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateAudioInterface(Ljava/lang/String;Landroid/os/Message;)V

    const-wide/16 p2, 0x9c4

    .line 1482
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string/jumbo p0, "updateAudioInterface: timeout."

    .line 1483
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public updateScreenOnOff(II)V
    .locals 0

    .line 1550
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->updateScreenOnOff(II)V

    return-void
.end method

.method public updateXqEnable(IZ)V
    .locals 0

    .line 1555
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->updateXqEnable(IZ)V

    return-void
.end method
