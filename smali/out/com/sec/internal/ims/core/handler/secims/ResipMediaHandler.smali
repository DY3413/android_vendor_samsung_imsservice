.class public Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;
.super Lcom/sec/internal/ims/core/handler/MediaHandler;
.source "ResipMediaHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;
    }
.end annotation


# static fields
.field private static final DTMF_VOLUME:I = 0x55

.field private static final EVENT_CAMERA_START:I = 0x190

.field private static final EVENT_CAMERA_STOP:I = 0x191

.field private static final EVENT_CONNECT_TO_SVE:I = 0x12c

.field private static final EVENT_HOLD_VIDEO_RESPONSE:I = 0xc9

.field private static final EVENT_MODIFY_VIDEO:I = 0x6b

.field private static final EVENT_RESUME_VIDEO_RESPONSE:I = 0xca

.field private static final EVENT_SVE_CONNECTED:I = 0x12d

.field private static final EVENT_VIDEO_EVENT:I = 0x6c

.field public static final MAX_VIDEO_CODEC_LIST_CHAR_SIZE:I = 0x100

.field private static final NOTIFY_CAM_CAPTURE_FAILURE:I = 0xd

.field private static final NOTIFY_CAM_CAPTURE_SUCCESS:I = 0xc

.field private static final NOTIFY_CAM_DISABLED_ERROR:I = 0x10

.field private static final NOTIFY_CAM_FIRST_FRAME_READY:I = 0x8

.field private static final NOTIFY_CAM_START_FAILURE:I = 0x7

.field private static final NOTIFY_CAM_START_SUCCESS:I = 0x6

.field private static final NOTIFY_CAM_STOP_SUCCESS:I = 0x9

.field private static final NOTIFY_CAM_SWITCH_FAILURE:I = 0xb

.field private static final NOTIFY_CAM_SWITCH_SUCCESS:I = 0xa

.field private static final NOTIFY_CHANGE_PEER_DIMENSION:I = 0xf

.field private static final NOTIFY_EMOJI_INFO_CHANGE:I = 0x4a

.field private static final NOTIFY_EMOJI_START_FAILURE:I = 0x47

.field private static final NOTIFY_EMOJI_START_SUCCESS:I = 0x46

.field private static final NOTIFY_EMOJI_STOP_FAILURE:I = 0x49

.field private static final NOTIFY_EMOJI_STOP_SUCCESS:I = 0x48

.field private static final NOTIFY_FAR_FRAME_READY:I = 0x5

.field private static final NOTIFY_IMS_GENERAL_EVENT_FAILURE:I = 0x51

.field private static final NOTIFY_IMS_GENERAL_EVENT_SUCCESS:I = 0x50

.field private static final NOTIFY_LCL_CAPTURE_FAILURE:I = 0x2

.field private static final NOTIFY_LCL_CAPTURE_SUCCESS:I = 0x1

.field private static final NOTIFY_NO_FAR_FRAME:I = 0xe

.field private static final NOTIFY_RECORD_START_FAILURE:I = 0x33

.field private static final NOTIFY_RECORD_START_FAILURE_NO_MEMORY:I = 0x34

.field private static final NOTIFY_RECORD_START_SUCCESS:I = 0x32

.field private static final NOTIFY_RECORD_STOP_FAILURE:I = 0x3d

.field private static final NOTIFY_RECORD_STOP_SUCCESS:I = 0x3c

.field private static final NOTIFY_RMT_CAPTURE_FAILURE:I = 0x4

.field private static final NOTIFY_RMT_CAPTURE_SUCCESS:I = 0x3

.field private static final NOTIFY_VCID_GENERAL_FAILURE:I = 0x5a

.field public static final NOTIFY_VIDEO_ATTEMPTED:I = 0x28

.field public static final NOTIFY_VIDEO_FAIR_QUALITY:I = 0x1f

.field public static final NOTIFY_VIDEO_FIRST_PACKET_RECV:I = 0x11

.field public static final NOTIFY_VIDEO_GOOD_QUALITY:I = 0x20

.field public static final NOTIFY_VIDEO_MAX_QUALITY:I = 0x22

.field public static final NOTIFY_VIDEO_POOR_QUALITY:I = 0x1e

.field public static final NOTIFY_VIDEO_RTCP_CLEAR:I = 0x17

.field public static final NOTIFY_VIDEO_RTCP_TIMEOUT:I = 0x15

.field public static final NOTIFY_VIDEO_RTP_CLEAR:I = 0x16

.field public static final NOTIFY_VIDEO_RTP_TIMEOUT:I = 0x14

.field public static final NOTIFY_VIDEO_VERYPOOR_QUALITY:I = 0x21


# instance fields
.field private mContext:Landroid/content/Context;

.field public mHwSupportedVideoCodecList:Ljava/lang/String;

.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private mMediaEventlistener:Lcom/sec/sve/IImsMediaEventListener;

.field private mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

.field private mRingBackToneThread:Landroid/os/HandlerThread;

.field private mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

.field private mSveConnected:Z

.field private mSveConnecting:Z

.field private mSveManager:Lcom/sec/sve/SecVideoEngineManager;

.field private mToneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method static bridge synthetic -$$Nest$fputmSveConnected(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSveConnecting(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnecting:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .registers 4

    .line 336
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/MediaHandler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 108
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnected:Z

    .line 109
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnecting:Z

    const-string p1, ""

    .line 110
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mHwSupportedVideoCodecList:Ljava/lang/String;

    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 114
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    .line 115
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneThread:Landroid/os/HandlerThread;

    .line 117
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mMediaEventlistener:Lcom/sec/sve/IImsMediaEventListener;

    .line 337
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mContext:Landroid/content/Context;

    .line 338
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 339
    new-instance p1, Lcom/sec/sve/SecVideoEngineManager;

    new-instance p3, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)V

    invoke-direct {p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;-><init>(Landroid/content/Context;Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object p0
.end method

.method private connectToSve()V
    .registers 4

    .line 773
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SVE is not connected ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnected:Z

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnecting:Z

    if-nez v0, :cond_2f

    .line 775
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "connectToSve"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0}, Lcom/sec/sve/SecVideoEngineManager;->connectService()V

    const/4 v0, 0x1

    .line 777
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnecting:Z

    :cond_2f
    return-void
.end method

.method private getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .registers 3

    .line 529
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    const-string v0, "mmtel-video"

    .line 531
    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez v0, :cond_1a

    const-string/jumbo v0, "vs"

    .line 534
    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    :cond_1a
    return-object v0
.end method

.method private getUaForMediaEvent(III)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .registers 5

    const/4 v0, 0x1

    if-ne p3, v0, :cond_17

    if-eqz p2, :cond_f

    if-ne p2, v0, :cond_8

    goto :goto_f

    :cond_8
    const-string p2, "mmtel-video"

    .line 560
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUaWithService(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    goto :goto_1d

    :cond_f
    :goto_f
    const-string/jumbo p2, "vs"

    .line 558
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUaWithService(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    goto :goto_1d

    :cond_17
    const-string p2, "mmtel"

    .line 563
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUaWithService(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    :goto_1d
    return-object p0
.end method

.method private getUaWithService(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .registers 4

    .line 541
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_10

    .line 545
    invoke-interface {p0, p2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    goto :goto_16

    .line 547
    :cond_10
    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    :goto_16
    return-object p0
.end method

.method private onHoldVideoResponse(Lcom/sec/internal/helper/AsyncResult;)V
    .registers 3

    .line 709
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 711
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v0

    if-eqz v0, :cond_24

    .line 712
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 713
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 715
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_HOLD_FAILED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 717
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_24
    return-void
.end method

.method private onModifyVideo(Lcom/sec/internal/helper/AsyncResult;)V
    .registers 7

    .line 570
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;

    .line 571
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;->session()J

    move-result-wide v0

    long-to-int v0, v0

    .line 572
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;->direction()J

    move-result-wide v1

    long-to-int v1, v1

    .line 573
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;->isHeldCall()Z

    move-result p1

    .line 575
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onModifyVideo() session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", direction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isHoldCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 579
    invoke-virtual {v2, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    if-nez v1, :cond_48

    .line 582
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_HELD:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v2, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_4d

    .line 584
    :cond_48
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_RESUMED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v2, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 587
    :goto_4d
    invoke-virtual {v2, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setIsHeldCall(Z)V

    .line 589
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onResumeVideoResponse(Lcom/sec/internal/helper/AsyncResult;)V
    .registers 3

    .line 722
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 724
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v0

    if-eqz v0, :cond_24

    .line 725
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 726
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 728
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_RESUME_FAILED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 730
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_24
    return-void
.end method

.method private onSveConnected()V
    .registers 4

    .line 782
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnected:Z

    if-eqz v0, :cond_33

    .line 783
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->registerMediaEventListener()V

    .line 784
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/sec/sve/SecVideoEngineManager;->sveSendGeneralEvent(IIILjava/lang/String;)I

    .line 785
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0}, Lcom/sec/sve/SecVideoEngineManager;->saeTerminate()V

    .line 786
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getMediaSupportedVideoCodecs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mHwSupportedVideoCodecList:Ljava/lang/String;

    .line 787
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hwSupportedVideoCodecList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mHwSupportedVideoCodecList:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 789
    :cond_33
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SVE was not connected!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void
.end method

.method private onVideoEvent(Lcom/sec/internal/helper/AsyncResult;)V
    .registers 9

    .line 593
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;

    .line 594
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;->phoneId()J

    move-result-wide v0

    long-to-int v0, v0

    .line 595
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;->session()J

    move-result-wide v1

    long-to-int v1, v1

    .line 596
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;->event()J

    move-result-wide v2

    long-to-int v2, v2

    .line 597
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;->arg1()J

    move-result-wide v3

    long-to-int v3, v3

    .line 598
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;->arg2()J

    move-result-wide v4

    long-to-int p1, v4

    .line 600
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onVideoEvent() session: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 603
    invoke-virtual {v4, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 604
    invoke-virtual {v4, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    const/16 v0, 0x14

    if-eq v2, v0, :cond_12a

    const/16 v0, 0x15

    if-eq v2, v0, :cond_124

    const/16 v0, 0x28

    if-eq v2, v0, :cond_11e

    const/16 v0, 0x3c

    if-eq v2, v0, :cond_118

    const/16 v0, 0x3d

    if-eq v2, v0, :cond_112

    packed-switch v2, :pswitch_data_136

    packed-switch v2, :pswitch_data_15a

    packed-switch v2, :pswitch_data_168

    packed-switch v2, :pswitch_data_172

    goto/16 :goto_12f

    .line 701
    :pswitch_68
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_INFO_CHANGE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_12f

    .line 698
    :pswitch_6f
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_STOP_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_12f

    .line 695
    :pswitch_76
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_12f

    .line 692
    :pswitch_7d
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_12f

    .line 689
    :pswitch_84
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_12f

    .line 680
    :pswitch_8b
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_FAILURE_NO_SPACE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_12f

    .line 677
    :pswitch_92
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_12f

    .line 674
    :pswitch_99
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_12f

    .line 638
    :pswitch_a0
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_MAX_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_12f

    .line 635
    :pswitch_a7
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_VERYPOOR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_12f

    .line 632
    :pswitch_ae
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_GOOD_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_12f

    .line 629
    :pswitch_b5
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_FAIR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_12f

    .line 626
    :pswitch_bc
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_POOR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_12f

    .line 671
    :pswitch_c3
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_DISABLED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_12f

    .line 666
    :pswitch_ca
    invoke-virtual {v4, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setWidth(I)V

    .line 667
    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setHeight(I)V

    .line 668
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CHANGE_PEER_DIMENSION:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_12f

    .line 660
    :pswitch_d6
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->NO_FAR_FRAME:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_12f

    .line 623
    :pswitch_dc
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_SWITCH_FAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_12f

    .line 620
    :pswitch_e2
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_SWITCH_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_12f

    .line 647
    :pswitch_e8
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_12f

    .line 608
    :pswitch_ee
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_FIRST_FRAME_READY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_12f

    .line 641
    :pswitch_f4
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_FAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_12f

    .line 644
    :pswitch_fa
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_12f

    .line 611
    :pswitch_100
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_12f

    .line 657
    :pswitch_106
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAPTURE_FAILED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_12f

    .line 652
    :pswitch_10c
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAPTURE_SUCCEEDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_12f

    .line 686
    :cond_112
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_12f

    .line 683
    :cond_118
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_12f

    .line 663
    :cond_11e
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_ATTEMPTED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_12f

    .line 617
    :cond_124
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_RTCP_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_12f

    .line 614
    :cond_12a
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_RTP_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 705
    :goto_12f
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v4}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_10c
        :pswitch_106
        :pswitch_10c
        :pswitch_106
        :pswitch_100
        :pswitch_fa
        :pswitch_f4
        :pswitch_ee
        :pswitch_e8
        :pswitch_e2
        :pswitch_dc
        :pswitch_10c
        :pswitch_106
        :pswitch_d6
        :pswitch_ca
        :pswitch_c3
    .end packed-switch

    :pswitch_data_15a
    .packed-switch 0x1e
        :pswitch_bc
        :pswitch_b5
        :pswitch_ae
        :pswitch_a7
        :pswitch_a0
    .end packed-switch

    :pswitch_data_168
    .packed-switch 0x32
        :pswitch_99
        :pswitch_92
        :pswitch_8b
    .end packed-switch

    :pswitch_data_172
    .packed-switch 0x46
        :pswitch_84
        :pswitch_7d
        :pswitch_76
        :pswitch_6f
        :pswitch_68
    .end packed-switch
.end method


# virtual methods
.method public bindToNetwork(Landroid/net/Network;)V
    .registers 5

    .line 524
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindToNetwork : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->bindToNetwork(Landroid/net/Network;)V

    return-void
.end method

.method public deinitToneGenerator()V
    .registers 3

    .line 1073
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_13

    .line 1074
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deinit ToneGenerator"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    const/4 v0, 0x0

    .line 1076
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_13
    return-void
.end method

.method public getHwSupportedVideoCodecs(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 1346
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mHwSupportedVideoCodecList:Ljava/lang/String;

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_63

    :cond_b
    const-string v0, ","

    .line 1350
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1351
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mHwSupportedVideoCodecList:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1354
    array-length v2, p1

    const/4 v3, 0x0

    const-string v4, ""

    move v5, v3

    :goto_1c
    if-ge v5, v2, :cond_4c

    aget-object v6, p1, v5

    .line 1355
    array-length v7, v1

    move v8, v3

    :goto_22
    if-ge v8, v7, :cond_49

    aget-object v9, v1, v8

    .line 1356
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_46

    .line 1357
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_34

    move-object v4, v6

    goto :goto_46

    .line 1360
    :cond_34
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_46
    :goto_46
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    :cond_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 1365
    :cond_4c
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getHwSupportedVideoCodecs filteredCodecs : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 1347
    :cond_63
    :goto_63
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getHwSupportedVideoCodecs - fails to get HW supported codec"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public getMediaSupportedVideoCodecs()Ljava/lang/String;
    .registers 10

    const-string v0, "H263,H264"

    .line 1371
    new-instance v1, Landroid/media/MediaCodecList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    const-string/jumbo v2, "video/hevc"

    const/16 v3, 0x2d0

    const/16 v4, 0x500

    .line 1374
    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v5

    .line 1375
    invoke-static {v2, v4, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    .line 1378
    :try_start_17
    invoke-virtual {v1, v5}, Landroid/media/MediaCodecList;->findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v3

    .line 1379
    invoke-virtual {v1, v5}, Landroid/media/MediaCodecList;->findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v4

    .line 1380
    invoke-virtual {v1, v2}, Landroid/media/MediaCodecList;->findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v5

    .line 1381
    invoke-virtual {v1, v2}, Landroid/media/MediaCodecList;->findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v1

    .line 1383
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isMediaH265VideoCodecSupported: encoders: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_33} :catch_95
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_33} :catch_95

    const-string v7, "null"

    if-nez v3, :cond_39

    move-object v8, v7

    goto :goto_3a

    :cond_39
    move-object v8, v3

    :goto_3a
    :try_start_3a
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", isMediaH265VideoCodecSupported: decoders: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_46

    move-object v8, v7

    goto :goto_47

    :cond_46
    move-object v8, v4

    .line 1384
    :goto_47
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", isMediaH265LVideoCodecSupported: encoders: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_53

    move-object v8, v7

    goto :goto_54

    :cond_53
    move-object v8, v5

    .line 1385
    :goto_54
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", isMediaH265LVideoCodecSupported: decoders: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_5f

    goto :goto_60

    :cond_5f
    move-object v7, v1

    .line 1386
    :goto_60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1383
    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ac

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ac

    .line 1389
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ac

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ac

    .line 1390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",H265"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_93
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_93} :catch_95
    .catch Ljava/lang/NullPointerException; {:try_start_3a .. :try_end_93} :catch_95

    move-object v0, p0

    goto :goto_ac

    :catch_95
    move-exception v1

    .line 1393
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMediaSupportedVideoCodecs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ac
    :goto_ac
    return-object v0
.end method

.method public getSupportVowifiDisable5gsa()Z
    .registers 10

    const-string v0, "content://com.samsung.ims.entitlementconfig.provider"

    .line 1403
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "config"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "xpath"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "tag_name"

    const-string v2, "//VoNR/VoWiFiDisable5GSA"

    .line 1404
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1405
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1407
    :try_start_25
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_34
    .catch Landroid/database/SQLException; {:try_start_25 .. :try_end_34} :catch_70

    .line 1408
    :try_start_34
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSupportVowifiDisable5gsa : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_57

    .line 1409
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1410
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5e

    .line 1412
    :cond_57
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getSupportVowifiDisable5gsa : cursor is null"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_34 .. :try_end_5e} :catchall_64

    :goto_5e
    if-eqz v3, :cond_87

    .line 1414
    :try_start_60
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_63
    .catch Landroid/database/SQLException; {:try_start_60 .. :try_end_63} :catch_70

    goto :goto_87

    :catchall_64
    move-exception v0

    if-eqz v3, :cond_6f

    .line 1407
    :try_start_67
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_6f

    :catchall_6b
    move-exception v3

    :try_start_6c
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6f
    :goto_6f
    throw v0
    :try_end_70
    .catch Landroid/database/SQLException; {:try_start_6c .. :try_end_70} :catch_70

    :catch_70
    move-exception v0

    .line 1415
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportVowifiDisable5gsa: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    :goto_87
    const-string p0, "false"

    .line 1418
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_91

    const/4 p0, 0x0

    return p0

    :cond_91
    return v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 736
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x6b

    if-eq v0, v1, :cond_53

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_4b

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_43

    const/16 v1, 0xca

    if-eq v0, v1, :cond_3b

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_37

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_33

    const/16 v1, 0x190

    if-eq v0, v1, :cond_29

    const/16 p1, 0x191

    if-eq v0, p1, :cond_23

    goto :goto_5a

    .line 767
    :cond_23
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0}, Lcom/sec/sve/SecVideoEngineManager;->sveStopCamera()I

    goto :goto_5a

    .line 763
    :cond_29
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sveStartCamera(II)I

    goto :goto_5a

    .line 759
    :cond_33
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->onSveConnected()V

    goto :goto_5a

    .line 755
    :cond_37
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->connectToSve()V

    goto :goto_5a

    .line 751
    :cond_3b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->onResumeVideoResponse(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_5a

    .line 747
    :cond_43
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->onHoldVideoResponse(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_5a

    .line 743
    :cond_4b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->onVideoEvent(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_5a

    .line 739
    :cond_53
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->onModifyVideo(Lcom/sec/internal/helper/AsyncResult;)V

    :goto_5a
    return-void
.end method

.method public holdVideo(II)V
    .registers 6

    .line 384
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdVideo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    if-nez p1, :cond_1d

    return-void

    :cond_1d
    const/16 v0, 0xc9

    .line 391
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 390
    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->holdVideo(ILandroid/os/Message;)V

    return-void
.end method

.method public init()V
    .registers 4

    .line 361
    invoke-super {p0}, Lcom/sec/internal/ims/core/handler/BaseHandler;->init()V

    .line 363
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x6b

    const/4 v2, 0x0

    .line 365
    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerModifyVideoEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 366
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x6c

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerVideoEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 368
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnected:Z

    .line 369
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnecting:Z

    const/16 v0, 0x12c

    .line 370
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 372
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RingBackToneThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneThread:Landroid/os/HandlerThread;

    .line 373
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 374
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    return-void
.end method

.method public initToneGenerator()V
    .registers 4

    .line 1065
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_16

    .line 1066
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init ToneGenerator"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v1, 0x8

    const/16 v2, 0x55

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_16
    return-void
.end method

.method public muteLocalRingBackTone()Z
    .registers 3

    .line 1224
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->isPlayingRingBackTone()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    .line 1225
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    return p0

    .line 1226
    :cond_14
    :goto_14
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v1
.end method

.method public registerMediaEventListener()V
    .registers 2

    .line 1235
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mMediaEventlistener:Lcom/sec/sve/IImsMediaEventListener;

    invoke-virtual {v0, p0}, Lcom/sec/sve/SecVideoEngineManager;->registerForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V

    return-void
.end method

.method public restartEmoji(II)V
    .registers 3

    .line 508
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p2}, Lcom/sec/sve/SecVideoEngineManager;->restartEmoji(I)V

    return-void
.end method

.method public resumeVideo(II)V
    .registers 6

    .line 396
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeVideo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    if-nez p1, :cond_1e

    return-void

    :cond_1e
    const/16 v0, 0xca

    .line 403
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 402
    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->resumeVideo(ILandroid/os/Message;)V

    return-void
.end method

.method public saeCreateChannel(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I
    .registers 24

    move-object v0, p0

    .line 820
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/sec/sve/SecVideoEngineManager;->saeCreateChannel(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public saeDeleteChannel(I)I
    .registers 2

    .line 847
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->saeDeleteChannel(I)I

    move-result p0

    return p0
.end method

.method public saeEnableSRTP(III[BI)I
    .registers 12

    .line 862
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/sve/SecVideoEngineManager;->saeEnableSRTP(III[BI)I

    move-result p0

    return p0
.end method

.method public saeGetAudioRxTrackId(I)I
    .registers 2

    .line 907
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->saeGetAudioRxTrackId(I)I

    move-result p0

    return p0
.end method

.method public saeGetLastPlayedVoiceTime(I)Ljava/lang/Object;
    .registers 2

    .line 887
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->saeGetLastPlayedVoiceTime(I)Lcom/sec/sve/TimeInfo;

    move-result-object p0

    return-object p0
.end method

.method public saeGetVersion([BI)I
    .registers 3

    .line 902
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->saeGetVersion([BI)I

    move-result p0

    return p0
.end method

.method public saeHandleDtmf(IIII)I
    .registers 5

    .line 852
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/sve/SecVideoEngineManager;->saeHandleDtmf(IIII)I

    move-result p0

    return p0
.end method

.method public saeInitialize(III)V
    .registers 7

    .line 796
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saeInitialize convertedMno = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->saeInitialize(III)V

    return-void
.end method

.method public saeModifyChannel(II)I
    .registers 3

    .line 842
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->saeModifyChannel(II)I

    move-result p0

    return p0
.end method

.method public saeSetAudioPath(II)I
    .registers 3

    .line 912
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->saeSetAudioPath(II)I

    move-result p0

    return p0
.end method

.method public saeSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 62

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v0, p0

    .line 808
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move-object/from16 p0, v0

    move/from16 v0, p21

    int-to-short v0, v0

    move/from16 v21, v0

    move/from16 v0, p22

    int-to-short v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v30}, Lcom/sec/sve/SecVideoEngineManager;->saeSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public saeSetDtmfCodecInfo(IIIII)I
    .registers 12

    .line 857
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/sve/SecVideoEngineManager;->saeSetDtmfCodecInfo(IIIII)I

    move-result p0

    return p0
.end method

.method public saeSetRtcpOnCall(III)I
    .registers 4

    .line 867
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->saeSetRtcpOnCall(III)I

    move-result p0

    return p0
.end method

.method public saeSetRtcpTimeout(IJ)I
    .registers 4

    .line 877
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->saeSetRtcpTimeout(IJ)I

    move-result p0

    return p0
.end method

.method public saeSetRtcpXr(IIIII[I)I
    .registers 14

    .line 882
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/sve/SecVideoEngineManager;->saeSetRtcpXr(IIIII[I)I

    move-result p0

    return p0
.end method

.method public saeSetRtpTimeout(IJ)I
    .registers 4

    .line 872
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->saeSetRtpTimeout(IJ)I

    move-result p0

    return p0
.end method

.method public saeSetTOS(II)I
    .registers 3

    .line 897
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->saeSetTOS(II)I

    move-result p0

    return p0
.end method

.method public saeSetVoicePlayDelay(II)I
    .registers 3

    .line 892
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->saeSetVoicePlayDelay(II)I

    move-result p0

    return p0
.end method

.method public saeStartChannel(IIZ)I
    .registers 4

    .line 826
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->saeStartChannel(IIZ)I

    move-result p0

    return p0
.end method

.method public saeStartRecording(IIIZ)I
    .registers 5

    .line 1022
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/sve/SecVideoEngineManager;->saeStartRecording(IIIZ)I

    move-result p0

    return p0
.end method

.method public saeStopChannel(I)I
    .registers 2

    .line 837
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->saeStopChannel(I)I

    move-result p0

    return p0
.end method

.method public saeStopRecording(IZ)I
    .registers 3

    .line 1027
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->saeStopRecording(IZ)I

    move-result p0

    return p0
.end method

.method public saeUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I
    .registers 18

    move-object v0, p0

    .line 832
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/sec/sve/SecVideoEngineManager;->saeUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public sendGeneralBundleEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 518
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sendGeneralBundleEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 519
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendGeneralBundleEvent - event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "extras: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendGeneralEvent(IIILjava/lang/String;)V
    .registers 5

    .line 513
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/sve/SecVideoEngineManager;->sveSendGeneralEvent(IIILjava/lang/String;)I

    return-void
.end method

.method public sendMediaEvent(IIII)V
    .registers 5

    .line 1244
    invoke-direct {p0, p1, p2, p4}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUaForMediaEvent(III)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    if-nez p1, :cond_e

    .line 1247
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "User Agent was empty!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1251
    :cond_e
    invoke-virtual {p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMediaEvent(III)V

    return-void
.end method

.method public sendRtpStatsToStack(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V
    .registers 2

    .line 379
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRtpStatsToStack(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V

    return-void
.end method

.method public sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 468
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/sve/SecVideoEngineManager;->sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAudioParameters(ILjava/lang/String;)V
    .registers 7

    .line 1102
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_4a

    .line 1104
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v1

    .line 1105
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_31

    if-nez p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    invoke-interface {v1, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasCsCall(I)Z

    move-result p1

    if-nez p1, :cond_28

    goto :goto_31

    .line 1109
    :cond_28
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "skip to set to Audio F/W"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 1106
    :cond_31
    :goto_31
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " set to Audio F/W"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public setCamera(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public setCameraEffect(I)V
    .registers 2

    .line 473
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->setCameraEffect(I)V

    return-void
.end method

.method public setDisplaySurface(ILjava/lang/Object;I)V
    .registers 7

    .line 432
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplaySurface() sessionId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " color : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    check-cast p2, Landroid/view/Surface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->setDisplaySurface(ILandroid/view/Surface;I)V

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 448
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->setOrientation(I)V

    return-void
.end method

.method public setPreviewResolution(II)V
    .registers 3

    .line 421
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->setPreviewResolution(II)V

    return-void
.end method

.method public setPreviewSurface(ILjava/lang/Object;I)V
    .registers 7

    .line 426
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewSurface() sessionId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " color : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    check-cast p2, Landroid/view/Surface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->setPreviewSurface(ILandroid/view/Surface;I)V

    return-void
.end method

.method public setZoom(F)V
    .registers 2

    .line 453
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->setZoom(F)V

    return-void
.end method

.method public startCamera(III)V
    .registers 5

    .line 409
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    if-nez v0, :cond_f

    .line 411
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "startCamera: can\'t find UserAgent for mmtel-video."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 414
    :cond_f
    invoke-static {p1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "persist.ims.salescode.sve"

    .line 415
    invoke-static {p1, p0}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->startCamera(II)V

    return-void
.end method

.method public startEmoji(IILjava/lang/String;)V
    .registers 4

    .line 498
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->startEmoji(ILjava/lang/String;)V

    return-void
.end method

.method public startLocalRingBackTone(III)I
    .registers 7

    .line 1207
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start RBT with st"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " v-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tt-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->setRingBackToneData(III)V

    .line 1210
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p0, 0x0

    return p0
.end method

.method public startRecord(IILjava/lang/String;)V
    .registers 4

    .line 478
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    if-nez p1, :cond_f

    .line 480
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "startRecord: can\'t find UserAgent for mmtel-video."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 483
    :cond_f
    invoke-virtual {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->startRecord(ILjava/lang/String;)V

    return-void
.end method

.method public steCreateChannel(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I
    .registers 22

    move-object v0, p0

    .line 1279
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/sec/sve/SecVideoEngineManager;->steCreateChannel(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public steDeleteChannel(I)I
    .registers 2

    .line 1295
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->steDeleteChannel(I)I

    move-result p0

    return p0
.end method

.method public steEnableSRTP(III[BI)I
    .registers 12

    .line 1336
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/sve/SecVideoEngineManager;->steEnableSRTP(III[BI)I

    move-result p0

    return p0
.end method

.method public steInitialize()V
    .registers 1

    .line 1257
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0}, Lcom/sec/sve/SecVideoEngineManager;->steInitialize()V

    return-void
.end method

.method public steModifyChannel(II)I
    .registers 3

    .line 1306
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->steModifyChannel(II)I

    move-result p0

    return p0
.end method

.method public steSendText(ILjava/lang/String;I)I
    .registers 4

    .line 1321
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->steSendText(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public steSetCallOptions(IZ)I
    .registers 3

    .line 1326
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->steSetCallOptions(IZ)I

    move-result p0

    return p0
.end method

.method public steSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 62

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v0, p0

    .line 1267
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move-object/from16 p0, v0

    move/from16 v0, p21

    int-to-short v0, v0

    move/from16 v21, v0

    move/from16 v0, p22

    int-to-short v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v30}, Lcom/sec/sve/SecVideoEngineManager;->steSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public steSetNetId(II)I
    .registers 3

    .line 1311
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->steSetNetId(II)I

    move-result p0

    return p0
.end method

.method public steSetRtcpOnCall(III)I
    .registers 4

    .line 1341
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->steSetRtcpOnCall(III)I

    move-result p0

    return p0
.end method

.method public steSetRtcpTimeout(IJ)I
    .registers 4

    .line 1331
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->steSetRtcpTimeout(IJ)I

    move-result p0

    return p0
.end method

.method public steSetSessionId(II)I
    .registers 3

    .line 1316
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->steSetSessionId(II)I

    move-result p0

    return p0
.end method

.method public steStartChannel(IIZ)I
    .registers 4

    .line 1285
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->steStartChannel(IIZ)I

    move-result p0

    return p0
.end method

.method public steStopChannel(I)I
    .registers 2

    .line 1290
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->steStopChannel(I)I

    move-result p0

    return p0
.end method

.method public steUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I
    .registers 18

    move-object v0, p0

    .line 1301
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/sec/sve/SecVideoEngineManager;->steUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public stopCamera(I)V
    .registers 2

    .line 438
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    if-nez p1, :cond_f

    .line 440
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "stopCamera: can\'t find UserAgent for mmtel-video."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 443
    :cond_f
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->stopCamera()V

    return-void
.end method

.method public stopEmoji(II)V
    .registers 3

    .line 503
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p2}, Lcom/sec/sve/SecVideoEngineManager;->stopEmoji(I)V

    return-void
.end method

.method public stopLocalRingBackTone()I
    .registers 2

    .line 1217
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p0, 0x0

    return p0
.end method

.method public stopRecord(II)V
    .registers 3

    .line 488
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    if-nez p1, :cond_f

    .line 490
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "stopRecord: can\'t find UserAgent for mmtel-video."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 493
    :cond_f
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->stopRecord(I)V

    return-void
.end method

.method public sveCmcRecorderCreate(IIILjava/lang/String;IIJILjava/lang/String;IIIIIJLjava/lang/String;)I
    .registers 39

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-wide/from16 v17, p16

    move-object/from16 v19, p18

    .line 1040
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sveCmcRecorderCreate maxFileSize : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", fileSizeInterval : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p16

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v19}, Lcom/sec/sve/SecVideoEngineManager;->sveCmcRecorderCreate(IIILjava/lang/String;IIJILjava/lang/String;IIIIIJLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sveCreateChannel()I
    .registers 1

    .line 918
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0}, Lcom/sec/sve/SecVideoEngineManager;->sveCreateChannel()I

    move-result p0

    return p0
.end method

.method public sveGetLastPlayedVideoTime(I)Ljava/lang/Object;
    .registers 2

    .line 987
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sveGetLastPlayedVideoTime(I)Lcom/sec/sve/TimeInfo;

    move-result-object p0

    return-object p0
.end method

.method public sveGetRtcpTimeInfo(I)Ljava/lang/Object;
    .registers 2

    .line 1007
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sveGetRtcpTimeInfo(I)Lcom/sec/sve/TimeInfo;

    move-result-object p0

    return-object p0
.end method

.method public sveRecorderCreate(ILjava/lang/String;IILjava/lang/String;I)I
    .registers 14

    .line 1033
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/sve/SecVideoEngineManager;->sveRecorderCreate(ILjava/lang/String;IILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public sveRecorderDelete(I)I
    .registers 2

    .line 1049
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sveRecorderDelete(I)I

    move-result p0

    return p0
.end method

.method public sveRecorderStart(I)I
    .registers 2

    .line 1054
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sveRecorderStart(I)I

    move-result p0

    return p0
.end method

.method public sveRecorderStop(IZ)I
    .registers 3

    .line 1059
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sveRecorderStop(IZ)I

    move-result p0

    return p0
.end method

.method public sveSendGeneralEvent(IIILjava/lang/String;)I
    .registers 5

    .line 1002
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/sve/SecVideoEngineManager;->sveSendGeneralEvent(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public sveSetCodecInfo(IIIIIILjava/lang/String;IIIIIZIZIIIII[B[B[BIII)I
    .registers 54

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move/from16 v24, p24

    move/from16 v25, p25

    move/from16 v26, p26

    move-object/from16 v0, p0

    .line 946
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual/range {v0 .. v26}, Lcom/sec/sve/SecVideoEngineManager;->sveSetCodecInfo(IIIIIILjava/lang/String;IIIIIZIZIIIII[B[B[BIII)I

    move-result v0

    return v0
.end method

.method public sveSetConnection(ILjava/lang/String;ILjava/lang/String;IIIIJ)I
    .registers 22

    move-object v0, p0

    .line 935
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/sec/sve/SecVideoEngineManager;->sveSetConnection(ILjava/lang/String;ILjava/lang/String;IIIIJ)I

    move-result v0

    return v0
.end method

.method public sveSetHeldInfo(IZZ)I
    .registers 4

    .line 982
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->sveSetHeldInfo(IZZ)I

    move-result p0

    return p0
.end method

.method public sveSetMediaConfig(IZIZIII)I
    .registers 16

    .line 965
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/sec/sve/SecVideoEngineManager;->sveSetMediaConfig(IZIZIII)I

    move-result p0

    return p0
.end method

.method public sveSetNetworkQoS(IIII)I
    .registers 5

    .line 997
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/sve/SecVideoEngineManager;->sveSetNetworkQoS(IIII)I

    move-result p0

    return p0
.end method

.method public sveSetSRTPParams(ILjava/lang/String;[BIIIILjava/lang/String;[BIIII)I
    .registers 28

    move-object v0, p0

    .line 958
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-virtual/range {v0 .. v13}, Lcom/sec/sve/SecVideoEngineManager;->sveSetSRTPParams(ILjava/lang/String;[BIIIILjava/lang/String;[BIIII)I

    move-result v0

    return v0
.end method

.method public sveSetVideoPlayDelay(II)I
    .registers 3

    .line 992
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sveSetVideoPlayDelay(II)I

    move-result p0

    return p0
.end method

.method public sveStartCamera(II)I
    .registers 4

    const/16 v0, 0x190

    .line 970
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public sveStartChannel(III)I
    .registers 4

    .line 923
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->sveStartChannel(III)I

    move-result p0

    return p0
.end method

.method public sveStartRecording(II)I
    .registers 3

    .line 1012
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sveStartRecording(II)I

    move-result p0

    return p0
.end method

.method public sveStopCamera()I
    .registers 2

    const/16 v0, 0x191

    .line 976
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p0, 0x0

    return p0
.end method

.method public sveStopChannel(I)I
    .registers 2

    .line 928
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sveStopChannel(I)I

    move-result p0

    return p0
.end method

.method public sveStopRecording(I)I
    .registers 2

    .line 1017
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sveStopRecording(I)I

    move-result p0

    return p0
.end method

.method public switchCamera()V
    .registers 1

    .line 463
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0}, Lcom/sec/sve/SecVideoEngineManager;->switchCamera()V

    return-void
.end method

.method public triggerTone(ZII)V
    .registers 7

    .line 1082
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_c

    .line 1083
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "ToneGenerator was not initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1087
    :cond_c
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tone #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_20

    const-string v2, " start"

    goto :goto_23

    :cond_20
    const-string/jumbo v2, "stop"

    :goto_23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p2, :cond_33

    const/16 v0, 0xf

    if-le p2, v0, :cond_34

    :cond_33
    const/4 p2, 0x0

    :cond_34
    if-eqz p1, :cond_3c

    .line 1094
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {p0, p2, p3}, Landroid/media/ToneGenerator;->startTone(II)Z

    goto :goto_41

    .line 1096
    :cond_3c
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {p0}, Landroid/media/ToneGenerator;->stopTone()V

    :goto_41
    return-void
.end method

.method public unregisterMediaEventListener()V
    .registers 2

    .line 1239
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mMediaEventlistener:Lcom/sec/sve/IImsMediaEventListener;

    invoke-virtual {v0, p0}, Lcom/sec/sve/SecVideoEngineManager;->unregisterForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V

    return-void
.end method
